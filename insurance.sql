-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2019 at 09:13 AM
-- Server version: 10.2.26-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `democode_insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group`
--

CREATE TABLE `attribute_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `metatag_title` varchar(255) DEFAULT NULL,
  `metatag_description` varchar(255) DEFAULT NULL,
  `metatag_keywords` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `top` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `metatag_title`, `metatag_description`, `metatag_keywords`, `parent`, `image`, `top`, `sort_order`, `status`, `update_by`, `update_time`) VALUES
(4, ' Transamerica Life Insurance Company', '<p>Before completing this on line application form, please be sure you meet the following Requirements:<br />\r\n1. You have a functioning U.S. Mailing Address.<br />\r\n2. You will visit or reside in the U.S. within the next 4 months for all necessary medical exams, documents and signatures.<br />\r\n3. You reside in the U.S. for more than half of the year.<br />\r\n<br />\r\nThank you for applying for low-cost, maximum benefit Level-Term Life Insurance. Your Security is of the utmost importance. Therefore, your personal data entered on this secure form below, is sent directly to a real person and not to any database. Your data is totally secure and will NEVER be shared nor exported. Each application form is individually reviewed by an experienced underwriter who will speak with you directly and in English. You will receive an email confirmation upon submission and review of your application form</p>\r\n', NULL, NULL, NULL, NULL, '149829850124.jpg', NULL, NULL, 1, 1, '2018-05-16 07:06:09'),
(7, 'AXA Equitable Life Insurance Company', '<p>Before completing this on line application form, please be sure you meet the following Requirements:<br />\r\n1. You have a functioning U.S. Mailing Address.<br />\r\n2. You will visit or reside in the U.S. within the next 4 months for all necessary medical exams, documents and signatures.<br />\r\n3. You reside in the U.S. for more than half of the year.<br />\r\n<br />\r\nThank you for applying for low-cost, maximum benefit Level-Term Life Insurance. Your Security is of the utmost importance. Therefore, your personal data entered on this secure form below, is sent directly to a real person and not to any database. Your data is totally secure and will NEVER be shared nor exported. Each application form is individually reviewed by an experienced underwriter who will speak with&nbsp;you directly and in English. You will receive an email confirmation upon submission and review of your application form</p>\r\n', NULL, NULL, NULL, NULL, '1498298661196.jpg', NULL, NULL, 1, 1, '2018-05-16 07:06:55'),
(8, 'Lincoln National Life Insurance Company', '<p>Before completing this on line application form, please be sure you meet the following Requirements:<br />\r\n1. You have a functioning U.S. Mailing Address.<br />\r\n2. You will visit or reside in the U.S. within the next 4 months for all necessary medical exams, documents and signatures.<br />\r\n<br />\r\nThank you for applying for low-cost, maximum benefit Level-Term Life Insurance. Your Security is of the utmost importance. Therefore, your personal data entered on this secure form below, is sent directly to a real person and not to any database. Your data is totally secure and will NEVER be shared nor exported. Each application form is individually reviewed by an experienced underwriter who will speak with you directly and in English. You will receive an email confirmation upon submission and review of your application form</p>\r\n', NULL, NULL, NULL, NULL, '152180956577.jpg', NULL, NULL, 1, 1, '2018-05-16 07:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `category_block`
--

CREATE TABLE `category_block` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_categorires` varchar(255) NOT NULL,
  `first_image` varchar(100) NOT NULL,
  `second_image` varchar(100) NOT NULL,
  `third_image` varchar(100) NOT NULL,
  `firstlink` varchar(100) NOT NULL,
  `secondlink` varchar(100) NOT NULL,
  `thirdlink` varchar(100) NOT NULL,
  `best_seller` int(11) NOT NULL DEFAULT 0,
  `new_arrival` int(11) NOT NULL DEFAULT 0,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `layout` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `name`) VALUES
(1, 'af', 'Afghanistan'),
(2, 'ax', 'Aland Islands'),
(3, 'al', 'Albania'),
(4, 'dz', 'Algeria'),
(5, 'as', 'American Samoa'),
(6, 'ad', 'Andorra'),
(7, 'ao', 'Angola'),
(8, 'ai', 'Anguilla'),
(9, 'aq', 'Antarctica'),
(10, 'ag', 'Antigua and Barbuda'),
(11, 'ar', 'Argentina'),
(12, 'am', 'Armenia'),
(13, 'aw', 'Aruba'),
(14, 'au', 'Australia'),
(15, 'at', 'Austria'),
(16, 'az', 'Azerbaijan'),
(17, 'bs', 'Bahamas'),
(18, 'bh', 'Bahrain'),
(19, 'bd', 'Bangladesh'),
(20, 'bb', 'Barbados'),
(21, 'by', 'Belarus'),
(22, 'be', 'Belgium'),
(23, 'bz', 'Belize'),
(24, 'bj', 'Benin'),
(25, 'bm', 'Bermuda'),
(26, 'bt', 'Bhutan'),
(27, 'bo', 'Bolivia'),
(28, 'ba', 'Bosnia and Herzegovina'),
(29, 'bw', 'Botswana'),
(30, 'bv', 'Bouvet Island'),
(31, 'br', 'Brazil'),
(32, 'io', 'British Indian Ocean Territory'),
(33, 'vg', 'British Virgin Islands'),
(34, 'bn', 'Brunei'),
(35, 'bg', 'Bulgaria'),
(36, 'bf', 'Burkina Faso'),
(37, 'bi', 'Burundi'),
(38, 'kh', 'Cambodia'),
(39, 'cm', 'Cameroon'),
(40, 'ca', 'Canada'),
(41, 'cv', 'Cape Verde'),
(42, 'ky', 'Cayman Islands'),
(43, 'cf', 'Central African Republic'),
(44, 'td', 'Chad'),
(45, 'cl', 'Chile'),
(46, 'cn', 'China'),
(47, 'cx', 'Christmas Island'),
(48, 'cc', 'Cocos (Keeling) Islands'),
(49, 'co', 'Colombia'),
(50, 'km', 'Comoros'),
(51, 'cg', 'Congo'),
(52, 'ck', 'Cook Islands'),
(53, 'cr', 'Costa Rica'),
(54, 'hr', 'Croatia'),
(55, 'cu', 'Cuba'),
(56, 'cy', 'Cyprus'),
(57, 'cz', 'Czech Republic'),
(58, 'cd', 'Democratic Republic of Congo'),
(59, 'dk', 'Denmark'),
(60, 'xx', 'Disputed Territory'),
(61, 'dj', 'Djibouti'),
(62, 'dm', 'Dominica'),
(63, 'do', 'Dominican Republic'),
(64, 'tl', 'East Timor'),
(65, 'ec', 'Ecuador'),
(66, 'eg', 'Egypt'),
(67, 'sv', 'El Salvador'),
(68, 'gq', 'Equatorial Guinea'),
(69, 'er', 'Eritrea'),
(70, 'ee', 'Estonia'),
(71, 'et', 'Ethiopia'),
(72, 'fk', 'Falkland Islands'),
(73, 'fo', 'Faroe Islands'),
(74, 'fm', 'Federated States of Micronesia'),
(75, 'fj', 'Fiji'),
(76, 'fi', 'Finland'),
(77, 'fr', 'France'),
(78, 'gf', 'French Guyana'),
(79, 'pf', 'French Polynesia'),
(80, 'tf', 'French Southern Territories'),
(81, 'ga', 'Gabon'),
(82, 'gm', 'Gambia'),
(83, 'ge', 'Georgia'),
(84, 'de', 'Germany'),
(85, 'gh', 'Ghana'),
(86, 'gi', 'Gibraltar'),
(87, 'gr', 'Greece'),
(88, 'gl', 'Greenland'),
(89, 'gd', 'Grenada'),
(90, 'gp', 'Guadeloupe'),
(91, 'gu', 'Guam'),
(92, 'gt', 'Guatemala'),
(93, 'gn', 'Guinea'),
(94, 'gw', 'Guinea-Bissau'),
(95, 'gy', 'Guyana'),
(96, 'ht', 'Haiti'),
(97, 'hm', 'Heard Island and Mcdonald Islands'),
(98, 'hn', 'Honduras'),
(99, 'hk', 'Hong Kong'),
(100, 'hu', 'Hungary'),
(101, 'is', 'Iceland'),
(102, 'in', 'India'),
(103, 'id', 'Indonesia'),
(104, 'ir', 'Iran'),
(105, 'iq', 'Iraq'),
(106, 'xe', 'Iraq-Saudi Arabia Neutral Zone'),
(107, 'ie', 'Ireland'),
(108, 'il', 'Israel'),
(109, 'it', 'Italy'),
(110, 'ci', 'Ivory Coast'),
(111, 'jm', 'Jamaica'),
(112, 'jp', 'Japan'),
(113, 'jo', 'Jordan'),
(114, 'kz', 'Kazakhstan'),
(115, 'ke', 'Kenya'),
(116, 'ki', 'Kiribati'),
(117, 'kw', 'Kuwait'),
(118, 'kg', 'Kyrgyzstan'),
(119, 'la', 'Laos'),
(120, 'lv', 'Latvia'),
(121, 'lb', 'Lebanon'),
(122, 'ls', 'Lesotho'),
(123, 'lr', 'Liberia'),
(124, 'ly', 'Libya'),
(125, 'li', 'Liechtenstein'),
(126, 'lt', 'Lithuania'),
(127, 'lu', 'Luxembourg'),
(128, 'mo', 'Macau'),
(129, 'mk', 'Macedonia'),
(130, 'mg', 'Madagascar'),
(131, 'mw', 'Malawi'),
(132, 'my', 'Malaysia'),
(133, 'mv', 'Maldives'),
(134, 'ml', 'Mali'),
(135, 'mt', 'Malta'),
(136, 'mh', 'Marshall Islands'),
(137, 'mq', 'Martinique'),
(138, 'mr', 'Mauritania'),
(139, 'mu', 'Mauritius'),
(140, 'yt', 'Mayotte'),
(141, 'mx', 'Mexico'),
(142, 'md', 'Moldova'),
(143, 'mc', 'Monaco'),
(144, 'mn', 'Mongolia'),
(145, 'me', 'Montenegro'),
(146, 'ms', 'Montserrat'),
(147, 'ma', 'Morocco'),
(148, 'mz', 'Mozambique'),
(149, 'mm', 'Myanmar'),
(150, 'na', 'Namibia'),
(151, 'nr', 'Nauru'),
(152, 'np', 'Nepal'),
(153, 'nl', 'Netherlands'),
(154, 'an', 'Netherlands Antilles'),
(155, 'nc', 'New Caledonia'),
(156, 'nz', 'New Zealand'),
(157, 'ni', 'Nicaragua'),
(158, 'ne', 'Niger'),
(159, 'ng', 'Nigeria'),
(160, 'nu', 'Niue'),
(161, 'nf', 'Norfolk Island'),
(162, 'kp', 'North Korea'),
(163, 'mp', 'Northern Mariana Islands'),
(164, 'no', 'Norway'),
(165, 'om', 'Oman'),
(166, 'pk', 'Pakistan'),
(167, 'pw', 'Palau'),
(168, 'ps', 'Palestinian Occupied Territories'),
(169, 'pa', 'Panama'),
(170, 'pg', 'Papua New Guinea'),
(171, 'py', 'Paraguay'),
(172, 'pe', 'Peru'),
(173, 'ph', 'Philippines'),
(174, 'pn', 'Pitcairn Islands'),
(175, 'pl', 'Poland'),
(176, 'pt', 'Portugal'),
(177, 'pr', 'Puerto Rico'),
(178, 'qa', 'Qatar'),
(179, 'rk', 'Kosovo'),
(180, 're', 'Reunion'),
(181, 'ro', 'Romania'),
(182, 'ru', 'Russia'),
(183, 'rw', 'Rwanda'),
(184, 'sh', 'Saint Helena and Dependencies'),
(185, 'kn', 'Saint Kitts and Nevis'),
(186, 'lc', 'Saint Lucia'),
(187, 'pm', 'Saint Pierre and Miquelon'),
(188, 'vc', 'Saint Vincent and the Grenadines'),
(189, 'ws', 'Samoa'),
(190, 'sm', 'San Marino'),
(191, 'st', 'Sao Tome and Principe'),
(192, 'sa', 'Saudi Arabia'),
(193, 'sn', 'Senegal'),
(194, 'cs', 'Serbia and Montenegro'),
(195, 'sc', 'Seychelles'),
(196, 'sl', 'Sierra Leone'),
(197, 'sg', 'Singapore'),
(198, 'sk', 'Slovakia'),
(199, 'si', 'Slovenia'),
(200, 'sb', 'Solomon Islands'),
(201, 'so', 'Somalia'),
(202, 'za', 'South Africa'),
(203, 'gs', 'South Georgia and South Sandwich Islands'),
(204, 'kr', 'South Korea'),
(205, 'es', 'Spain'),
(206, 'pi', 'Spratly Islands'),
(207, 'lk', 'Sri Lanka'),
(208, 'sd', 'Sudan'),
(209, 'sr', 'Suriname'),
(210, 'sj', 'Svalbard and Jan Mayen'),
(211, 'sz', 'Swaziland'),
(212, 'se', 'Sweden'),
(213, 'ch', 'Switzerland'),
(214, 'sy', 'Syria'),
(215, 'tw', 'Taiwan'),
(216, 'tj', 'Tajikistan'),
(217, 'tz', 'Tanzania'),
(218, 'th', 'Thailand'),
(219, 'tg', 'Togo'),
(220, 'tk', 'Tokelau'),
(221, 'to', 'Tonga'),
(222, 'tt', 'Trinidad and Tobago'),
(223, 'tn', 'Tunisia'),
(224, 'tr', 'Turkey'),
(225, 'tm', 'Turkmenistan'),
(226, 'tc', 'Turks And Caicos Islands'),
(227, 'tv', 'Tuvalu'),
(228, 'ug', 'Uganda'),
(229, 'ua', 'Ukraine'),
(230, 'ae', 'United Arab Emirates'),
(231, 'uk', 'United Kingdom'),
(232, 'xd', 'United Nations Neutral Zone'),
(233, 'us', 'United States'),
(234, 'um', 'United States Minor Outlying Islands'),
(235, 'uy', 'Uruguay'),
(236, 'vi', 'US Virgin Islands'),
(237, 'uz', 'Uzbekistan'),
(238, 'vu', 'Vanuatu'),
(239, 'va', 'Vatican City'),
(240, 've', 'Venezuela'),
(241, 'vn', 'Vietnam'),
(243, 'eh', 'Western Sahara'),
(244, 'ye', 'Yemen'),
(245, 'zm', 'Zambia'),
(246, 'zw', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_category`
--

CREATE TABLE `country_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_category`
--

INSERT INTO `country_category` (`id`, `name`, `country_id`) VALUES
(1, 'A', '[\"6\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"17\",\"20\",\"21\",\"22\",\"25\",\"28\",\"31\",\"33\",\"34\",\"35\",\"40\",\"42\",\"45\",\"46\",\"53\",\"54\",\"56\",\"57\",\"59\",\"62\",\"65\",\"70\",\"76\",\"79\",\"84\",\"87\",\"89\",\"90\",\"99\",\"100\",\"101\",\"107\",\"108\",\"109\",\"111\",\"112\",\"114\",\"117\",\"120\",\"125\",\"126\",\"127\",\"128\",\"129\",\"132\",\"133\",\"135\",\"137\",\"139\",\"141\",\"143\",\"145\",\"153\",\"154\",\"155\",\"156\",\"163\",\"164\",\"165\",\"167\",\"169\",\"175\",\"176\",\"178\",\"181\",\"182\",\"190\",\"192\",\"194\",\"195\",\"197\",\"198\",\"199\",\"202\",\"204\",\"205\",\"209\",\"212\",\"213\",\"215\",\"222\",\"224\",\"226\",\"230\",\"231\",\"235\"]'),
(3, 'C', '[\"3\",\"23\",\"26\",\"27\",\"38\",\"41\",\"49\",\"52\",\"63\",\"67\",\"74\",\"75\",\"78\",\"81\",\"92\",\"98\",\"102\",\"103\",\"113\",\"142\",\"144\",\"146\",\"147\",\"150\",\"157\",\"171\",\"172\",\"173\",\"189\",\"207\",\"218\",\"221\",\"241\"]'),
(4, 'E', '[\"1\",\"4\",\"7\",\"16\",\"18\",\"19\",\"24\",\"36\",\"37\",\"39\",\"43\",\"44\",\"50\",\"51\",\"55\",\"58\",\"61\",\"64\",\"66\",\"68\",\"69\",\"71\",\"82\",\"83\",\"85\",\"93\",\"94\",\"95\",\"96\",\"104\",\"105\",\"110\",\"115\",\"116\",\"118\",\"119\",\"121\",\"122\",\"123\",\"130\",\"131\",\"134\",\"136\",\"138\",\"148\",\"149\",\"151\",\"152\",\"158\",\"159\",\"160\",\"162\",\"166\",\"168\",\"170\",\"183\",\"191\",\"193\",\"196\",\"200\",\"201\",\"208\",\"211\",\"214\",\"216\",\"217\",\"219\",\"223\",\"225\",\"227\",\"228\",\"229\",\"237\",\"238\",\"243\",\"244\",\"245\",\"246\"]'),
(6, 'LFG- A', '[\"5\",\"6\",\"8\",\"10\",\"11\",\"13\",\"14\",\"15\",\"17\",\"20\",\"22\",\"23\",\"25\",\"31\",\"33\",\"34\",\"35\",\"40\",\"42\",\"45\",\"46\",\"52\",\"53\",\"56\",\"57\",\"59\",\"62\",\"63\",\"65\",\"70\",\"72\",\"76\",\"77\",\"78\",\"79\",\"84\",\"87\",\"88\",\"89\",\"90\",\"99\",\"100\",\"101\",\"107\",\"108\",\"109\",\"111\",\"112\",\"117\",\"120\",\"126\",\"127\",\"128\",\"135\",\"136\",\"137\",\"141\",\"143\",\"145\",\"146\",\"147\",\"153\",\"154\",\"155\",\"156\",\"163\",\"164\",\"169\",\"171\",\"172\",\"173\",\"175\",\"176\",\"181\",\"185\",\"186\",\"188\",\"190\",\"197\",\"198\",\"204\",\"205\",\"211\",\"212\",\"213\",\"215\",\"222\",\"224\",\"226\",\"230\",\"231\",\"235\",\"236\",\"239\"]');

-- --------------------------------------------------------

--
-- Table structure for table `customer_request`
--

CREATE TABLE `customer_request` (
  `id` int(11) NOT NULL,
  `insurance_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `smoker` varchar(10) NOT NULL,
  `citizen` varchar(20) NOT NULL,
  `residence` varchar(20) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `draft` varchar(255) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_request`
--

INSERT INTO `customer_request` (`id`, `insurance_id`, `name`, `email`, `phone`, `dob`, `age`, `gender`, `smoker`, `citizen`, `residence`, `request_date`, `draft`) VALUES
(2, 2, 'Mehedi', 'mehedi@mehedibd.com', '01911774866', '1979-12-31', 36, 'Male', 'No', 'USA', 'USA', '2016-05-24 09:59:42', 'No'),
(3, 4, 'gfd', 'dfdv@svhjs.com', '123456789', '1975-12-31', 40, 'Male', 'No', 'USA', 'USA', '2016-05-24 12:56:01', 'No'),
(4, 2, 'ssd', 'dfdv@svhjs.com', '123456789', '1984-12-31', 31, 'Male', 'No', 'USA', 'USA', '2016-05-26 10:56:43', 'No'),
(5, 2, 'fviufubvf', 'ydciudbc@dbidi.com', '123456789', '1985-12-31', 30, 'Male', 'No', 'USA', 'USA', '2016-05-29 05:55:22', 'No'),
(6, 2, 'gfd', 'dfdv@svhjs.com', '123456789', '1984-12-31', 31, 'Male', 'No', 'USA', 'USA', '2016-05-29 06:26:11', 'No'),
(7, 104, '', '', '', '1979-12-31', 36, 'Male', 'No', 'USA', 'USA', '2016-05-31 08:14:02', 'No'),
(8, 8, '', '', '', '1985-01-01', 31, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(9, 8, '', '', '', '1985-01-01', 31, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(10, 10, '', '', '', '1985-01-01', 31, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(11, 8, '', '', '', '1985-01-01', 31, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(12, 255, '', '', '', '0000-00-00', 47, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(13, 355, 'Dale Lehnhoff', 'arizonacoach@gmail.com', '775003253', '0000-00-00', 54, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(14, 355, 'test website', 'jerrysalem@seznam.cz', '608050976', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(15, 437, '', '', '', '1970-01-01', 60, 'Male', 'No', 'CANADA', 'UK', '0000-00-00 00:00:00', 'No'),
(16, 437, '', '', '', '0000-00-00', 56, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(17, 303, '', '', '', '1970-03-01', 46, 'Male', 'No', 'USA', 'CZE', '0000-00-00 00:00:00', 'No'),
(18, 863, '', '', '', '0000-00-00', 54, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(19, 261, 'Julia Bryan', 'jbryan@veropartners.com', '8436282280', '1970-01-01', 46, 'Female', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(20, 255, '', '', '', '1970-01-01', 46, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(21, 0, '', '', '', '1970-01-01', 46, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(22, 0, '', '', '', '1970-01-01', 46, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(23, 255, '', '', '', '1970-01-01', 46, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(24, 355, '', '', '', '0000-00-00', 52, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(25, 355, '', '', '', '0000-00-00', 55, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(26, 355, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(27, 255, '', '', '', '0000-00-00', 49, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(28, 353, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(29, 104, '', '', '', '1977-01-01', 39, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(30, 353, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(31, 353, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(32, 353, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(33, 353, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(34, 355, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(35, 433, '', '', '', '0000-00-00', 51, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(36, 437, '', '', '', '0000-00-00', 56, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(37, 353, '', '', '', '0000-00-00', 53, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(38, 355, '', '', '', '0000-00-00', 53, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(39, 355, '', '', '', '0000-00-00', 53, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(40, 355, '', '', '', '0000-00-00', 52, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(41, 355, '', '', '', '0000-00-00', 52, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(46, 0, 'Sam Stone', 'samprague@gmail.com', '996-5422', '1970-01-01', 53, 'Male', 'Yes', 'USA', 'ISR', '0000-00-00 00:00:00', 'No'),
(47, 0, 'abcd', 'abc@abc.com', '123456789', '0000-00-00', 61, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(48, 0, 'Test', '10.32@test.com', '222222222', '0000-00-00', 48, 'Female', 'No', 'CAN', 'AGO', '0000-00-00 00:00:00', 'No'),
(49, 0, 'test', 'samprague@gmail.com', '777322522', '1970-06-05', 47, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(50, 0, 'sam hirsch', 'samprague@gmail.com', '333444555', '1970-01-01', 47, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(51, 0, 'Tova Lutz', 'tova@lutzlawgroup.com', '9736413436', '1970-01-01', 47, 'Female', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(52, 0, 'abcd', 'abc@abc.com', '123456789', '0000-00-00', 59, 'Male', 'Yes', 'ALB', 'ASM', '0000-00-00 00:00:00', 'No'),
(53, 0, 'abcd', 's.titas21@gmail.com', '123456789', '0000-00-00', 61, 'Male', 'No', 'USA', 'UGBR', '0000-00-00 00:00:00', 'No'),
(54, 0, 'abcd', 'abc@abc.com', '123456789', '0000-00-00', 61, 'Male', 'No', 'USA', 'UGBR', '0000-00-00 00:00:00', 'No'),
(55, 0, 'Mr. Heller', 'marleneheller@yahoo.com', '+972.542929255', '1970-01-01', 35, 'Male', 'No', 'USA', 'Israel', '0000-00-00 00:00:00', 'No'),
(56, 0, 'Jules Joseph Eugene', 'juleseugene19@gmail.com', '01150937029557', '0000-00-00', 55, 'Male', 'Yes', 'USA', 'Haiti', '0000-00-00 00:00:00', 'No'),
(57, 0, 'Abdullah Mahmood', 'eng_amahmood@yahoo.com', '01671868824', '1970-01-01', 47, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(58, 0, 'Abdullah Mahmood', 'eng_amahmood@yahoo.com', '01671868824', '1970-01-01', 47, 'Male', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(59, 0, 'abcd', 'abc@abc.com', '', '0000-00-00', 65, 'Male', 'No', 'Algeria', 'UK', '0000-00-00 00:00:00', 'No'),
(60, 0, 'abcd', 'abc@abc.com', '', '0000-00-00', 65, 'Male', 'No', 'UK', 'CANADA', '0000-00-00 00:00:00', 'No'),
(61, 0, 'abcd', 'abc@abc.com', '', '0000-00-00', 66, 'Male', 'No', 'USA', 'UK', '0000-00-00 00:00:00', 'No'),
(62, 0, 'abcd', 's.titas21@gmail.com', '', '0000-00-00', 65, 'Male', 'No', 'Aruba', 'UK', '0000-00-00 00:00:00', 'No'),
(63, 0, 'abcd', 's.titas21@gmail.com', '', '1970-01-01', 47, 'Male', 'No', 'CANADA', 'UK', '0000-00-00 00:00:00', 'No'),
(64, 0, 'abcd', 's.titas21@gmail.com', '', '0000-00-00', 62, 'Male', 'No', 'Bouvet Island', 'UK', '0000-00-00 00:00:00', 'No'),
(65, 0, 'abcd', 's.titas21@gmail.com', '', '0000-00-00', 60, 'Male', 'No', 'USA', 'Luxembourg', '0000-00-00 00:00:00', 'No'),
(66, 0, 'tova lutz', 'tova@lutzlawgroup.com', '973-641-3436', '1973-09-02', 44, 'Female', 'No', 'USA', 'USA', '0000-00-00 00:00:00', 'No'),
(67, 0, 'Jonathan M. Florendo', 'jon3737@gmail.com', '09177992103', '0000-00-00', 50, 'Male', 'No', 'USA', 'Philippines', '0000-00-00 00:00:00', 'No'),
(68, 0, 'Margarita G. Florendo', 'jon3737@gmail.com', '09177992103', '1976-02-04', 41, 'Female', 'No', 'USA', 'Philippines', '0000-00-00 00:00:00', 'No'),
(69, 0, 'Jonathan M. Florendo', 'jon3737@gmail.com', '09177992103', '0000-00-00', 50, 'Male', 'No', 'USA', 'Philippines', '0000-00-00 00:00:00', 'No'),
(70, 0, 'Jonathan M. Florendo', 'jon3737@gmail.com', '09177992103', '0000-00-00', 50, 'Male', 'No', 'USA', 'Philippines', '0000-00-00 00:00:00', 'No'),
(71, 0, 'Joseph', 'jjoseph07@gmail.com', '+420777724574', '1970-01-01', 42, 'Male', 'Yes', 'USA', 'Czech Republic', '0000-00-00 00:00:00', 'No'),
(72, 0, 'Alan Vaughn', 'a.vaughn@kaimanaconsulting.com', '+60132875446', '1970-01-01', 45, 'Male', 'No', 'USA', 'Malaysia', '0000-00-00 00:00:00', 'No'),
(73, 0, 'David Fils', 'seph2010@yahoo.com', '917-475-0245', '1970-01-01', 64, 'Male', 'No', 'USA', 'Israel', '0000-00-00 00:00:00', 'No'),
(74, 0, 'Joel Michael Woodward', 'woodwardjoel@gmail.com', '+66892525060', '1985-12-12', 32, 'Male', 'No', 'USA', 'Thailand', '0000-00-00 00:00:00', 'No'),
(75, 0, 'Joel Michael Woodward', 'woodwardjoel@gmail.com', '+66982525060', '1985-12-12', 32, 'Male', 'No', 'USA', 'Thailand', '0000-00-00 00:00:00', 'No'),
(76, 0, 'Ian Benjamin Tyrrel', 'ityrrel@gmail.com', '', '1984-07-07', 34, 'Male', 'No', 'USA', 'Thailand', '0000-00-00 00:00:00', 'No'),
(77, 0, 'Christian Hostetler', 'christianhostetler@yahoo.com', '', '1970-01-01', 32, 'Male', 'No', 'USA', 'Cambodia', '0000-00-00 00:00:00', 'No'),
(78, 0, '', '', '', '1970-01-01', 0, '', '', '', '', '0000-00-00 00:00:00', 'No'),
(79, 0, 'Alexis E Cuperus Manning', 'aecuperus@gmail.com', '6167230508', '1985-03-07', 33, 'Female', 'No', 'USA', 'Korea, Republic of', '0000-00-00 00:00:00', 'No'),
(80, 0, 'Amanuel Gebremeskel', 'agebremeskelbanking@gmail.com', '+27826639307', '1977-10-08', 41, 'Male', 'No', 'USA', 'South Africa', '0000-00-00 00:00:00', 'No'),
(81, 0, 'Girish Prabhu', 'girishprabhu1962@gmail.com', '+919880161155', '1970-01-01', 56, 'Male', 'No', 'USA', 'India', '0000-00-00 00:00:00', 'No'),
(82, 0, 'Beena', 'beena.g.prabhu@gmail.com', '+919980741012', '1970-01-01', 53, 'Female', 'No', 'USA', 'India', '0000-00-00 00:00:00', 'No'),
(83, 1168, 'Anup Kumar Roy', 'anup@coder71.com', '1234567', '1980-01-01', 38, 'Female', 'Yes', 'Afghanistan', 'Afghanistan', '0000-00-00 00:00:00', 'Yes'),
(84, 1168, 'Anup Kumar Roy', 'anup@coder71.com', '113456789', '1980-01-01', 38, 'Female', 'Yes', 'Afghanistan', 'Afghanistan', '0000-00-00 00:00:00', 'No'),
(85, 1168, 'Test Test', 's.titas21@gmail.com', '12345687899', '1981-01-01', 37, 'Female', 'Yes', 'USA', 'Austria', '2018-03-08 12:06:28', 'Yes'),
(86, 1167, 'Test Test', 's.titas21@gmail.com', '12345687899', '1981-11-15', 37, 'Male', 'Yes', 'USA', 'Austria', '2018-03-10 08:03:47', 'Yes'),
(87, 1167, 'mehedi', 'mehedi@mehedibd.com', '+8801911774866', '1981-01-01', 37, 'Male', 'Yes', 'USA', 'Austria', '2018-03-10 08:03:50', 'Yes'),
(88, 1168, 'New Insurence', 'anup@coder71.com', '113456789', '1980-01-01', 38, 'Female', 'Yes', 'Australia', 'Australia', '2018-03-11 05:34:52', 'Yes'),
(89, 1167, 'Sam Testing', 'samprague@gmail.com', '', '1981-02-21', 37, 'Male', 'Yes', 'USA', 'Austria', '2018-03-12 09:51:22', 'Yes'),
(90, 1165, 'Test Test', 's.titas21@gmail.com', '', '1981-01-01', 37, 'Male', 'Yes', 'USA', 'Austria', '2018-03-12 10:02:16', 'No'),
(91, 1167, 'New Insurence', 'anup@coder71.com', '113456789', '1981-01-01', 37, 'Male', 'Yes', 'Austria', 'Austria', '2018-03-13 09:21:53', 'No'),
(92, 0, '', '', '', '1970-01-01', 0, '', '', '', '', '2018-03-27 06:25:51', 'No'),
(93, 1992, 'sam test w Titas ', 'test@nj39.com', '123456789', '1964-02-21', 54, 'Male', 'No', 'USA', 'Germany', '2018-04-01 09:06:59', 'No'),
(94, 1880, 'sam test 4', 'samprague@gmail.com', '777322522', '1977-02-21', 41, 'Male', 'No', 'USA', 'Bahamas', '2018-04-08 13:06:04', 'No'),
(95, 1380, 'sam test 5', 'samprague@gmail.com', '777322522', '1977-02-21', 41, 'Male', 'No', 'USA', 'Thailand', '2018-04-08 13:30:50', 'No'),
(96, 0, '', '', '', '1970-01-01', 0, '', '', '', '', '2018-04-14 14:11:34', 'No'),
(97, 0, '', '', '', '1970-01-01', 0, '', '', '', '', '2018-04-17 14:58:43', 'No'),
(98, 812, 'Jace', 'laubisque_buying@mac.com', '+4917638922895', '1971-02-06', 47, 'Male', 'No', 'USA', 'Germany', '2018-04-20 16:25:31', 'No'),
(99, 0, '', '', '', '1970-01-01', 0, '', '', '', '', '2018-04-25 23:16:49', 'No'),
(100, 1934, 'Rebecca Lyne', 'rebeccalyne5@yahoo.com', '330616666555', '1968-04-15', 50, 'Female', 'No', 'USA', 'France', '2018-05-11 00:31:17', 'No'),
(101, 2026, 'Anup Kumar Roy', 'anup@coder71.com', '123456', '1959-07-26', 59, 'Male', 'No', 'USA', 'Philippines', '2018-05-13 04:04:22', 'No'),
(102, 1908, 'Thomas Fiorito', 'tomfiorito@gmail.com', '+41796006335', '1975-08-03', 43, 'Male', 'No', 'USA', 'Germany', '2018-05-14 09:00:15', 'No'),
(103, 1820, 'abc', 's.titas21@gmail.com', '123-456-789', '1979-04-11', 39, 'Male', 'No', 'USA', 'Austria', '2018-05-15 03:33:22', 'No'),
(104, 1908, 'Thomas Fiorito', 'sam@hamiltonhudson.cz', '+41.9965422', '1975-08-03', 43, 'Male', 'No', 'USA', 'Germany', '2018-05-15 04:25:13', 'No'),
(105, 1820, 'Mehedi', 'mehedi@mehedibd.com', '+8801911774866', '1980-12-01', 38, 'Male', 'No', 'USA', 'Austria', '2018-05-15 07:10:30', 'No'),
(106, 1759, 'Majidul Bari', 's.titas21@gmail.com', '123456789', '1985-05-15', 33, 'Male', 'Yes', 'USA', 'Austria', '2018-05-16 04:47:07', 'No'),
(107, 2026, 'Anup Kumar Roy', 'anupist726@gmail.com', '123456', '1959-07-29', 59, 'Male', 'No', 'USA', 'Philippines', '2018-05-16 04:48:34', 'No'),
(108, 2026, 'Anup Kumar Roy', 'anupist726@gmail.com', '123456', '1959-07-29', 59, 'Male', 'No', 'USA', 'Philippines', '2018-05-16 04:51:02', 'No'),
(109, 48, 'Majidul Bari', 's.titas21@gmail.com', '123456789', '1985-05-15', 33, 'Male', 'Yes', 'USA', 'Austria', '2018-05-16 04:52:25', 'No'),
(110, 2026, 'Anup Kumar Roy', 'anupist726@gmail.com', '123456', '1959-07-29', 59, 'Male', 'No', 'USA', 'Philippines', '2018-05-16 05:14:12', 'No'),
(111, 1820, 'Abc Def', 's.titas21@gmail.com', '123-456-789', '1982-06-04', 36, 'Male', 'No', 'USA', 'Austria', '2018-05-16 05:19:50', 'No'),
(112, 2026, 'Anup Kumar Roy', 'anupist726@gmail.com', '123456', '1959-07-29', 59, 'Male', 'No', 'USA', 'Philippines', '2018-05-16 05:24:35', 'No'),
(113, 1831, 'Majidul Bari', 's.titas92@gmail.com', '123-456-789', '1981-09-24', 37, 'Male', 'Yes', 'USA', 'Austria', '2018-05-16 05:29:10', 'No'),
(114, 1908, 'Thomas Fiorito', 'samprague@gmail.com', '+41.9965422', '1975-08-03', 43, 'Male', 'No', 'USA', 'Germany', '2018-05-16 07:42:02', 'No'),
(115, 1806, 'Kathleen Datica', 'katie@locogringo.com', '3037613119', '1978-11-07', 40, 'Female', 'No', 'USA', 'Mexico', '2018-06-09 11:18:10', 'No'),
(116, 1928, 'Joel Datica', 'katie@locogringo.com', '3037613119', '1971-01-21', 47, 'Male', 'No', 'USA', 'Mexico', '2018-06-09 11:22:41', 'No'),
(117, 475, 'Joel Watson', 'j.kevinwatson@live.com', '7703784800', '1959-08-31', 59, 'Male', 'No', 'USA', 'Japan', '2018-06-14 03:42:17', 'No'),
(118, 1816, 'Manuel F Lastimosa', 'manny.lastimosa@gmail.com', '±48517464487', '1980-08-15', 38, 'Male', 'No', 'Poland', 'Poland', '2018-06-18 17:18:32', 'No'),
(119, 1816, 'Manuel F Lastimosa', 'manny.lastimosa@gmail.com', '±48517464487', '1980-08-15', 38, 'Male', 'No', 'Poland', 'Poland', '2018-06-18 17:20:40', 'No'),
(120, 812, 'FernandoLebron', 'fernan2lebron1@yahoo.com', '1242 436 3505', '1972-04-07', 46, 'Male', 'No', 'Dominican Republic', 'Bahamas', '2018-06-19 17:17:28', 'No'),
(121, 1235, 'Neil', 'neil.nischal@gmail.com', '8364286', '1983-05-01', 35, 'Male', 'Yes', 'Fiji', 'Fiji', '2018-07-19 22:15:08', 'No'),
(122, 1856, 'michael', 'mehamrick@gmail.com', '015129199269', '1976-02-29', 42, 'Male', 'No', 'USA', 'China', '2018-07-25 16:33:34', 'No'),
(123, 1964, 'Testing Titas', 'samprague@gmail.com', '777322522', '1970-02-21', 48, 'Male', 'No', 'USA', 'United Arab Emirates', '2018-08-01 17:09:07', 'No'),
(124, 1876, 'Craig', 'chinasimons@gmail.com', '+8615801000235', '1974-04-18', 44, 'Male', 'No', 'USA', 'China', '2018-08-10 02:31:09', 'No'),
(125, 696, 'Mike', 'thebusyemail@gmail.com', '585-919-6589', '1982-09-25', 36, 'Male', 'No', 'USA', 'Japan', '2018-08-18 13:00:10', 'No'),
(126, 1982, 'Christopher Shaw', 'shawcnn+lif@gmail.com', '424-299-9417', '1966-07-29', 52, 'Male', 'No', 'USA', 'United Arab Emirates', '2018-08-18 20:48:42', 'No'),
(127, 1836, 'Ernst Pilscheur', 'em.p@qq.com', '008613810842620', '1981-04-06', 37, 'Male', 'No', 'Germany', 'China', '2018-08-22 12:42:24', 'No'),
(128, 1820, 'Hetal Patel', 'hetal.email@gmail.com', '6473381667', '1980-09-05', 38, 'Male', 'No', 'USA', 'CANADA', '2018-08-26 19:30:55', 'No'),
(129, 475, 'Anup', 'anup@coder71.com', '123456789', '1960-01-01', 58, 'Male', 'No', 'Austria', 'Austria', '2018-08-29 06:25:05', 'No'),
(130, 474, 'Anup', 'anup@coder71.com', '123456789', '1960-01-01', 58, 'Male', 'No', 'Austria', 'Austria', '2018-08-29 06:27:41', 'No'),
(131, 474, 'Anup', 'anup@coder71.com', '123456789', '1960-01-01', 58, 'Male', 'No', 'Austria', 'Austria', '2018-08-29 06:37:53', 'No'),
(132, 1820, 'Justin Crowell', 'justin.crowell@gmail.com', '+1 512 997 8555', '1980-03-18', 38, 'Male', 'No', 'USA', 'Germany', '2018-10-13 09:12:24', 'No'),
(133, 1992, 'Shahabodin', 'shahab@vacancyfiller.com', '+16476374243', '1963-10-11', 55, 'Male', 'No', 'UK', 'CANADA', '2018-10-13 14:42:28', 'No'),
(134, 1976, 'J Farley', 'jjfarley@folojo.com', '2318817554', '1965-12-23', 53, 'Male', 'No', 'USA', 'Spain', '2018-10-15 12:21:06', 'No'),
(135, 1990, 'Mrs. Shahabodin\'s wife', 'shahab@vacancyfiller.com', ' +16476374243', '1967-09-06', 51, 'Female', 'No', 'UK', 'CANADA', '2018-10-15 21:04:14', 'No'),
(136, 2008, 'Richard Davis', 'richard@arttex.com.mx', '336-202-1361', '1963-06-10', 55, 'Male', 'No', 'USA', 'Mexico', '2018-10-17 18:37:00', 'No'),
(137, 1021, 'Kayum', 'kay@gmail.com', '01670175217', '1950-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-27 13:08:30', 'No'),
(138, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 11:21:17', 'No'),
(139, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 11:22:56', 'No'),
(140, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 11:27:30', 'No'),
(141, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:04:00', 'No'),
(142, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:06:28', 'No'),
(143, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:10:25', 'No'),
(144, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:10:55', 'No'),
(145, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:21:28', 'No'),
(146, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:22:11', 'No'),
(147, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:22:32', 'No'),
(148, 0, 'Jalil', 'jalil@coder71.com', '01552361313', '1970-01-01', 68, 'Male', 'No', 'United States', 'Austria', '2018-10-28 12:33:56', 'No'),
(149, 920, 'Anup Kumar Roy', 'anupist726@gmail.com', '123456', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-10-28 14:46:27', 'No'),
(150, 2022, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-07 12:00:02', 'No'),
(151, 2022, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-07 12:06:50', 'No'),
(152, 2022, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-07 12:08:50', 'No'),
(153, 1768, 'Abc Def', 's.titas21@gmail.com', '123-456-789', '1983-01-01', 35, 'Male', 'No', 'United States', 'Austria', '2018-11-07 12:47:59', 'No'),
(154, 920, 'asdfasdf', 'jalil@coder71.com', '01552361313', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 05:25:55', 'No'),
(155, 920, 'asdfasdf', 'jalil@coder71.com', '01552361313', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 05:35:39', 'No'),
(156, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 08:20:21', 'No'),
(157, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 08:21:42', 'No'),
(158, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 08:22:08', 'No'),
(159, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 08:29:28', 'No'),
(160, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 08:30:06', 'No'),
(161, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 08:30:57', 'No'),
(162, 184, 'Abc Def', 's.titas21@gmail.com', '123-456-789', '1977-07-23', 41, 'Male', 'No', 'United States', 'Austria', '2018-11-08 09:10:51', 'No'),
(163, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-08 09:27:29', 'No'),
(164, 1888, 'Abc Def', 's.titas21@gmail.com', '123-456-789', '1974-12-15', 44, 'Male', 'No', 'United States', 'Austria', '2018-11-08 10:05:25', 'No'),
(165, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-11 08:30:44', 'No'),
(166, 920, 'Anup Kumar Roy', 'anup@coder71.com', '23423424', '1960-01-01', 58, 'Male', 'No', 'United States', 'Austria', '2018-11-11 08:48:22', 'No'),
(167, 1784, 'BARI', 's.titas21@gmail.com', '123-456-789', '1986-10-26', 32, 'Male', 'No', 'United States', 'Austria', '2018-11-11 09:18:57', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `from` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `until` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL DEFAULT 1,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deal_items`
--

CREATE TABLE `deal_items` (
  `id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'category,product',
  `additional_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `first`
--

CREATE TABLE `first` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `additional_id` int(11) NOT NULL,
  `position` varchar(20) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `heading` varchar(20) NOT NULL,
  `quick_menu` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `style_type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `option_item`
--

CREATE TABLE `option_item` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `delivery_charge` decimal(11,2) NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `grand_total` decimal(11,2) NOT NULL,
  `delivery_info` varchar(300) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_by` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_process`
--

CREATE TABLE `order_process` (
  `id` int(11) NOT NULL,
  `order_id_fk` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `order_id_fk` int(11) NOT NULL,
  `products_id_fk` int(11) NOT NULL,
  `options` varchar(300) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(11,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `image` varchar(100) NOT NULL,
  `testLive` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `age_start` int(11) NOT NULL,
  `age_end` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `health` varchar(100) NOT NULL,
  `smoker` varchar(10) NOT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `annual_rate` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `featured` int(11) NOT NULL DEFAULT 0,
  `country_category` varchar(255) NOT NULL,
  `flat_rate` decimal(11,2) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `amount`, `age_start`, `age_end`, `type`, `gender`, `health`, `smoker`, `sku`, `annual_rate`, `status`, `sort_order`, `update_by`, `update_time`, `featured`, `country_category`, `flat_rate`, `year`) VALUES
(9, 1000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 260, 1, NULL, 1, '2018-03-21 12:49:24', 0, 'A', '0.00', ''),
(10, 1000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 345, 1, NULL, 1, '2018-04-05 09:43:44', 0, 'A', '0.00', ''),
(12, 1000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1120, 1, NULL, 1, '2018-03-21 12:48:42', 0, 'A', '0.00', ''),
(13, 1000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1245, 1, NULL, 1, '2018-04-05 09:42:49', 0, 'A', '0.00', ''),
(15, 1000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 230, 1, NULL, 1, '2018-03-21 12:47:01', 0, 'A', '0.00', ''),
(16, 1000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 295, 1, NULL, 1, '2018-04-05 09:41:58', 0, 'A', '0.00', ''),
(18, 1000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 940, 1, NULL, 1, '2018-03-21 12:45:49', 0, 'A', '0.00', ''),
(19, 1000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1015, 1, NULL, 1, '2018-04-05 09:41:08', 0, 'A', '0.00', ''),
(21, 2000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 490, 1, NULL, 1, '2018-03-21 12:40:24', 0, 'A', '0.00', ''),
(22, 2000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 615, 1, NULL, 1, '2018-04-05 09:39:49', 0, 'A', '0.00', ''),
(24, 2000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2210, 1, NULL, 1, '2018-03-21 12:39:06', 0, 'A', '0.00', ''),
(25, 2000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2415, 1, NULL, 1, '2018-04-05 09:33:24', 0, 'A', '0.00', ''),
(27, 2000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 430, 1, NULL, 1, '2018-03-21 12:38:17', 0, 'A', '0.00', ''),
(28, 2000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 515, 1, NULL, 1, '2018-04-05 09:25:31', 0, 'A', '0.00', ''),
(30, 2000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1850, 1, NULL, 1, '2018-03-21 12:37:36', 0, 'A', '0.00', ''),
(31, 2000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1955, 1, NULL, 1, '2018-04-05 09:24:35', 0, 'A', '0.00', ''),
(33, 3000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 720, 1, NULL, 1, '2018-03-21 12:34:17', 0, 'A', '0.00', ''),
(34, 3000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 885, 1, NULL, 1, '2018-04-05 09:23:14', 0, 'A', '0.00', ''),
(36, 3000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3300, 1, NULL, 1, '2018-03-21 12:33:30', 0, 'A', '0.00', ''),
(37, 3000000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3585, 1, NULL, 1, '2018-04-05 09:22:17', 0, 'A', '0.00', ''),
(39, 3000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 630, 1, NULL, 1, '2018-03-21 12:32:27', 0, 'A', '0.00', ''),
(40, 3000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 735, 1, NULL, 1, '2018-04-05 09:20:43', 0, 'A', '0.00', ''),
(42, 3000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2760, 1, NULL, 1, '2018-03-21 12:31:41', 0, 'A', '0.00', ''),
(43, 3000000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2895, 1, NULL, 1, '2018-04-05 09:19:57', 0, 'A', '0.00', ''),
(45, 1000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 600, 1, NULL, 1, '2018-03-21 12:24:44', 0, 'A', '0.00', ''),
(46, 1000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 495, 1, NULL, 1, '2018-04-05 09:18:01', 0, 'A', '0.00', ''),
(48, 1000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1900, 1, NULL, 1, '2018-03-21 12:24:01', 0, 'A', '0.00', ''),
(49, 1000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1995, 1, NULL, 1, '2018-04-05 09:17:18', 0, 'A', '0.00', ''),
(51, 1000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 490, 1, NULL, 1, '2018-03-21 12:22:43', 0, 'A', '0.00', ''),
(52, 1000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 435, 1, NULL, 1, '2018-04-05 09:16:27', 0, 'A', '0.00', ''),
(54, 1000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1460, 1, NULL, 1, '2018-03-21 12:21:32', 0, 'A', '0.00', ''),
(55, 1000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1825, 1, NULL, 1, '2018-04-05 09:15:37', 0, 'A', '0.00', ''),
(57, 2000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1170, 1, NULL, 1, '2018-03-21 12:18:03', 0, 'A', '0.00', ''),
(58, 2000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 915, 1, NULL, 1, '2018-04-05 09:14:24', 0, 'A', '0.00', ''),
(60, 2000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3770, 1, NULL, 1, '2018-03-21 12:16:22', 0, 'A', '0.00', ''),
(61, 2000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3915, 1, NULL, 1, '2018-04-05 09:13:46', 0, 'A', '0.00', ''),
(63, 2000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 950, 1, NULL, 1, '2018-03-21 12:15:24', 0, 'A', '0.00', ''),
(64, 2000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 795, 1, NULL, 1, '2018-04-05 09:12:53', 0, 'A', '0.00', ''),
(66, 2000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2890, 1, NULL, 1, '2018-03-21 12:14:15', 0, 'A', '0.00', ''),
(67, 2000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3575, 1, NULL, 1, '2018-04-05 09:12:02', 0, 'A', '0.00', ''),
(69, 3000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1740, 1, NULL, 1, '2018-03-21 12:10:47', 0, 'A', '0.00', ''),
(70, 3000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1335, 1, NULL, 1, '2018-04-05 09:10:43', 0, 'A', '0.00', ''),
(72, 3000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5640, 1, NULL, 1, '2018-03-21 12:09:52', 0, 'A', '0.00', ''),
(73, 3000000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5835, 1, NULL, 1, '2018-04-05 09:09:56', 0, 'A', '0.00', ''),
(75, 3000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1410, 1, NULL, 1, '2018-03-21 12:08:43', 0, 'A', '0.00', ''),
(76, 3000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1155, 1, NULL, 1, '2018-04-05 09:09:09', 0, 'A', '0.00', ''),
(78, 3000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4320, 1, NULL, 1, '2018-03-21 12:07:40', 0, 'A', '0.00', ''),
(79, 3000000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5325, 1, NULL, 1, '2018-04-05 09:08:25', 0, 'A', '0.00', ''),
(81, 1000000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 940, 1, NULL, 1, '2018-03-21 12:02:01', 0, 'A', '0.00', ''),
(83, 1000000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3070, 1, NULL, 1, '2018-03-21 12:00:48', 0, 'A', '0.00', ''),
(85, 1000000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 780, 1, NULL, 1, '2018-03-21 11:59:10', 0, 'A', '0.00', ''),
(87, 1000000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2250, 1, NULL, 1, '2018-03-21 11:57:37', 0, 'A', '0.00', ''),
(89, 2000000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1850, 1, NULL, 1, '2018-03-21 11:53:50', 0, 'A', '0.00', ''),
(91, 2000000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6110, 1, NULL, 1, '2018-03-21 11:52:48', 0, 'A', '0.00', ''),
(93, 2000000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1530, 1, NULL, 1, '2018-03-21 11:51:49', 0, 'A', '0.00', ''),
(95, 2000000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4470, 1, NULL, 1, '2018-03-21 11:51:03', 0, 'A', '0.00', ''),
(97, 3000000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2760, 1, NULL, 1, '2018-03-21 11:47:50', 0, 'A', '0.00', ''),
(99, 3000000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9150, 1, NULL, 1, '2018-03-21 11:46:36', 0, 'A', '0.00', ''),
(101, 3000000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2280, 1, NULL, 1, '2018-03-21 11:45:06', 0, 'A', '0.00', ''),
(103, 3000000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6990, 1, NULL, 1, '2018-03-21 11:45:37', 0, 'A', '0.00', ''),
(105, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 420, 1, NULL, 1, '2018-03-21 11:41:30', 0, 'A', '0.00', ''),
(106, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 455, 1, NULL, 1, '2018-04-05 09:06:56', 0, 'A', '0.00', ''),
(108, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1590, 1, NULL, 1, '2018-03-21 11:40:51', 0, 'A', '0.00', ''),
(109, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1845, 1, NULL, 1, '2018-04-05 09:06:13', 0, 'A', '0.00', ''),
(111, 1000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 350, 1, NULL, 1, '2018-03-21 11:38:54', 0, 'A', '0.00', ''),
(112, 1000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 385, 1, NULL, 1, '2018-04-05 09:04:41', 0, 'A', '0.00', ''),
(114, 1000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1300, 1, NULL, 1, '2018-03-21 11:38:06', 0, 'A', '0.00', ''),
(115, 1000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1605, 1, NULL, 1, '2018-04-05 09:04:02', 0, 'A', '0.00', ''),
(117, 2000000, 36, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 810, 1, NULL, 1, '2018-03-21 11:36:08', 0, 'A', '0.00', ''),
(118, 2000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 835, 1, NULL, 1, '2018-04-05 09:02:17', 0, 'A', '0.00', ''),
(120, 2000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3150, 1, NULL, 1, '2018-03-21 11:34:56', 0, 'A', '0.00', ''),
(121, 2000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3615, 1, NULL, 1, '2018-04-05 09:01:41', 0, 'A', '0.00', ''),
(123, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 610, 1, NULL, 1, '2018-03-21 11:32:38', 0, 'A', '0.00', ''),
(124, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 695, 1, NULL, 1, '2018-04-05 09:00:52', 0, 'A', '0.00', ''),
(126, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2570, 1, NULL, 1, '2018-03-21 11:31:40', 0, 'A', '0.00', ''),
(127, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3135, 1, NULL, 1, '2018-04-05 09:00:07', 0, 'A', '0.00', ''),
(129, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1200, 1, NULL, 1, '2018-03-21 11:28:35', 0, 'A', '0.00', ''),
(130, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1215, 1, NULL, 1, '2018-04-05 08:58:50', 0, 'A', '0.00', ''),
(132, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4710, 1, NULL, 1, '2018-03-21 11:27:53', 0, 'A', '0.00', ''),
(133, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5385, 1, NULL, 1, '2018-04-05 08:58:10', 0, 'A', '0.00', ''),
(135, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 990, 1, NULL, 1, '2018-03-21 11:26:05', 0, 'A', '0.00', ''),
(136, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1005, 1, NULL, 1, '2018-04-05 08:57:09', 0, 'A', '0.00', ''),
(138, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3480, 1, NULL, 1, '2018-03-21 11:25:04', 0, 'A', '0.00', ''),
(139, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4665, 1, NULL, 1, '2018-04-05 08:56:26', 0, 'A', '0.00', ''),
(141, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2580, 1, NULL, 1, '2018-03-21 11:20:35', 0, 'A', '0.00', ''),
(142, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1965, 1, NULL, 1, '2018-04-05 08:54:41', 0, 'A', '0.00', ''),
(144, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8100, 1, NULL, 1, '2018-03-21 11:19:47', 0, 'A', '0.00', ''),
(145, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8955, 1, NULL, 1, '2018-04-05 08:53:07', 0, 'A', '0.00', ''),
(147, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2070, 1, NULL, 1, '2018-03-21 11:17:46', 0, 'A', '0.00', ''),
(148, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1695, 1, NULL, 1, '2018-04-05 08:51:35', 0, 'A', '0.00', ''),
(150, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6480, 1, NULL, 1, '2018-03-21 11:16:59', 0, 'A', '0.00', ''),
(151, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7605, 1, NULL, 1, '2018-04-05 08:50:33', 0, 'A', '0.00', ''),
(153, 3000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4200, 1, NULL, 1, '2018-03-21 11:14:44', 0, 'A', '0.00', ''),
(155, 3000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13740, 1, NULL, 1, '2018-03-21 11:13:49', 0, 'A', '0.00', ''),
(157, 3000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3420, 1, NULL, 1, '2018-03-21 11:11:07', 0, 'A', '0.00', ''),
(159, 3000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9690, 1, NULL, 1, '2018-03-21 11:10:16', 0, 'A', '0.00', ''),
(161, 1000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 630, 1, NULL, 1, '2018-03-21 11:06:24', 0, 'A', '0.00', ''),
(162, 1000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 615, 1, NULL, 1, '2018-04-05 08:49:13', 0, 'A', '0.00', ''),
(164, 1000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2620, 1, NULL, 1, '2018-03-21 11:05:30', 0, 'A', '0.00', ''),
(165, 1000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2905, 1, NULL, 1, '2018-04-05 08:48:39', 0, 'A', '0.00', ''),
(167, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 510, 1, NULL, 1, '2018-03-21 11:03:19', 0, 'A', '0.00', ''),
(168, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 545, 1, NULL, 1, '2018-04-05 08:47:48', 0, 'A', '0.00', ''),
(170, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1970, 1, NULL, 1, '2018-03-21 11:02:46', 0, 'A', '0.00', ''),
(171, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2525, 1, NULL, 1, '2018-04-05 08:46:58', 0, 'A', '0.00', ''),
(173, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1230, 1, NULL, 1, '2018-03-21 11:00:31', 0, 'A', '0.00', ''),
(174, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1155, 1, NULL, 1, '2018-04-05 08:45:42', 0, 'A', '0.00', ''),
(176, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5210, 1, NULL, 1, '2018-03-21 10:59:48', 0, 'A', '0.00', ''),
(177, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5735, 1, NULL, 1, '2018-04-05 08:44:55', 0, 'A', '0.00', ''),
(179, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 990, 1, NULL, 1, '2018-03-21 10:57:49', 0, 'A', '0.00', ''),
(180, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1015, 1, NULL, 1, '2018-04-05 08:42:49', 0, 'A', '0.00', ''),
(182, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3910, 1, NULL, 1, '2018-03-21 10:57:06', 0, 'A', '0.00', ''),
(184, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1830, 1, NULL, 1, '2018-03-21 10:54:33', 0, 'A', '0.00', ''),
(185, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1695, 1, NULL, 1, '2018-04-05 08:38:16', 0, 'A', '0.00', ''),
(187, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7800, 1, NULL, 1, '2018-03-21 10:53:44', 0, 'A', '0.00', ''),
(188, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8565, 1, NULL, 1, '2018-04-05 08:37:27', 0, 'A', '0.00', ''),
(190, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1470, 1, NULL, 1, '2018-03-21 10:51:36', 0, 'A', '0.00', ''),
(191, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1485, 1, NULL, 1, '2018-04-05 08:36:32', 0, 'A', '0.00', ''),
(193, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5850, 1, NULL, 1, '2018-03-21 10:50:51', 0, 'A', '0.00', ''),
(194, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7425, 1, NULL, 1, '2018-04-05 08:35:52', 0, 'A', '0.00', ''),
(196, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1270, 1, NULL, 1, '2018-03-21 10:47:49', 0, 'A', '0.00', ''),
(197, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1115, 1, NULL, 1, '2018-04-05 08:33:07', 0, 'A', '0.00', ''),
(199, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4370, 1, NULL, 1, '2018-03-21 10:46:42', 0, 'A', '0.00', ''),
(200, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5045, 1, NULL, 1, '2018-04-05 08:32:24', 0, 'A', '0.00', ''),
(202, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1020, 1, NULL, 1, '2018-03-21 10:44:15', 0, 'A', '0.00', ''),
(203, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 915, 1, NULL, 1, '2018-04-05 08:31:26', 0, 'A', '0.00', ''),
(205, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3370, 1, NULL, 1, '2018-03-21 10:43:20', 0, 'A', '0.00', ''),
(206, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3945, 1, NULL, 1, '2018-04-05 08:30:24', 0, 'A', '0.00', ''),
(208, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2510, 1, NULL, 1, '2018-03-21 10:40:20', 0, 'A', '0.00', ''),
(209, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2155, 1, NULL, 1, '2018-04-05 08:28:58', 0, 'A', '0.00', ''),
(211, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8710, 1, NULL, 1, '2018-03-21 10:39:33', 0, 'A', '0.00', ''),
(212, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10015, 1, NULL, 1, '2018-04-05 08:28:10', 0, 'A', '0.00', ''),
(214, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2010, 1, NULL, 1, '2018-03-21 10:37:15', 0, 'A', '0.00', ''),
(215, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1755, 1, NULL, 1, '2018-04-05 08:27:24', 0, 'A', '0.00', ''),
(217, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6710, 1, NULL, 1, '2018-03-21 10:36:25', 0, 'A', '0.00', ''),
(218, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7815, 1, NULL, 1, '2018-04-05 08:26:39', 0, 'A', '0.00', ''),
(220, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3750, 1, NULL, 1, '2018-03-21 10:33:50', 0, 'A', '0.00', ''),
(221, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3195, 1, NULL, 1, '2018-04-05 08:25:29', 0, 'A', '0.00', ''),
(223, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13050, 1, NULL, 1, '2018-03-21 10:32:45', 0, 'A', '0.00', ''),
(224, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 14985, 1, NULL, 1, '2018-04-05 08:24:53', 0, 'A', '0.00', ''),
(226, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3000, 1, NULL, 1, '2018-03-21 10:30:06', 0, 'A', '0.00', ''),
(227, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2595, 1, NULL, 1, '2018-04-05 08:23:43', 0, 'A', '0.00', ''),
(229, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10050, 1, NULL, 1, '2018-03-21 10:28:08', 0, 'A', '0.00', ''),
(230, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11685, 1, NULL, 1, '2018-04-05 08:22:58', 0, 'A', '0.00', ''),
(232, 1000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2200, 1, NULL, 1, '2018-03-21 10:26:31', 0, 'A', '0.00', ''),
(234, 1000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7380, 1, NULL, 1, '2018-03-21 10:25:06', 0, 'A', '0.00', ''),
(238, 1000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5180, 1, NULL, 1, '2018-03-21 10:23:16', 0, 'A', '0.00', ''),
(240, 2000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4370, 1, NULL, 1, '2018-03-21 10:21:17', 0, 'A', '0.00', ''),
(242, 2000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 14730, 1, NULL, 1, '2018-03-21 10:19:31', 0, 'A', '0.00', ''),
(246, 2000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10330, 1, NULL, 1, '2018-03-21 10:18:08', 0, 'A', '0.00', ''),
(248, 3000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6540, 1, NULL, 1, '2018-03-21 10:16:35', 0, 'A', '0.00', ''),
(250, 3000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 22080, 1, NULL, 1, '2018-03-21 10:15:27', 0, 'A', '0.00', ''),
(254, 3000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 15480, 1, NULL, 1, '2018-03-21 10:13:43', 0, 'A', '0.00', ''),
(256, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1010, 1, NULL, 1, '2018-03-21 10:11:10', 0, 'A', '0.00', ''),
(257, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 925, 1, NULL, 1, '2018-04-05 08:21:06', 0, 'A', '0.00', ''),
(259, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4390, 1, NULL, 1, '2018-03-21 10:09:32', 0, 'A', '0.00', ''),
(260, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4205, 1, NULL, 1, '2018-04-05 08:20:24', 0, 'A', '0.00', ''),
(262, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 800, 1, NULL, 1, '2018-03-21 10:08:06', 0, 'A', '0.00', ''),
(263, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 805, 1, NULL, 1, '2018-04-05 08:19:31', 0, 'A', '0.00', ''),
(265, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3290, 1, NULL, 1, '2018-03-21 09:51:11', 0, 'A', '0.00', ''),
(266, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3995, 1, NULL, 1, '2018-04-05 08:18:46', 0, 'A', '0.00', ''),
(268, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1990, 1, NULL, 1, '2018-03-21 09:49:21', 0, 'A', '0.00', ''),
(269, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1775, 1, NULL, 1, '2018-04-05 08:17:14', 0, 'A', '0.00', ''),
(271, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8750, 1, NULL, 1, '2018-03-21 09:48:34', 0, 'A', '0.00', ''),
(272, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8335, 1, NULL, 1, '2018-04-05 08:16:39', 0, 'A', '0.00', ''),
(274, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1570, 1, NULL, 1, '2018-03-21 09:46:34', 0, 'A', '0.00', ''),
(275, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1535, 1, NULL, 1, '2018-04-05 08:15:53', 0, 'A', '0.00', ''),
(277, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6550, 1, NULL, 1, '2018-03-21 09:45:23', 0, 'A', '0.00', ''),
(278, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7915, 1, NULL, 1, '2018-04-05 08:15:14', 0, 'A', '0.00', ''),
(280, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2970, 1, NULL, 1, '2018-03-21 09:43:41', 0, 'A', '0.00', ''),
(281, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2625, 1, NULL, 1, '2018-04-05 08:14:10', 0, 'A', '0.00', ''),
(283, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13110, 1, NULL, 1, '2018-03-21 09:42:06', 0, 'A', '0.00', ''),
(284, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12465, 1, NULL, 1, '2018-04-05 08:13:31', 0, 'A', '0.00', ''),
(286, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2340, 1, NULL, 1, '2018-03-21 09:40:43', 0, 'A', '0.00', ''),
(287, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2265, 1, NULL, 1, '2018-04-05 08:12:33', 0, 'A', '0.00', ''),
(289, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9810, 1, NULL, 1, '2018-03-21 09:39:10', 0, 'A', '0.00', ''),
(290, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11835, 1, NULL, 1, '2018-04-05 08:11:33', 0, 'A', '0.00', ''),
(293, 1000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1705, 1, NULL, 1, '2018-04-05 08:08:12', 0, 'A', '0.00', ''),
(295, 1000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6740, 1, NULL, 1, '2018-03-21 09:37:14', 0, 'A', '0.00', ''),
(296, 1000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7685, 1, NULL, 1, '2018-04-05 08:07:28', 0, 'A', '0.00', ''),
(299, 1000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1365, 1, NULL, 1, '2018-04-05 08:06:40', 0, 'A', '0.00', ''),
(301, 1000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5360, 1, NULL, 1, '2018-03-21 09:35:37', 0, 'A', '0.00', ''),
(302, 1000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5905, 1, NULL, 1, '2018-04-05 08:05:50', 0, 'A', '0.00', ''),
(305, 2000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3335, 1, NULL, 1, '2018-04-05 08:04:24', 0, 'A', '0.00', ''),
(307, 2000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13450, 1, NULL, 1, '2018-03-21 09:32:33', 0, 'A', '0.00', ''),
(308, 2000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 15295, 1, NULL, 1, '2018-04-05 08:03:47', 0, 'A', '0.00', ''),
(311, 2000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2655, 1, NULL, 1, '2018-04-05 08:03:00', 0, 'A', '0.00', ''),
(313, 2000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10690, 1, NULL, 1, '2018-03-21 09:30:49', 0, 'A', '0.00', ''),
(314, 2000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11735, 1, NULL, 1, '2018-04-05 08:01:57', 0, 'A', '0.00', ''),
(317, 3000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4965, 1, NULL, 1, '2018-04-05 08:00:40', 0, 'A', '0.00', ''),
(319, 3000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 20160, 1, NULL, 1, '2018-03-21 09:29:03', 0, 'A', '0.00', ''),
(320, 3000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 22905, 1, NULL, 1, '2018-04-05 08:00:00', 0, 'A', '0.00', ''),
(325, 3000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3945, 1, NULL, 1, '2018-04-05 07:58:40', 0, 'A', '0.00', ''),
(327, 3000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 16020, 1, NULL, 1, '2018-03-21 09:27:35', 0, 'A', '0.00', ''),
(328, 3000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17565, 1, NULL, 1, '2018-04-05 07:57:53', 0, 'A', '0.00', ''),
(330, 1000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3630, 1, NULL, 1, '2018-03-21 09:24:12', 0, 'A', '0.00', ''),
(332, 1000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11370, 1, NULL, 1, '2018-03-21 09:22:42', 0, 'A', '0.00', ''),
(336, 1000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8340, 1, NULL, 1, '2018-03-21 09:20:48', 0, 'A', '0.00', ''),
(338, 2000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7230, 1, NULL, 1, '2018-03-21 09:18:56', 0, 'A', '0.00', ''),
(340, 2000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 22710, 1, NULL, 1, '2018-03-21 09:17:25', 0, 'A', '0.00', ''),
(344, 2000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 16650, 1, NULL, 1, '2018-03-21 09:15:35', 0, 'A', '0.00', ''),
(346, 3000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 10830, 1, NULL, 1, '2018-03-21 09:14:02', 0, 'A', '0.00', ''),
(348, 3000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 34050, 1, NULL, 1, '2018-03-21 09:12:41', 0, 'A', '0.00', ''),
(352, 3000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 24960, 1, NULL, 1, '2018-03-21 09:10:31', 0, 'A', '0.00', ''),
(354, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1630, 1, NULL, 1, '2018-03-21 09:08:04', 0, 'A', '0.00', ''),
(355, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1605, 1, NULL, 1, '2018-04-05 07:55:58', 0, 'A', '0.00', ''),
(357, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7170, 1, NULL, 1, '2018-03-21 09:06:33', 0, 'A', '0.00', ''),
(358, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6585, 1, NULL, 1, '2018-04-05 07:55:16', 0, 'A', '0.00', ''),
(360, 1000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1280, 1, NULL, 1, '2018-03-21 09:04:53', 0, 'A', '0.00', ''),
(361, 1000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1195, 1, NULL, 1, '2018-04-05 07:54:17', 0, 'A', '0.00', ''),
(364, 1000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6175, 1, NULL, 1, '2018-04-05 07:53:25', 0, 'A', '0.00', ''),
(366, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3230, 1, NULL, 1, '2018-03-21 09:02:02', 0, 'A', '0.00', ''),
(367, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3135, 1, NULL, 1, '2018-04-05 07:52:00', 0, 'A', '0.00', ''),
(369, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 14310, 1, NULL, 1, '2018-03-21 08:59:32', 0, 'A', '0.00', ''),
(370, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13095, 1, NULL, 1, '2018-04-05 07:50:04', 0, 'A', '0.00', ''),
(372, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2530, 1, NULL, 1, '2018-03-21 08:57:14', 0, 'A', '0.00', ''),
(373, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2315, 1, NULL, 1, '2018-04-05 07:49:14', 0, 'A', '0.00', ''),
(375, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10890, 1, NULL, 1, '2018-03-21 08:55:36', 0, 'A', '0.00', ''),
(376, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 12275, 1, NULL, 1, '2018-04-05 07:48:30', 0, 'A', '0.00', ''),
(378, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4830, 1, NULL, 1, '2018-03-21 08:53:29', 0, 'A', '0.00', ''),
(379, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4665, 1, NULL, 1, '2018-04-05 07:47:19', 0, 'A', '0.00', ''),
(381, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 21450, 1, NULL, 1, '2018-03-21 08:50:53', 0, 'A', '0.00', ''),
(382, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 19605, 1, NULL, 1, '2018-04-05 07:46:32', 0, 'A', '0.00', ''),
(384, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3780, 1, NULL, 1, '2018-03-21 08:49:18', 0, 'A', '0.00', ''),
(385, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3435, 1, NULL, 1, '2018-04-05 07:45:53', 0, 'A', '0.00', ''),
(387, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 16320, 1, NULL, 1, '2018-03-21 08:47:15', 0, 'A', '0.00', ''),
(388, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 18375, 1, NULL, 1, '2018-04-05 07:45:05', 0, 'A', '0.00', ''),
(390, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3030, 1, NULL, 1, '2018-03-21 08:44:54', 0, 'A', '0.00', ''),
(391, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2815, 1, NULL, 1, '2018-04-05 07:43:45', 0, 'A', '0.00', ''),
(393, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10760, 1, NULL, 1, '2018-03-21 08:42:23', 0, 'A', '0.00', ''),
(394, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11545, 1, NULL, 1, '2018-04-05 07:42:59', 0, 'A', '0.00', ''),
(396, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2380, 1, NULL, 1, '2018-03-21 08:40:56', 0, 'A', '0.00', ''),
(397, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2125, 1, NULL, 1, '2018-04-05 07:42:02', 0, 'A', '0.00', ''),
(399, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8500, 1, NULL, 1, '2018-03-21 08:39:27', 0, 'A', '0.00', ''),
(400, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9895, 1, NULL, 1, '2018-04-05 07:41:20', 0, 'A', '0.00', ''),
(402, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6030, 1, NULL, 1, '2018-03-21 08:36:53', 0, 'A', '0.00', ''),
(403, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5555, 1, NULL, 1, '2018-04-05 07:40:00', 0, 'A', '0.00', ''),
(405, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 21490, 1, NULL, 1, '2018-03-21 08:22:20', 0, 'A', '0.00', ''),
(406, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 23015, 1, NULL, 1, '2018-04-05 07:39:18', 0, 'A', '0.00', ''),
(408, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4730, 1, NULL, 1, '2018-03-21 08:20:46', 0, 'A', '0.00', ''),
(409, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4175, 1, NULL, 1, '2018-04-05 07:38:15', 0, 'A', '0.00', ''),
(411, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 16970, 1, NULL, 1, '2018-03-21 08:19:10', 0, 'A', '0.00', ''),
(412, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 19715, 1, NULL, 1, '2018-04-05 07:37:07', 0, 'A', '0.00', ''),
(414, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9030, 1, NULL, 1, '2018-03-21 08:16:41', 0, 'A', '0.00', ''),
(415, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8295, 1, NULL, 1, '2018-04-05 07:35:37', 0, 'A', '0.00', ''),
(417, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 32220, 1, NULL, 1, '2018-03-21 08:14:46', 0, 'A', '0.00', ''),
(418, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 34485, 1, NULL, 1, '2018-04-05 07:34:37', 0, 'A', '0.00', ''),
(420, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7080, 1, NULL, 1, '2018-03-21 08:13:11', 0, 'A', '0.00', ''),
(421, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6225, 1, NULL, 1, '2018-04-05 07:33:51', 0, 'A', '0.00', ''),
(423, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 29440, 1, NULL, 1, '2018-03-21 08:10:07', 0, 'A', '0.00', ''),
(424, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 29535, 1, NULL, 1, '2018-04-05 07:32:50', 0, 'A', '0.00', ''),
(425, 1000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6210, 1, NULL, 1, '2018-03-21 08:08:19', 0, 'A', '0.00', ''),
(427, 1000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5240, 1, NULL, 1, '2018-03-21 08:06:36', 0, 'A', '0.00', ''),
(429, 2000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 12390, 1, NULL, 1, '2018-03-21 08:04:42', 0, 'A', '0.00', ''),
(431, 2000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 10450, 1, NULL, 1, '2018-03-21 08:02:31', 0, 'A', '0.00', ''),
(433, 3000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 18570, 1, NULL, 1, '2018-03-21 07:53:38', 0, 'A', '0.00', ''),
(435, 3000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 15660, 1, NULL, 1, '2018-03-21 07:50:47', 0, 'A', '0.00', ''),
(438, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2670, 1, NULL, 1, '2018-03-21 07:47:30', 0, 'A', '0.00', ''),
(439, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2655, 1, NULL, 1, '2018-04-05 07:26:01', 0, 'A', '0.00', ''),
(441, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11500, 1, NULL, 1, '2018-03-21 07:45:41', 0, 'A', '0.00', ''),
(442, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10025, 1, NULL, 1, '2018-04-05 07:25:08', 0, 'A', '0.00', ''),
(444, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2160, 1, NULL, 1, '2018-03-21 07:41:57', 0, 'A', '0.00', ''),
(445, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1765, 1, NULL, 1, '2018-04-05 07:24:19', 0, 'A', '0.00', ''),
(447, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8910, 1, NULL, 1, '2018-03-21 07:40:15', 0, 'A', '0.00', ''),
(448, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8555, 1, NULL, 1, '2018-04-05 07:23:35', 0, 'A', '0.00', ''),
(450, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5310, 1, NULL, 1, '2018-03-21 07:37:38', 0, 'A', '0.00', ''),
(451, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5235, 1, NULL, 1, '2018-04-05 07:22:15', 0, 'A', '0.00', ''),
(453, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 22970, 1, NULL, 1, '2018-03-21 07:36:04', 0, 'A', '0.00', ''),
(454, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 19975, 1, NULL, 1, '2018-04-05 07:21:26', 0, 'A', '0.00', ''),
(456, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4290, 1, NULL, 1, '2018-03-21 07:34:02', 0, 'A', '0.00', ''),
(457, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3455, 1, NULL, 1, '2018-04-05 07:20:15', 0, 'A', '0.00', ''),
(459, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17790, 1, NULL, 1, '2018-03-21 07:32:33', 0, 'A', '0.00', ''),
(460, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17035, 1, NULL, 1, '2018-04-05 07:19:31', 0, 'A', '0.00', ''),
(462, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7950, 1, NULL, 1, '2018-03-21 07:30:13', 0, 'A', '0.00', ''),
(463, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7815, 1, NULL, 1, '2018-04-05 07:18:25', 0, 'A', '0.00', ''),
(465, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 34440, 1, NULL, 1, '2018-03-21 07:28:34', 0, 'A', '0.00', ''),
(466, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 29925, 1, NULL, 1, '2018-04-05 07:17:43', 0, 'A', '0.00', ''),
(468, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6420, 1, NULL, 1, '2018-03-21 07:25:11', 0, 'A', '0.00', ''),
(469, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5145, 1, NULL, 1, '2018-04-05 07:16:59', 0, 'A', '0.00', ''),
(471, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 26670, 1, NULL, 1, '2018-03-21 07:26:36', 0, 'A', '0.00', ''),
(472, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 25515, 1, NULL, 1, '2018-04-05 07:16:12', 0, 'A', '0.00', ''),
(474, 1000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5150, 1, NULL, 1, '2018-03-21 07:20:09', 0, 'A', '0.00', ''),
(475, 1000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4975, 1, NULL, 1, '2018-04-05 07:14:53', 0, 'A', '0.00', ''),
(477, 1000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 17060, 1, NULL, 1, '2018-03-21 07:18:24', 0, 'A', '0.00', ''),
(478, 1000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 16975, 1, NULL, 1, '2018-04-05 07:14:20', 0, 'A', '0.00', ''),
(480, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4130, 1, NULL, 1, '2018-03-21 07:16:31', 0, 'A', '0.00', ''),
(481, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3425, 1, NULL, 1, '2018-04-05 07:13:35', 0, 'A', '0.00', ''),
(483, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 13500, 1, NULL, 1, '2018-03-21 07:09:41', 0, 'A', '0.00', ''),
(484, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 15455, 1, NULL, 1, '2018-04-05 07:12:39', 0, 'A', '0.00', ''),
(486, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 10270, 1, NULL, 1, '2018-03-21 07:07:32', 0, 'A', '0.00', ''),
(487, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9875, 1, NULL, 1, '2018-04-05 07:11:10', 0, 'A', '0.00', ''),
(489, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 34090, 1, NULL, 1, '2018-03-21 07:05:25', 0, 'A', '0.00', ''),
(490, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 33875, 1, NULL, 1, '2018-04-05 07:10:37', 0, 'A', '0.00', ''),
(492, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8230, 1, NULL, 1, '2018-03-21 07:03:00', 0, 'A', '0.00', ''),
(493, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6775, 1, NULL, 1, '2018-04-05 07:09:53', 0, 'A', '0.00', ''),
(495, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 26970, 1, NULL, 1, '2018-03-21 07:00:32', 0, 'A', '0.00', ''),
(496, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 30835, 1, NULL, 1, '2018-04-05 07:09:12', 0, 'A', '0.00', ''),
(498, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 15390, 1, NULL, 1, '2018-03-21 06:58:04', 0, 'A', '0.00', ''),
(499, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 14775, 1, NULL, 1, '2018-04-05 07:08:00', 0, 'A', '0.00', ''),
(501, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 51120, 1, NULL, 1, '2018-03-21 06:56:31', 0, 'A', '0.00', ''),
(502, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 50775, 1, NULL, 1, '2018-04-05 07:07:21', 0, 'A', '0.00', ''),
(504, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 12030, 1, NULL, 1, '2018-03-21 06:54:16', 0, 'A', '0.00', ''),
(505, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 10125, 1, NULL, 1, '2018-04-05 07:06:37', 0, 'A', '0.00', ''),
(507, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 40440, 1, NULL, 1, '2018-03-21 06:52:49', 0, 'A', '0.00', ''),
(508, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 46215, 1, NULL, 1, '2018-04-05 07:05:44', 0, 'A', '0.00', ''),
(516, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4630, 1, NULL, 1, '2018-03-21 06:50:06', 0, 'A', '0.00', ''),
(517, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4605, 1, NULL, 1, '2018-04-05 07:03:46', 0, 'A', '0.00', ''),
(519, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18570, 1, NULL, 1, '2018-03-21 06:48:19', 0, 'A', '0.00', ''),
(520, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 16745, 1, NULL, 1, '2018-04-05 07:03:08', 0, 'A', '0.00', ''),
(522, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3730, 1, NULL, 1, '2018-03-21 06:41:22', 0, 'A', '0.00', ''),
(523, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2635, 1, NULL, 1, '2018-04-05 07:01:58', 0, 'A', '0.00', ''),
(526, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 14600, 1, NULL, 1, '2018-03-21 06:39:12', 0, 'A', '0.00', ''),
(527, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 12675, 1, NULL, 1, '2018-04-05 07:01:11', 0, 'A', '0.00', ''),
(529, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9230, 1, NULL, 1, '2018-03-20 10:02:14', 0, 'A', '0.00', ''),
(530, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9135, 1, NULL, 1, '2018-04-05 06:59:30', 0, 'A', '0.00', ''),
(532, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 37110, 1, NULL, 1, '2018-03-20 10:00:59', 0, 'A', '0.00', ''),
(533, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 33415, 1, NULL, 1, '2018-04-05 06:58:57', 0, 'A', '0.00', ''),
(535, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7430, 1, NULL, 1, '2018-03-20 09:53:36', 0, 'A', '0.00', ''),
(536, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5195, 1, NULL, 1, '2018-04-05 06:58:11', 0, 'A', '0.00', ''),
(538, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 29170, 1, NULL, 1, '2018-03-20 09:51:11', 0, 'A', '0.00', ''),
(539, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 25275, 1, NULL, 1, '2018-04-05 06:57:29', 0, 'A', '0.00', ''),
(541, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 13830, 1, NULL, 1, '2018-03-20 09:49:06', 0, 'A', '0.00', ''),
(542, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 13665, 1, NULL, 1, '2018-04-05 06:56:12', 0, 'A', '0.00', ''),
(544, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 55650, 1, NULL, 1, '2018-03-20 09:45:33', 0, 'A', '0.00', ''),
(545, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 50085, 1, NULL, 1, '2018-04-05 06:53:34', 0, 'A', '0.00', ''),
(547, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 11130, 1, NULL, 1, '2018-03-20 09:43:01', 0, 'A', '0.00', ''),
(548, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7755, 1, NULL, 1, '2018-04-05 06:52:14', 0, 'A', '0.00', ''),
(550, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 43740, 1, NULL, 1, '2018-03-20 09:40:56', 0, 'A', '0.00', ''),
(551, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 37875, 1, NULL, 1, '2018-04-05 06:51:15', 0, 'A', '0.00', ''),
(553, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9200, 1, NULL, 1, '2018-03-20 09:35:03', 0, 'A', '0.00', ''),
(554, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9765, 1, NULL, 1, '2018-04-05 06:49:42', 0, 'A', '0.00', ''),
(556, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 26800, 1, NULL, 1, '2018-03-20 09:33:11', 0, 'A', '0.00', ''),
(557, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 29205, 1, NULL, 1, '2018-04-05 06:49:00', 0, 'A', '0.00', ''),
(559, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7500, 1, NULL, 1, '2018-03-20 09:31:18', 0, 'A', '0.00', ''),
(560, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6255, 1, NULL, 1, '2018-04-05 06:48:01', 0, 'A', '0.00', ''),
(562, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 21240, 1, NULL, 1, '2018-03-20 09:29:49', 0, 'A', '0.00', ''),
(563, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 25665, 1, NULL, 1, '2018-04-05 06:47:01', 0, 'A', '0.00', ''),
(583, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 18370, 1, NULL, 1, '2018-03-20 09:27:17', 0, 'A', '0.00', ''),
(584, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 19455, 1, NULL, 1, '2018-04-05 06:45:51', 0, 'A', '0.00', ''),
(586, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 53570, 1, NULL, 1, '2018-03-20 09:26:01', 0, 'A', '0.00', ''),
(587, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 58355, 1, NULL, 1, '2018-04-05 06:45:17', 0, 'A', '0.00', ''),
(589, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 14970, 1, NULL, 1, '2018-03-20 09:24:45', 0, 'A', '0.00', ''),
(590, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 12435, 1, NULL, 1, '2018-04-05 06:44:06', 0, 'A', '0.00', '');
INSERT INTO `products` (`id`, `amount`, `age_start`, `age_end`, `type`, `gender`, `health`, `smoker`, `sku`, `annual_rate`, `status`, `sort_order`, `update_by`, `update_time`, `featured`, `country_category`, `flat_rate`, `year`) VALUES
(592, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 42450, 1, NULL, 1, '2018-03-20 09:23:39', 0, 'A', '0.00', ''),
(593, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 51255, 1, NULL, 1, '2018-04-05 06:43:29', 0, 'A', '0.00', ''),
(595, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 27540, 1, NULL, 1, '2018-03-20 09:22:05', 0, 'A', '0.00', ''),
(596, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 29145, 1, NULL, 1, '2018-04-05 06:42:17', 0, 'A', '0.00', ''),
(598, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 80340, 1, NULL, 1, '2018-03-20 09:19:24', 0, 'A', '0.00', ''),
(599, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 87465, 1, NULL, 1, '2018-04-05 06:38:39', 0, 'A', '0.00', ''),
(601, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 22440, 1, NULL, 1, '2018-03-20 09:17:37', 0, 'A', '0.00', ''),
(604, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 63660, 1, NULL, 1, '2018-03-20 09:16:09', 0, 'A', '0.00', ''),
(605, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 76845, 1, NULL, 1, '2018-04-05 06:36:00', 0, 'A', '0.00', ''),
(607, 250000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 145, 1, NULL, 1, '2018-03-20 09:13:16', 0, 'A', '0.00', ''),
(610, 250000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 365, 1, NULL, 1, '2018-03-20 09:05:00', 0, 'A', '0.00', ''),
(613, 250000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 133, 1, NULL, 1, '2018-03-20 09:03:22', 0, 'A', '0.00', ''),
(616, 250000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 300, 1, NULL, 1, '2018-03-20 09:02:01', 0, 'A', '0.00', ''),
(619, 250000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 220, 1, NULL, 1, '2018-03-20 09:00:02', 0, 'A', '0.00', ''),
(622, 250000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 543, 1, NULL, 1, '2018-03-20 08:58:47', 0, 'A', '0.00', ''),
(625, 250000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 193, 1, NULL, 1, '2018-03-20 08:57:26', 0, 'A', '0.00', ''),
(628, 250000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 450, 1, NULL, 1, '2018-03-20 08:55:58', 0, 'A', '0.00', ''),
(631, 250000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 300, 1, NULL, 1, '2018-03-20 08:52:38', 0, 'A', '0.00', ''),
(634, 250000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 853, 1, NULL, 1, '2018-03-20 08:49:34', 0, 'A', '0.00', ''),
(636, 250000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 258, 1, NULL, 1, '2018-03-20 08:45:45', 0, 'A', '0.00', ''),
(638, 250000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 623, 1, NULL, 1, '2018-03-20 08:42:10', 0, 'A', '0.00', ''),
(640, 500000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 180, 1, NULL, 1, '2018-03-20 08:38:37', 0, 'A', '0.00', ''),
(641, 500000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 240, 1, NULL, 1, '2018-04-05 06:31:09', 0, 'A', '0.00', ''),
(643, 500000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 645, 1, NULL, 1, '2018-03-20 08:34:32', 0, 'A', '0.00', ''),
(644, 500000, 30, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 690, 1, NULL, 1, '2018-04-05 06:30:37', 0, 'A', '0.00', ''),
(646, 500000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 160, 1, NULL, 1, '2018-03-20 08:31:00', 0, 'A', '0.00', ''),
(647, 500000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 195, 1, NULL, 1, '2018-04-05 06:29:50', 0, 'A', '0.00', ''),
(649, 500000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 530, 1, NULL, 1, '2018-03-20 08:26:39', 0, 'A', '0.00', ''),
(650, 500000, 30, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 555, 1, NULL, 1, '2018-04-05 06:29:12', 0, 'A', '0.00', ''),
(652, 500000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 345, 1, NULL, 1, '2018-03-20 08:22:27', 0, 'A', '0.00', ''),
(653, 500000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 305, 1, NULL, 1, '2018-04-05 06:28:09', 0, 'A', '0.00', ''),
(655, 500000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 995, 1, NULL, 1, '2018-03-20 08:17:28', 0, 'A', '0.00', ''),
(656, 500000, 30, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1120, 1, NULL, 1, '2018-04-05 06:27:40', 0, 'A', '0.00', ''),
(658, 500000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 290, 1, NULL, 1, '2018-03-20 08:12:32', 0, 'A', '0.00', ''),
(659, 500000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 265, 1, NULL, 1, '2018-04-05 06:26:46', 0, 'A', '0.00', ''),
(661, 500000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 820, 1, NULL, 1, '2018-03-20 08:13:55', 0, 'A', '0.00', ''),
(662, 500000, 30, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 980, 1, NULL, 1, '2018-04-05 06:26:04', 0, 'A', '0.00', ''),
(664, 500000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 515, 1, NULL, 1, '2018-03-20 08:07:01', 0, 'A', '0.00', ''),
(666, 500000, 30, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1620, 1, NULL, 1, '2018-03-20 08:04:21', 0, 'A', '0.00', ''),
(668, 500000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 435, 1, NULL, 1, '2018-03-20 07:58:16', 0, 'A', '0.00', ''),
(670, 500000, 30, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1175, 1, NULL, 1, '2018-03-20 07:53:41', 0, 'A', '0.00', ''),
(672, 250000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 193, 1, NULL, 1, '2018-03-20 07:49:40', 0, 'A', '0.00', ''),
(675, 250000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 530, 1, NULL, 1, '2018-03-20 07:46:41', 0, 'A', '0.00', ''),
(678, 250000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 170, 1, NULL, 1, '2018-03-20 07:44:59', 0, 'A', '0.00', ''),
(681, 250000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 415, 1, NULL, 1, '2018-03-20 07:42:44', 0, 'A', '0.00', ''),
(684, 250000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 293, 1, NULL, 1, '2018-03-20 07:39:21', 0, 'A', '0.00', ''),
(687, 250000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 795, 1, NULL, 1, '2018-03-20 07:37:35', 0, 'A', '0.00', ''),
(690, 250000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 253, 1, NULL, 1, '2018-03-20 07:35:47', 0, 'A', '0.00', ''),
(693, 250000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 725, 1, NULL, 1, '2018-03-20 07:33:11', 0, 'A', '0.00', ''),
(696, 250000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 425, 1, NULL, 1, '2018-03-20 07:28:54', 0, 'A', '0.00', ''),
(698, 250000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1218, 1, NULL, 1, '2018-03-20 07:27:35', 0, 'A', '0.00', ''),
(700, 250000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 358, 1, NULL, 1, '2018-03-20 07:25:57', 0, 'A', '0.00', ''),
(702, 250000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 923, 1, NULL, 1, '2018-03-20 07:24:08', 0, 'A', '0.00', ''),
(704, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 260, 1, NULL, 1, '2018-03-20 07:21:03', 0, 'A', '0.00', ''),
(705, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 290, 1, NULL, 1, '2018-04-05 06:20:46', 0, 'A', '0.00', ''),
(707, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 885, 1, NULL, 1, '2018-03-20 07:19:50', 0, 'A', '0.00', ''),
(708, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 980, 1, NULL, 1, '2018-04-05 06:19:55', 0, 'A', '0.00', ''),
(710, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 225, 1, NULL, 1, '2018-03-20 07:18:16', 0, 'A', '0.00', ''),
(711, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 245, 1, NULL, 1, '2018-04-05 06:18:35', 0, 'A', '0.00', ''),
(713, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 715, 1, NULL, 1, '2018-03-20 07:15:35', 0, 'A', '0.00', ''),
(714, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 860, 1, NULL, 1, '2018-04-05 06:17:34', 0, 'A', '0.00', ''),
(716, 500000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 490, 1, NULL, 1, '2018-03-20 07:11:05', 0, 'A', '0.00', ''),
(717, 500000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 410, 1, NULL, 1, '2018-04-05 06:16:54', 0, 'A', '0.00', ''),
(719, 500000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1450, 1, NULL, 1, '2018-03-20 07:09:28', 0, 'A', '0.00', ''),
(720, 500000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1645, 1, NULL, 1, '2018-04-05 06:15:39', 0, 'A', '0.00', ''),
(722, 500000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 405, 1, NULL, 1, '2018-03-20 07:07:56', 0, 'A', '0.00', ''),
(723, 500000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 380, 1, NULL, 1, '2018-04-05 06:14:58', 0, 'A', '0.00', ''),
(725, 500000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1185, 1, NULL, 1, '2018-03-20 06:55:26', 0, 'A', '0.00', ''),
(726, 500000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1335, 1, NULL, 1, '2018-04-05 06:14:03', 0, 'A', '0.00', ''),
(728, 500000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 755, 1, NULL, 1, '2018-03-20 06:52:26', 0, 'A', '0.00', ''),
(730, 500000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2350, 1, NULL, 1, '2018-03-20 06:47:56', 0, 'A', '0.00', ''),
(732, 500000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 630, 1, NULL, 1, '2018-03-20 06:46:30', 0, 'A', '0.00', ''),
(734, 500000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1705, 1, NULL, 1, '2018-03-20 06:45:06', 0, 'A', '0.00', ''),
(736, 250000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 245, 1, NULL, 1, '2018-03-20 06:38:12', 0, 'A', '0.00', ''),
(739, 250000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 825, 1, NULL, 1, '2018-03-20 06:35:14', 0, 'A', '0.00', ''),
(742, 250000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 213, 1, NULL, 1, '2018-03-20 06:26:44', 0, 'A', '0.00', ''),
(745, 250000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 633, 1, NULL, 1, '2018-03-20 06:22:03', 0, 'A', '0.00', ''),
(748, 250000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 400, 1, NULL, 1, '2018-03-20 06:15:37', 0, 'A', '0.00', ''),
(751, 250000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1225, 1, NULL, 1, '2018-03-20 06:13:15', 0, 'A', '0.00', ''),
(754, 250000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 330, 1, NULL, 1, '2018-03-20 06:10:39', 0, 'A', '0.00', ''),
(757, 250000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1003, 1, NULL, 1, '2018-03-20 06:06:39', 0, 'A', '0.00', ''),
(760, 250000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 628, 1, NULL, 1, '2018-03-20 06:09:14', 0, 'A', '0.00', ''),
(762, 250000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1918, 1, NULL, 1, '2018-03-20 06:08:08', 0, 'A', '0.00', ''),
(764, 250000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 518, 1, NULL, 1, '2018-03-20 17:59:10', 0, 'A', '0.00', ''),
(766, 250000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1438, 1, NULL, 1, '2018-03-20 17:56:25', 0, 'A', '0.00', ''),
(768, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 370, 1, NULL, 1, '2018-03-18 08:53:45', 0, 'A', '0.00', ''),
(769, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 360, 1, NULL, 1, '2018-04-05 06:08:12', 0, 'A', '0.00', ''),
(771, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1430, 1, NULL, 1, '2018-03-18 08:52:58', 0, 'A', '0.00', ''),
(772, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1500, 1, NULL, 1, '2018-04-05 06:07:36', 0, 'A', '0.00', ''),
(774, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 305, 1, NULL, 1, '2018-03-18 08:51:21', 0, 'A', '0.00', ''),
(775, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 350, 1, NULL, 1, '2018-04-05 06:06:09', 0, 'A', '0.00', ''),
(777, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1080, 1, NULL, 1, '2018-03-18 08:50:43', 0, 'A', '0.00', ''),
(778, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1345, 1, NULL, 1, '2018-04-05 06:06:51', 0, 'A', '0.00', ''),
(780, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 690, 1, NULL, 1, '2018-03-18 08:49:04', 0, 'A', '0.00', ''),
(781, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 595, 1, NULL, 1, '2018-04-05 06:00:18', 0, 'A', '0.00', ''),
(783, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2265, 1, NULL, 1, '2018-03-18 08:48:26', 0, 'A', '0.00', ''),
(784, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2650, 1, NULL, 1, '2018-04-05 17:59:30', 0, 'A', '0.00', ''),
(786, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 560, 1, NULL, 1, '2018-03-18 08:29:22', 0, 'A', '0.00', ''),
(787, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 535, 1, NULL, 1, '2018-04-05 17:58:16', 0, 'A', '0.00', ''),
(789, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1805, 1, NULL, 1, '2018-03-18 08:28:35', 0, 'A', '0.00', ''),
(790, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2115, 1, NULL, 1, '2018-04-05 17:57:10', 0, 'A', '0.00', ''),
(792, 500000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1155, 1, NULL, 1, '2018-03-18 08:27:05', 0, 'A', '0.00', ''),
(794, 500000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3730, 1, NULL, 1, '2018-03-18 08:26:23', 0, 'A', '0.00', ''),
(796, 500000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 940, 1, NULL, 1, '2018-03-18 08:24:58', 0, 'A', '0.00', ''),
(798, 500000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2685, 1, NULL, 1, '2018-03-18 08:23:42', 0, 'A', '0.00', ''),
(800, 250000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 353, 1, NULL, 1, '2018-03-18 08:21:38', 0, 'A', '0.00', ''),
(803, 250000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1328, 1, NULL, 1, '2018-03-18 08:20:52', 0, 'A', '0.00', ''),
(806, 250000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 295, 1, NULL, 1, '2018-03-18 08:17:27', 0, 'A', '0.00', ''),
(809, 250000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1018, 1, NULL, 1, '2018-03-18 08:16:43', 0, 'A', '0.00', ''),
(812, 250000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 578, 1, NULL, 1, '2018-03-18 08:14:53', 0, 'A', '0.00', ''),
(815, 250000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1910, 1, NULL, 1, '2018-03-18 08:14:14', 0, 'A', '0.00', ''),
(818, 250000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 470, 1, NULL, 1, '2018-03-18 08:12:52', 0, 'A', '0.00', ''),
(821, 250000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1548, 1, NULL, 1, '2018-03-18 08:12:11', 0, 'A', '0.00', ''),
(824, 250000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 998, 1, NULL, 1, '2018-03-18 08:10:39', 0, 'A', '0.00', ''),
(826, 250000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2928, 1, NULL, 1, '2018-03-18 08:09:59', 0, 'A', '0.00', ''),
(828, 250000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 820, 1, NULL, 1, '2018-03-18 08:08:14', 0, 'A', '0.00', ''),
(830, 250000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2258, 1, NULL, 1, '2018-03-18 08:06:50', 0, 'A', '0.00', ''),
(832, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 565, 1, NULL, 1, '2018-03-18 08:05:06', 0, 'A', '0.00', ''),
(833, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 525, 1, NULL, 1, '2018-03-28 08:30:11', 0, 'A', '0.00', ''),
(835, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2355, 1, NULL, 1, '2018-03-18 08:04:19', 0, 'A', '0.00', ''),
(836, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2175, 1, NULL, 1, '2018-03-28 08:29:15', 0, 'A', '0.00', ''),
(838, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 455, 1, NULL, 1, '2018-03-18 08:02:43', 0, 'A', '0.00', ''),
(839, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 505, 1, NULL, 1, '2018-03-28 08:28:11', 0, 'A', '0.00', ''),
(841, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1775, 1, NULL, 1, '2018-03-18 08:02:07', 0, 'A', '0.00', ''),
(842, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2070, 1, NULL, 1, '2018-03-28 08:27:20', 0, 'A', '0.00', ''),
(844, 500000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1035, 1, NULL, 1, '2018-03-18 08:00:12', 0, 'A', '0.00', ''),
(845, 500000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 900, 1, NULL, 1, '2018-03-28 08:26:06', 0, 'A', '0.00', ''),
(847, 500000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3535, 1, NULL, 1, '2018-03-18 07:59:14', 0, 'A', '0.00', ''),
(848, 500000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3960, 1, NULL, 1, '2018-03-28 08:25:19', 0, 'A', '0.00', ''),
(850, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 825, 1, NULL, 1, '2018-03-18 07:57:58', 0, 'A', '0.00', ''),
(851, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 800, 1, NULL, 1, '2018-03-28 08:24:20', 0, 'A', '0.00', ''),
(853, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2835, 1, NULL, 1, '2018-03-18 07:57:03', 0, 'A', '0.00', ''),
(854, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3300, 1, NULL, 1, '2018-03-28 08:23:37', 0, 'A', '0.00', ''),
(856, 500000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1875, 1, NULL, 1, '2018-03-18 07:55:42', 0, 'A', '0.00', ''),
(858, 500000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5740, 1, NULL, 1, '2018-03-18 07:55:02', 0, 'A', '0.00', ''),
(860, 500000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1535, 1, NULL, 1, '2018-03-18 07:52:22', 0, 'A', '0.00', ''),
(862, 500000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4290, 1, NULL, 1, '2018-03-18 07:51:54', 0, 'A', '0.00', ''),
(864, 250000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 545, 1, NULL, 1, '2018-03-18 07:49:13', 0, 'A', '0.00', ''),
(867, 250000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2143, 1, NULL, 1, '2018-03-18 07:48:28', 0, 'A', '0.00', ''),
(870, 250000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 445, 1, NULL, 1, '2018-03-18 07:46:59', 0, 'A', '0.00', ''),
(873, 250000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1658, 1, NULL, 1, '2018-03-18 07:46:06', 0, 'A', '0.00', ''),
(876, 250000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 885, 1, NULL, 1, '2018-03-18 07:43:44', 0, 'A', '0.00', ''),
(879, 250000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3038, 1, NULL, 1, '2018-03-18 07:43:12', 0, 'A', '0.00', ''),
(882, 250000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 713, 1, NULL, 1, '2018-03-18 07:41:58', 0, 'A', '0.00', ''),
(885, 250000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2415, 1, NULL, 1, '2018-03-18 07:40:17', 0, 'A', '0.00', ''),
(887, 250000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1665, 1, NULL, 1, '2018-03-18 07:33:07', 0, 'A', '0.00', ''),
(889, 250000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1413, 1, NULL, 1, '2018-03-18 07:32:04', 0, 'A', '0.00', ''),
(892, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 910, 1, NULL, 1, '2018-03-18 07:30:07', 0, 'A', '0.00', ''),
(893, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 875, 1, NULL, 1, '2018-03-28 08:16:19', 0, 'A', '0.00', ''),
(895, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3835, 1, NULL, 1, '2018-03-18 07:29:30', 0, 'A', '0.00', ''),
(896, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3410, 1, NULL, 1, '2018-03-28 08:15:26', 0, 'A', '0.00', ''),
(898, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 725, 1, NULL, 1, '2018-03-18 07:28:16', 0, 'A', '0.00', ''),
(899, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 670, 1, NULL, 1, '2018-03-28 08:12:59', 0, 'A', '0.00', ''),
(901, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2940, 1, NULL, 1, '2018-03-18 07:27:39', 0, 'A', '0.00', ''),
(902, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3125, 1, NULL, 1, '2018-03-28 08:11:54', 0, 'A', '0.00', ''),
(904, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1615, 1, NULL, 1, '2018-03-18 07:25:30', 0, 'A', '0.00', ''),
(905, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1450, 1, NULL, 1, '2018-03-22 08:12:43', 0, 'A', '0.00', ''),
(907, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5645, 1, NULL, 1, '2018-03-18 07:24:44', 0, 'A', '0.00', ''),
(908, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6165, 1, NULL, 1, '2018-03-22 08:11:45', 0, 'A', '0.00', ''),
(910, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1280, 1, NULL, 1, '2018-03-18 07:23:22', 0, 'A', '0.00', ''),
(911, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1130, 1, NULL, 1, '2018-03-22 08:10:43', 0, 'A', '0.00', ''),
(913, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4470, 1, NULL, 1, '2018-03-18 07:22:10', 0, 'A', '0.00', ''),
(914, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5075, 1, NULL, 1, '2018-03-22 08:09:50', 0, 'A', '0.00', ''),
(915, 500000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3185, 1, NULL, 1, '2018-03-18 07:20:37', 0, 'A', '0.00', ''),
(917, 500000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2695, 1, NULL, 1, '2018-03-18 07:19:28', 0, 'A', '0.00', ''),
(920, 250000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 840, 1, NULL, 1, '2018-03-18 07:16:59', 0, 'A', '0.00', ''),
(923, 250000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3778, 1, NULL, 1, '2018-03-18 07:15:34', 0, 'A', '0.00', ''),
(926, 250000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 700, 1, NULL, 1, '2018-03-18 07:14:09', 0, 'A', '0.00', ''),
(929, 250000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2645, 1, NULL, 1, '2018-03-18 07:12:47', 0, 'A', '0.00', ''),
(932, 250000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1455, 1, NULL, 1, '2018-03-18 07:10:56', 0, 'A', '0.00', ''),
(935, 250000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4760, 1, NULL, 1, '2018-03-16 10:24:15', 0, 'A', '0.00', ''),
(938, 250000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1180, 1, NULL, 1, '2018-03-16 10:23:00', 0, 'A', '0.00', ''),
(941, 250000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3785, 1, NULL, 1, '2018-03-16 10:21:58', 0, 'A', '0.00', ''),
(946, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1460, 1, NULL, 1, '2018-03-16 10:20:17', 0, 'A', '0.00', ''),
(947, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1375, 1, NULL, 1, '2018-03-22 07:57:09', 0, 'A', '0.00', ''),
(949, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6135, 1, NULL, 1, '2018-03-16 10:19:11', 0, 'A', '0.00', ''),
(950, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5085, 1, NULL, 1, '2018-03-22 07:55:19', 0, 'A', '0.00', ''),
(952, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1200, 1, NULL, 1, '2018-03-16 10:18:03', 0, 'A', '0.00', ''),
(953, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 980, 1, NULL, 1, '2018-03-22 07:53:46', 0, 'A', '0.00', ''),
(955, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4775, 1, NULL, 1, '2018-03-16 10:16:43', 0, 'A', '0.00', ''),
(956, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4315, 1, NULL, 1, '2018-03-22 07:52:48', 0, 'A', '0.00', ''),
(958, 500000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2710, 1, NULL, 1, '2018-03-16 10:15:32', 0, 'A', '0.00', ''),
(959, 500000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2670, 1, NULL, 1, '2018-03-22 07:45:57', 0, 'A', '0.00', ''),
(961, 500000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8915, 1, NULL, 1, '2018-03-16 10:14:18', 0, 'A', '0.00', ''),
(962, 500000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8970, 1, NULL, 1, '2018-03-22 07:45:04', 0, 'A', '0.00', ''),
(964, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2180, 1, NULL, 1, '2018-03-16 10:13:14', 0, 'A', '0.00', ''),
(965, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1865, 1, NULL, 1, '2018-03-22 07:44:07', 0, 'A', '0.00', ''),
(967, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7070, 1, NULL, 1, '2018-03-16 10:08:28', 0, 'A', '0.00', ''),
(968, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7830, 1, NULL, 1, '2018-03-22 07:42:54', 0, 'A', '0.00', ''),
(972, 250000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1423, 1, NULL, 1, '2018-03-16 10:06:35', 0, 'A', '0.00', ''),
(975, 250000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5428, 1, NULL, 1, '2018-03-16 10:05:20', 0, 'A', '0.00', ''),
(978, 250000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1170, 1, NULL, 1, '2018-03-16 10:03:49', 0, 'A', '0.00', ''),
(981, 250000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4303, 1, NULL, 1, '2018-03-16 10:01:59', 0, 'A', '0.00', ''),
(984, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2550, 1, NULL, 1, '2018-03-16 10:00:20', 0, 'A', '0.00', ''),
(985, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2375, 1, NULL, 1, '2018-03-22 07:31:19', 0, 'A', '0.00', ''),
(987, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9930, 1, NULL, 1, '2018-03-16 09:59:08', 0, 'A', '0.00', ''),
(988, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8425, 1, NULL, 1, '2018-03-22 07:30:02', 0, 'A', '0.00', ''),
(990, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2075, 1, NULL, 1, '2018-03-16 09:57:48', 0, 'A', '0.00', ''),
(991, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1475, 1, NULL, 1, '2018-03-22 07:28:45', 0, 'A', '0.00', ''),
(993, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7840, 1, NULL, 1, '2018-03-16 09:56:36', 0, 'A', '0.00', ''),
(994, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6375, 1, NULL, 1, '2018-03-22 07:27:41', 0, 'A', '0.00', ''),
(996, 250000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2568, 1, NULL, 1, '2018-03-16 09:54:59', 0, 'A', '0.00', ''),
(999, 250000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7475, 1, NULL, 1, '2018-03-16 09:53:52', 0, 'A', '0.00', ''),
(1002, 250000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2103, 1, NULL, 1, '2018-03-16 09:52:29', 0, 'A', '0.00', ''),
(1005, 250000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5943, 1, NULL, 1, '2018-03-16 09:50:28', 0, 'A', '0.00', ''),
(1008, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4840, 1, NULL, 1, '2018-03-16 09:49:00', 0, 'A', '0.00', ''),
(1009, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5115, 1, NULL, 1, '2018-03-22 07:17:36', 0, 'A', '0.00', ''),
(1011, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 14040, 1, NULL, 1, '2018-03-16 09:47:52', 0, 'A', '0.00', ''),
(1012, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 14640, 1, NULL, 1, '2018-03-22 07:16:38', 0, 'A', '0.00', ''),
(1014, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3490, 1, NULL, 1, '2018-03-16 09:46:40', 0, 'A', '0.00', ''),
(1015, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3215, 1, NULL, 1, '2018-03-22 07:16:00', 0, 'A', '0.00', ''),
(1017, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11140, 1, NULL, 1, '2018-03-16 09:45:41', 0, 'A', '0.00', ''),
(1018, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 12910, 1, NULL, 1, '2018-03-22 07:15:11', 0, 'A', '0.00', ''),
(1021, 250000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2460, 1, NULL, 1, '2018-03-16 09:42:39', 0, 'A', '0.00', ''),
(1024, 250000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8410, 1, NULL, 1, '2018-03-16 09:39:45', 0, 'A', '0.00', ''),
(1027, 250000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1965, 1, NULL, 1, '2018-03-16 09:38:29', 0, 'A', '0.00', ''),
(1030, 250000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6463, 1, NULL, 1, '2018-03-16 09:37:21', 0, 'A', '0.00', ''),
(1033, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4475, 1, NULL, 1, '2018-03-16 09:35:33', 0, 'A', '0.00', ''),
(1034, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3735, 1, NULL, 1, '2018-03-22 07:04:17', 0, 'A', '0.00', ''),
(1036, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 15440, 1, NULL, 1, '2018-03-16 09:34:02', 0, 'A', '0.00', ''),
(1037, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12765, 1, NULL, 1, '2018-03-22 07:03:13', 0, 'A', '0.00', ''),
(1039, 500000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3555, 1, NULL, 1, '2018-03-16 09:33:01', 0, 'A', '0.00', ''),
(1040, 500000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2395, 1, NULL, 1, '2018-03-22 07:01:20', 0, 'A', '0.00', ''),
(1042, 500000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11835, 1, NULL, 1, '2018-03-16 09:31:33', 0, 'A', '0.00', ''),
(1043, 500000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11420, 1, NULL, 1, '2018-03-22 07:00:37', 0, 'A', '0.00', ''),
(1045, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8290, 1, NULL, 1, '2018-03-16 09:30:02', 0, 'A', '0.00', ''),
(1046, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7285, 1, NULL, 1, '2018-03-22 06:56:06', 0, 'A', '0.00', ''),
(1048, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 28990, 1, NULL, 1, '2018-03-16 09:27:54', 0, 'A', '0.00', ''),
(1049, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 25405, 1, NULL, 1, '2018-03-22 06:55:07', 0, 'A', '0.00', ''),
(1051, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6530, 1, NULL, 1, '2018-03-16 09:26:19', 0, 'A', '0.00', ''),
(1052, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4325, 1, NULL, 1, '2018-03-22 06:54:20', 0, 'A', '0.00', ''),
(1054, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 22160, 1, NULL, 1, '2018-03-16 09:24:52', 0, 'A', '0.00', ''),
(1055, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 22765, 1, NULL, 1, '2018-03-22 06:52:50', 0, 'A', '0.00', ''),
(1057, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 16550, 1, NULL, 1, '2018-03-16 09:23:36', 0, 'A', '0.00', ''),
(1058, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 14495, 1, NULL, 1, '2018-03-22 06:34:44', 0, 'A', '0.00', ''),
(1060, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 57950, 1, NULL, 1, '2018-03-16 09:22:30', 0, 'A', '0.00', ''),
(1061, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 50735, 1, NULL, 1, '2018-03-22 06:33:53', 0, 'A', '0.00', ''),
(1063, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 13030, 1, NULL, 1, '2018-03-16 09:21:20', 0, 'A', '0.00', ''),
(1064, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8575, 1, NULL, 1, '2018-03-22 06:33:04', 0, 'A', '0.00', ''),
(1066, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 44290, 1, NULL, 1, '2018-03-16 09:20:11', 0, 'A', '0.00', ''),
(1067, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 40455, 1, NULL, 1, '2018-03-22 06:32:09', 0, 'A', '0.00', ''),
(1069, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 24810, 1, NULL, 1, '2018-03-16 08:58:29', 0, 'A', '0.00', ''),
(1070, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 21705, 1, NULL, 1, '2018-03-22 06:28:32', 0, 'A', '0.00', ''),
(1072, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 86910, 1, NULL, 1, '2018-03-16 08:57:26', 0, 'A', '0.00', ''),
(1073, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 76065, 1, NULL, 1, '2018-03-22 06:26:40', 0, 'A', '0.00', ''),
(1075, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 19530, 1, NULL, 1, '2018-03-16 08:55:45', 0, 'A', '0.00', ''),
(1076, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 12825, 1, NULL, 1, '2018-03-21 15:00:24', 0, 'A', '0.00', ''),
(1078, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 66420, 1, NULL, 1, '2018-03-16 08:54:15', 0, 'A', '0.00', ''),
(1079, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 68145, 1, NULL, 1, '2018-03-21 14:57:19', 0, 'A', '0.00', ''),
(1080, 250000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4843, 1, NULL, 1, '2018-03-16 08:52:12', 0, 'A', '0.00', ''),
(1081, 250000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4020, 1, NULL, 1, '2018-03-16 08:50:34', 0, 'A', '0.00', ''),
(1082, 500000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9240, 1, NULL, 1, '2018-03-16 08:48:27', 0, 'A', '0.00', ''),
(1083, 500000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7660, 1, NULL, 1, '2018-03-16 08:46:02', 0, 'A', '0.00', ''),
(1084, 1000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 17780, 1, NULL, 1, '2018-03-16 08:44:34', 0, 'A', '0.00', ''),
(1085, 1000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 14730, 1, NULL, 1, '2018-03-16 08:41:14', 0, 'A', '0.00', ''),
(1086, 2000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 35530, 1, NULL, 1, '2018-03-16 08:39:32', 0, 'A', '0.00', ''),
(1087, 2000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 29430, 1, NULL, 1, '2018-03-16 08:38:07', 0, 'A', '0.00', ''),
(1088, 3000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 44130, 1, NULL, 1, '2018-03-16 08:36:39', 0, 'A', '0.00', ''),
(1089, 3000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 53280, 1, NULL, 1, '2018-03-16 08:34:45', 0, 'A', '0.00', ''),
(1091, 250000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3953, 1, NULL, 1, '2018-03-16 08:31:49', 0, 'A', '0.00', ''),
(1094, 250000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11768, 1, NULL, 1, '2018-03-16 08:27:14', 0, 'A', '0.00', ''),
(1096, 250000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3163, 1, NULL, 1, '2018-03-16 08:19:16', 0, 'A', '0.00', ''),
(1099, 250000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8698, 1, NULL, 1, '2018-03-16 08:17:54', 0, 'A', '0.00', ''),
(1102, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7265, 1, NULL, 1, '2018-03-16 08:15:52', 0, 'A', '0.00', ''),
(1103, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7755, 1, NULL, 1, '2018-03-21 14:49:25', 0, 'A', '0.00', ''),
(1105, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 21540, 1, NULL, 1, '2018-03-16 08:14:18', 0, 'A', '0.00', ''),
(1106, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 24170, 1, NULL, 1, '2018-03-21 14:47:36', 0, 'A', '0.00', ''),
(1107, 500000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5785, 1, NULL, 1, '2018-03-16 08:12:52', 0, 'A', '0.00', ''),
(1108, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5525, 1, NULL, 1, '2018-03-21 14:45:36', 0, 'A', '0.00', ''),
(1110, 500000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 15980, 1, NULL, 1, '2018-03-16 08:11:09', 0, 'A', '0.00', ''),
(1111, 500000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 20135, 1, NULL, 1, '2018-03-21 14:44:06', 0, 'A', '0.00', ''),
(1113, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 13530, 1, NULL, 1, '2018-03-16 08:08:57', 0, 'A', '0.00', ''),
(1114, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 15205, 1, NULL, 1, '2018-03-21 14:28:50', 0, 'A', '0.00', ''),
(1116, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 40490, 1, NULL, 1, '2018-03-16 08:07:17', 0, 'A', '0.00', ''),
(1117, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 48175, 1, NULL, 1, '2018-03-21 14:22:54', 0, 'A', '0.00', ''),
(1118, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 10730, 1, NULL, 1, '2018-03-16 08:05:48', 0, 'A', '0.00', ''),
(1119, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 10055, 1, NULL, 1, '2018-03-21 14:19:47', 0, 'A', '0.00', ''),
(1121, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 29970, 1, NULL, 1, '2018-03-16 08:04:29', 0, 'A', '0.00', ''),
(1122, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 40195, 1, NULL, 1, '2018-03-21 14:17:07', 0, 'A', '0.00', ''),
(1124, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 27030, 1, NULL, 1, '2018-03-16 08:02:44', 0, 'A', '0.00', ''),
(1125, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 30335, 1, NULL, 1, '2018-03-21 14:12:24', 0, 'A', '0.00', ''),
(1127, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 80950, 1, NULL, 1, '2018-03-16 08:01:01', 0, 'A', '0.00', ''),
(1128, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 96275, 1, NULL, 1, '2018-03-21 14:11:49', 0, 'A', '0.00', ''),
(1129, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 21430, 1, NULL, 1, '2018-03-16 07:58:59', 0, 'A', '0.00', ''),
(1130, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 20035, 1, NULL, 1, '2018-03-21 14:11:10', 0, 'A', '0.00', ''),
(1132, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 59910, 1, NULL, 1, '2018-03-16 07:57:15', 0, 'A', '0.00', ''),
(1133, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 80315, 1, NULL, 1, '2018-03-21 14:10:36', 0, 'A', '0.00', ''),
(1135, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 40530, 1, NULL, 1, '2018-03-16 07:55:23', 0, 'A', '0.00', ''),
(1136, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 46465, 1, NULL, 1, '2018-03-21 14:06:05', 0, 'A', '0.00', ''),
(1138, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 121410, 1, NULL, 1, '2018-03-16 07:53:33', 0, 'A', '0.00', ''),
(1139, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 121410, 1, NULL, 1, '2018-03-16 07:52:27', 0, 'A', '0.00', ''),
(1140, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 32130, 1, NULL, 1, '2018-03-16 07:51:12', 0, 'A', '0.00', ''),
(1141, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 32130, 1, NULL, 1, '2018-03-16 07:48:49', 0, 'A', '0.00', ''),
(1143, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 89850, 1, NULL, 1, '2018-03-16 07:47:32', 0, 'A', '0.00', ''),
(1144, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 120435, 1, NULL, 1, '2018-03-21 14:03:47', 0, 'A', '0.00', ''),
(1145, 250000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8408, 1, NULL, 1, '2018-03-16 07:44:50', 0, 'A', '0.00', ''),
(1146, 250000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 24520, 1, NULL, 1, '2018-03-16 07:43:44', 0, 'A', '0.00', ''),
(1147, 250000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7028, 1, NULL, 1, '2018-03-16 07:41:13', 0, 'A', '0.00', ''),
(1148, 250000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17090, 1, NULL, 1, '2018-03-16 07:38:29', 0, 'A', '0.00', ''),
(1149, 500000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 15665, 1, NULL, 1, '2018-03-16 07:37:11', 0, 'A', '0.00', ''),
(1150, 500000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 48500, 1, NULL, 1, '2018-03-16 07:36:07', 0, 'A', '0.00', ''),
(1151, 500000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 13040, 1, NULL, 1, '2018-03-16 07:35:02', 0, 'A', '0.00', ''),
(1152, 500000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 33715, 1, NULL, 1, '2018-03-16 07:34:00', 0, 'A', '0.00', ''),
(1153, 1000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 30100, 1, NULL, 1, '2018-03-16 07:32:33', 0, 'A', '0.00', ''),
(1154, 1000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 92610, 1, NULL, 1, '2018-03-16 07:31:35', 0, 'A', '0.00', ''),
(1155, 1000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 24610, 1, NULL, 1, '2018-03-16 07:30:14', 0, 'A', '0.00', ''),
(1156, 1000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 66550, 1, NULL, 1, '2018-03-16 07:28:50', 0, 'A', '0.00', ''),
(1157, 2000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 60170, 1, NULL, 1, '2018-03-16 07:27:11', 0, 'A', '0.00', ''),
(1158, 2000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 185190, 1, NULL, 1, '2018-03-16 07:25:54', 0, 'A', '0.00', ''),
(1159, 2000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 49190, 1, NULL, 1, '2018-03-16 07:22:46', 0, 'A', '0.00', ''),
(1160, 2000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 133070, 1, NULL, 1, '2018-03-16 07:21:12', 0, 'A', '0.00', ''),
(1161, 3000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 90240, 1, NULL, 1, '2018-03-16 07:17:44', 0, 'A', '0.00', ''),
(1162, 3000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 277770, 1, NULL, 1, '2018-03-16 07:16:42', 0, 'A', '0.00', ''),
(1163, 3000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 73770, 1, NULL, 1, '2018-03-16 07:14:55', 0, 'A', '0.00', ''),
(1165, 2000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5410, 1, NULL, 1, '2018-03-16 07:12:56', 0, 'A', '0.00', ''),
(1166, 2000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4330, 1, NULL, 1, '2018-03-16 07:11:51', 0, 'A', '0.00', ''),
(1167, 2000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9170, 1, NULL, 1, '2018-03-16 07:10:27', 0, 'A', '0.00', ''),
(1168, 2000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6470, 1, NULL, 1, '2018-03-16 07:04:18', 0, 'A', '0.00', ''),
(1169, 250000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 515, 1, NULL, 1, '2018-03-26 07:31:38', 0, 'C', '0.00', '10'),
(1170, 250000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 710, 1, NULL, 1, '2018-03-26 07:32:05', 0, 'C', '0.00', '10'),
(1171, 250000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 500, 1, NULL, 1, '2018-03-26 07:32:58', 0, 'C', '0.00', '10'),
(1172, 250000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 645, 1, NULL, 1, '2018-03-23 10:04:50', 0, 'C', '0.00', ''),
(1173, 250000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 743, 1, NULL, 1, '2018-03-26 07:33:54', 0, 'C', '0.00', '20'),
(1174, 250000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 533, 1, NULL, 1, '2018-03-26 07:34:31', 0, 'C', '0.00', '20'),
(1175, 250000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 830, 1, NULL, 1, '2018-03-26 07:34:46', 0, 'C', '0.00', '20'),
(1176, 250000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 558, 1, NULL, 1, '2018-03-26 07:35:12', 0, 'C', '0.00', '20'),
(1177, 250000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 890, 1, NULL, 1, '2018-03-26 07:48:07', 0, 'C', '0.00', '30'),
(1178, 250000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 578, 1, NULL, 1, '2018-03-26 07:49:03', 0, 'C', '0.00', '30'),
(1179, 250000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1098, 1, NULL, 1, '2018-03-26 07:52:00', 0, 'C', '0.00', '30'),
(1180, 250000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 610, 1, NULL, 1, '2018-03-26 07:51:32', 0, 'C', '0.00', '30'),
(1181, 500000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1220, 1, NULL, 1, '2018-03-26 07:53:59', 0, 'C', '0.00', '10'),
(1182, 500000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 890, 1, NULL, 1, '2018-03-26 07:55:00', 0, 'C', '0.00', '10'),
(1183, 500000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1350, 1, NULL, 1, '2018-03-26 07:56:15', 0, 'C', '0.00', '10'),
(1184, 500000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 920, 1, NULL, 1, '2018-03-26 07:57:49', 0, 'C', '0.00', '10'),
(1185, 500000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1420, 1, NULL, 1, '2018-03-26 08:00:08', 0, 'C', '0.00', '20'),
(1186, 500000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 975, 1, NULL, 1, '2018-03-26 08:05:10', 0, 'C', '0.00', '20'),
(1187, 500000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1580, 1, NULL, 1, '2018-03-26 08:06:23', 0, 'C', '0.00', '20'),
(1188, 500000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1025, 1, NULL, 1, '2018-03-26 08:07:29', 0, 'C', '0.00', '20'),
(1189, 500000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1700, 1, NULL, 1, '2018-03-26 08:10:37', 0, 'C', '0.00', '30'),
(1190, 500000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1075, 1, NULL, 1, '2018-03-26 08:11:50', 0, 'C', '0.00', '30'),
(1191, 500000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2050, 1, NULL, 1, '2018-03-26 08:13:06', 0, 'C', '0.00', '30'),
(1192, 500000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1145, 1, NULL, 1, '2018-03-26 08:14:42', 0, 'C', '0.00', '30');
INSERT INTO `products` (`id`, `amount`, `age_start`, `age_end`, `type`, `gender`, `health`, `smoker`, `sku`, `annual_rate`, `status`, `sort_order`, `update_by`, `update_time`, `featured`, `country_category`, `flat_rate`, `year`) VALUES
(1193, 1000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2330, 1, NULL, 1, '2018-03-26 08:18:46', 0, 'C', '0.00', ''),
(1194, 1000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 17110, 1, NULL, 1, '2018-03-26 08:19:44', 0, 'C', '0.00', ''),
(1195, 1000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2500, 1, NULL, 1, '2018-03-26 08:20:48', 0, 'C', '0.00', ''),
(1196, 1000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1750, 1, NULL, 1, '2018-03-26 08:21:38', 0, 'C', '0.00', ''),
(1197, 1000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2700, 1, NULL, 1, '2018-03-26 08:23:01', 0, 'C', '0.00', ''),
(1198, 1000000, 0, 0, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1870, 1, NULL, 1, '2018-03-26 08:23:53', 0, 'C', '0.00', ''),
(1199, 1000000, 26, 3, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3060, 1, NULL, 1, '2018-03-26 08:24:54', 0, 'C', '0.00', ''),
(1200, 1000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1970, 1, NULL, 1, '2018-03-26 08:25:47', 0, 'C', '0.00', '20'),
(1201, 1000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3290, 1, NULL, 1, '2018-03-26 08:27:15', 0, 'C', '0.00', ''),
(1202, 1000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2070, 1, NULL, 1, '2018-03-26 08:28:17', 0, 'C', '0.00', ''),
(1203, 1000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3970, 1, NULL, 1, '2018-03-26 08:29:27', 0, 'C', '0.00', ''),
(1204, 1000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2190, 1, NULL, 1, '2018-03-26 08:30:21', 0, 'C', '0.00', ''),
(1205, 2000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4630, 1, NULL, 1, '2018-03-26 08:33:11', 0, 'C', '0.00', ''),
(1206, 2000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3390, 1, NULL, 1, '2018-03-26 08:34:23', 0, 'C', '0.00', ''),
(1207, 2000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4970, 1, NULL, 1, '2018-03-26 08:36:01', 0, 'C', '0.00', ''),
(1208, 2000000, 0, 0, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3470, 1, NULL, 1, '2018-03-26 08:36:48', 0, 'C', '0.00', ''),
(1209, 2000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5370, 1, NULL, 1, '2018-03-26 08:46:48', 0, 'C', '0.00', ''),
(1210, 2000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3710, 1, NULL, 1, '2018-03-26 08:48:04', 0, 'C', '0.00', ''),
(1211, 2000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6090, 1, NULL, 1, '2018-03-26 08:49:16', 0, 'C', '0.00', ''),
(1212, 2000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3910, 1, NULL, 1, '2018-03-26 08:50:09', 0, 'C', '0.00', ''),
(1213, 2000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6550, 1, NULL, 1, '2018-03-26 08:54:16', 0, 'C', '0.00', ''),
(1214, 2000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4110, 1, NULL, 1, '2018-03-26 08:55:20', 0, 'C', '0.00', ''),
(1215, 2000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7910, 1, NULL, 1, '2018-03-26 08:56:16', 0, 'C', '0.00', ''),
(1216, 2000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4350, 1, NULL, 1, '2018-03-26 08:57:10', 0, 'C', '0.00', ''),
(1217, 3000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6930, 1, NULL, 1, '2018-03-26 09:01:09', 0, 'C', '0.00', ''),
(1218, 3000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5070, 1, NULL, 1, '2018-03-26 09:02:04', 0, 'C', '0.00', ''),
(1219, 3000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7440, 1, NULL, 1, '2018-03-26 09:03:01', 0, 'C', '0.00', ''),
(1220, 3000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5190, 1, NULL, 1, '2018-03-26 09:03:58', 0, 'C', '0.00', ''),
(1221, 3000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8040, 1, NULL, 1, '2018-03-26 09:05:31', 0, 'C', '0.00', ''),
(1222, 3000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5550, 1, NULL, 1, '2018-03-26 09:06:39', 0, 'C', '0.00', ''),
(1223, 3000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9120, 1, NULL, 1, '2018-03-26 09:07:34', 0, 'C', '0.00', ''),
(1224, 3000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5850, 1, NULL, 1, '2018-03-26 09:22:30', 0, 'C', '0.00', ''),
(1225, 3000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9810, 1, NULL, 1, '2018-03-26 09:23:51', 0, 'C', '0.00', ''),
(1226, 3000000, 0, 0, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6150, 1, NULL, 1, '2018-03-26 09:24:54', 0, 'C', '0.00', ''),
(1227, 3000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11850, 1, NULL, 1, '2018-03-26 09:30:38', 0, 'C', '0.00', ''),
(1228, 3000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6510, 1, NULL, 1, '2018-03-26 09:31:41', 0, 'C', '0.00', ''),
(1229, 250000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 675, 1, NULL, 1, '2018-03-26 09:33:33', 0, 'C', '0.00', ''),
(1230, 250000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 508, 1, NULL, 1, '2018-03-26 09:34:23', 0, 'C', '0.00', ''),
(1231, 250000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 740, 1, NULL, 1, '2018-03-26 09:35:13', 0, 'C', '0.00', ''),
(1232, 250000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 520, 1, NULL, 1, '2018-03-26 09:39:02', 0, 'C', '0.00', ''),
(1233, 250000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 825, 1, NULL, 1, '2018-03-26 09:40:05', 0, 'C', '0.00', ''),
(1234, 250000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 568, 1, NULL, 1, '2018-03-26 09:41:51', 0, 'C', '0.00', ''),
(1235, 250000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 918, 1, NULL, 1, '2018-03-26 09:42:42', 0, 'C', '0.00', ''),
(1236, 250000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 595, 1, NULL, 1, '2018-03-26 09:43:32', 0, 'C', '0.00', ''),
(1237, 250000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 998, 1, NULL, 1, '2018-03-26 09:44:56', 0, 'C', '0.00', ''),
(1238, 250000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 633, 1, NULL, 1, '2018-03-26 09:46:18', 0, 'C', '0.00', ''),
(1239, 250000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1228, 1, NULL, 1, '2018-03-26 09:47:26', 0, 'C', '0.00', ''),
(1240, 250000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 675, 1, NULL, 1, '2018-03-26 10:07:43', 0, 'C', '0.00', ''),
(1241, 500000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1280, 1, NULL, 1, '2018-03-26 10:41:14', 0, 'C', '0.00', ''),
(1242, 500000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 910, 1, NULL, 1, '2018-03-26 10:44:16', 0, 'C', '0.00', ''),
(1243, 500000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1395, 1, NULL, 1, '2018-03-26 10:45:40', 0, 'C', '0.00', ''),
(1244, 500000, 0, 0, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 930, 1, NULL, 1, '2018-03-26 10:47:25', 0, 'C', '0.00', ''),
(1245, 500000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1570, 1, NULL, 1, '2018-03-26 10:49:11', 0, 'C', '0.00', ''),
(1246, 500000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1040, 1, NULL, 1, '2018-03-26 10:50:03', 0, 'C', '0.00', ''),
(1247, 500000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1745, 1, NULL, 1, '2018-03-26 10:51:00', 0, 'C', '0.00', ''),
(1248, 500000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1095, 1, NULL, 1, '2018-03-26 10:52:11', 0, 'C', '0.00', ''),
(1249, 500000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1925, 1, NULL, 1, '2018-03-26 10:54:07', 0, 'C', '0.00', ''),
(1250, 500000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1185, 1, NULL, 1, '2018-03-26 11:03:03', 0, 'C', '0.00', ''),
(1251, 500000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2370, 1, NULL, 1, '2018-03-26 10:57:17', 0, 'C', '0.00', ''),
(1252, 500000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1265, 1, NULL, 1, '2018-03-26 10:56:54', 0, 'C', '0.00', ''),
(1253, 1000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2440, 1, NULL, 1, '2018-03-26 11:04:50', 0, 'C', '0.00', ''),
(1254, 1000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1730, 1, NULL, 1, '2018-03-26 11:05:46', 0, 'C', '0.00', ''),
(1255, 1000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2620, 1, NULL, 1, '2018-03-26 11:06:55', 0, 'C', '0.00', ''),
(1256, 1000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1760, 1, NULL, 1, '2018-03-26 11:08:04', 0, 'C', '0.00', ''),
(1257, 1000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2960, 1, NULL, 1, '2018-03-26 11:09:22', 0, 'C', '0.00', ''),
(1258, 1000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1990, 1, NULL, 1, '2018-03-26 11:10:12', 0, 'C', '0.00', ''),
(1259, 1000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3400, 1, NULL, 1, '2018-03-26 11:11:29', 0, 'C', '0.00', ''),
(1260, 1000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2100, 1, NULL, 1, '2018-03-26 11:12:45', 0, 'C', '0.00', ''),
(1261, 1000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3750, 1, NULL, 1, '2018-03-26 11:14:10', 0, 'C', '0.00', ''),
(1262, 1000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2280, 1, NULL, 1, '2018-03-26 11:15:06', 0, 'C', '0.00', ''),
(1263, 1000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4570, 1, NULL, 1, '2018-03-26 11:15:59', 0, 'C', '0.00', ''),
(1264, 1000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2440, 1, NULL, 1, '2018-03-26 11:16:58', 0, 'C', '0.00', ''),
(1265, 2000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4850, 1, NULL, 1, '2018-03-26 11:18:42', 0, 'C', '0.00', ''),
(1266, 2000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3430, 1, NULL, 1, '2018-03-26 11:22:55', 0, 'C', '0.00', ''),
(1267, 2000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5210, 1, NULL, 1, '2018-03-26 11:21:36', 0, 'C', '0.00', ''),
(1268, 2000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3490, 1, NULL, 1, '2018-03-26 11:22:28', 0, 'C', '0.00', ''),
(1269, 2000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5890, 1, NULL, 1, '2018-03-26 11:24:49', 0, 'C', '0.00', ''),
(1270, 2000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3950, 1, NULL, 1, '2018-03-26 11:25:59', 0, 'C', '0.00', ''),
(1271, 2000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6770, 1, NULL, 1, '2018-03-26 11:27:23', 0, 'C', '0.00', ''),
(1272, 2000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4170, 1, NULL, 1, '2018-03-26 11:28:24', 0, 'C', '0.00', ''),
(1273, 2000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7470, 1, NULL, 1, '2018-03-26 11:42:24', 0, 'C', '0.00', ''),
(1274, 2000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4530, 1, NULL, 1, '2018-03-26 11:43:13', 0, 'C', '0.00', ''),
(1275, 2000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9110, 1, NULL, 1, '2018-03-26 11:44:12', 0, 'C', '0.00', ''),
(1276, 2000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4850, 1, NULL, 1, '2018-03-26 11:45:23', 0, 'C', '0.00', ''),
(1277, 3000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7260, 1, NULL, 1, '2018-03-26 11:49:57', 0, 'C', '0.00', ''),
(1278, 3000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5130, 1, NULL, 1, '2018-03-26 11:50:50', 0, 'C', '0.00', ''),
(1279, 3000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7800, 1, NULL, 1, '2018-03-26 11:53:24', 0, 'C', '0.00', ''),
(1280, 3000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5220, 1, NULL, 1, '2018-03-26 11:54:08', 0, 'C', '0.00', ''),
(1281, 3000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8820, 1, NULL, 1, '2018-03-26 11:56:17', 0, 'C', '0.00', ''),
(1282, 3000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5910, 1, NULL, 1, '2018-03-26 11:57:14', 0, 'C', '0.00', ''),
(1283, 3000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10140, 1, NULL, 1, '2018-03-26 11:58:16', 0, 'C', '0.00', ''),
(1284, 3000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6240, 1, NULL, 1, '2018-03-26 11:59:06', 0, 'C', '0.00', ''),
(1285, 3000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11190, 1, NULL, 1, '2018-03-26 12:00:45', 0, 'C', '0.00', ''),
(1286, 250000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6780, 1, NULL, 1, '2018-03-26 12:01:56', 0, 'C', '0.00', ''),
(1287, 3000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13650, 1, NULL, 1, '2018-03-26 12:03:11', 0, 'C', '0.00', ''),
(1288, 3000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7260, 1, NULL, 1, '2018-03-26 12:04:14', 0, 'C', '0.00', ''),
(1289, 250000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 790, 1, NULL, 1, '2018-03-26 15:17:43', 0, 'C', '0.00', ''),
(1290, 250000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 545, 1, NULL, 1, '2018-03-26 15:24:51', 0, 'C', '0.00', ''),
(1291, 250000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 905, 1, NULL, 1, '2018-03-26 15:24:30', 0, 'C', '0.00', ''),
(1292, 250000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 568, 1, NULL, 1, '2018-03-26 15:25:39', 0, 'C', '0.00', ''),
(1293, 250000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1030, 1, NULL, 1, '2018-03-26 15:26:45', 0, 'C', '0.00', ''),
(1294, 250000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 628, 1, NULL, 1, '2018-03-26 15:27:49', 0, 'C', '0.00', ''),
(1295, 250000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1170, 1, NULL, 1, '2018-03-26 15:43:16', 0, 'C', '0.00', ''),
(1296, 250000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 668, 1, NULL, 1, '2018-03-26 15:44:07', 0, 'C', '0.00', ''),
(1297, 250000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1298, 1, NULL, 1, '2018-03-26 15:45:26', 0, 'C', '0.00', ''),
(1298, 250000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 733, 1, NULL, 1, '2018-03-26 15:46:22', 0, 'C', '0.00', ''),
(1299, 250000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1593, 1, NULL, 1, '2018-03-26 15:55:59', 0, 'C', '0.00', ''),
(1300, 250000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 800, 1, NULL, 1, '2018-03-26 15:56:46', 0, 'C', '0.00', ''),
(1301, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1465, 1, NULL, 1, '2018-03-26 15:58:45', 0, 'C', '0.00', ''),
(1302, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 975, 1, NULL, 1, '2018-03-26 15:59:41', 0, 'C', '0.00', ''),
(1303, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1635, 1, NULL, 1, '2018-03-26 16:00:52', 0, 'C', '0.00', ''),
(1304, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1010, 1, NULL, 1, '2018-03-26 16:02:43', 0, 'C', '0.00', ''),
(1305, 500000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1935, 1, NULL, 1, '2018-03-26 16:05:43', 0, 'C', '0.00', ''),
(1306, 500000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1155, 1, NULL, 1, '2018-03-26 16:07:24', 0, 'C', '0.00', ''),
(1307, 500000, 0, 0, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2200, 1, NULL, 1, '2018-03-26 16:08:39', 0, 'C', '0.00', ''),
(1308, 500000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1240, 1, NULL, 1, '2018-03-26 16:09:31', 0, 'C', '0.00', ''),
(1309, 500000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2455, 1, NULL, 1, '2018-03-26 16:44:49', 0, 'C', '0.00', ''),
(1310, 500000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1380, 1, NULL, 1, '2018-03-26 16:45:47', 0, 'C', '0.00', ''),
(1311, 500000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3100, 1, NULL, 1, '2018-03-26 16:46:56', 0, 'C', '0.00', ''),
(1312, 500000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1505, 1, NULL, 1, '2018-03-26 16:47:59', 0, 'C', '0.00', ''),
(1313, 1000000, 36, 4, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2800, 1, NULL, 1, '2018-03-26 16:50:00', 0, 'C', '0.00', ''),
(1314, 1000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1850, 1, NULL, 1, '2018-03-26 16:51:02', 0, 'C', '0.00', ''),
(1315, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3090, 1, NULL, 1, '2018-03-26 16:52:15', 0, 'C', '0.00', ''),
(1316, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1920, 1, NULL, 1, '2018-03-26 16:53:03', 0, 'C', '0.00', ''),
(1317, 1000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3680, 1, NULL, 1, '2018-03-26 16:55:04', 0, 'C', '0.00', ''),
(1318, 1000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2210, 1, NULL, 1, '2018-03-26 16:58:39', 0, 'C', '0.00', ''),
(1319, 1000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4220, 1, NULL, 1, '2018-03-27 17:00:27', 0, 'C', '0.00', ''),
(1320, 1000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2380, 1, NULL, 1, '2018-03-27 17:01:28', 0, 'C', '0.00', ''),
(1321, 1000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4750, 1, NULL, 1, '2018-03-27 17:02:51', 0, 'C', '0.00', ''),
(1322, 1000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2660, 1, NULL, 1, '2018-03-27 17:05:00', 0, 'C', '0.00', ''),
(1323, 1000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6200, 1, NULL, 1, '2018-03-27 17:06:04', 0, 'C', '0.00', ''),
(1324, 1000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2920, 1, NULL, 1, '2018-03-27 17:07:12', 0, 'C', '0.00', ''),
(1325, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5570, 1, NULL, 1, '2018-03-27 17:09:12', 0, 'C', '0.00', ''),
(1326, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3670, 1, NULL, 1, '2018-03-27 17:10:30', 0, 'C', '0.00', ''),
(1327, 2000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6150, 1, NULL, 1, '2018-03-27 17:11:36', 0, 'C', '0.00', ''),
(1328, 2000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3810, 1, NULL, 1, '2018-03-27 17:14:39', 0, 'C', '0.00', ''),
(1329, 2000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7330, 1, NULL, 1, '2018-03-27 17:16:09', 0, 'C', '0.00', ''),
(1330, 2000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4390, 1, NULL, 1, '2018-03-27 17:17:16', 0, 'C', '0.00', ''),
(1331, 2000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8410, 1, NULL, 1, '2018-03-27 17:18:59', 0, 'C', '0.00', ''),
(1332, 2000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4730, 1, NULL, 1, '2018-03-27 17:20:46', 0, 'C', '0.00', ''),
(1333, 2000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9470, 1, NULL, 1, '2018-03-27 17:22:52', 0, 'C', '0.00', ''),
(1334, 2000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5290, 1, NULL, 1, '2018-03-27 17:24:16', 0, 'C', '0.00', ''),
(1335, 2000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12170, 1, NULL, 1, '2018-03-27 17:25:09', 0, 'C', '0.00', ''),
(1336, 2000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5810, 1, NULL, 1, '2018-03-27 17:26:13', 0, 'C', '0.00', ''),
(1337, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8340, 1, NULL, 1, '2018-03-27 17:29:17', 0, 'C', '0.00', ''),
(1338, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5490, 1, NULL, 1, '2018-03-27 17:31:46', 0, 'C', '0.00', ''),
(1339, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9210, 1, NULL, 1, '2018-03-27 17:32:44', 0, 'C', '0.00', ''),
(1340, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5700, 1, NULL, 1, '2018-03-27 17:34:02', 0, 'C', '0.00', ''),
(1341, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10980, 1, NULL, 1, '2018-03-27 17:36:14', 0, 'C', '0.00', ''),
(1342, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6570, 1, NULL, 1, '2018-03-27 17:38:06', 0, 'C', '0.00', ''),
(1343, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12600, 1, NULL, 1, '2018-03-27 17:39:17', 0, 'C', '0.00', ''),
(1344, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7080, 1, NULL, 1, '2018-03-27 17:40:21', 0, 'C', '0.00', ''),
(1345, 3000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 14190, 1, NULL, 1, '2018-03-27 17:41:33', 0, 'C', '0.00', ''),
(1346, 3000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7920, 1, NULL, 1, '2018-03-27 17:42:58', 0, 'C', '0.00', ''),
(1347, 3000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18240, 1, NULL, 1, '2018-03-27 17:43:59', 0, 'C', '0.00', ''),
(1348, 3000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8700, 1, NULL, 1, '2018-03-27 17:44:56', 0, 'C', '0.00', ''),
(1349, 250000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1008, 1, NULL, 1, '2018-03-27 17:48:27', 0, 'C', '0.00', ''),
(1350, 250000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 588, 1, NULL, 1, '2018-03-27 17:49:22', 0, 'C', '0.00', ''),
(1351, 250000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1200, 1, NULL, 1, '2018-03-27 17:50:13', 0, 'C', '0.00', ''),
(1352, 250000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 620, 1, NULL, 1, '2018-03-27 17:51:11', 0, 'C', '0.00', ''),
(1353, 250000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1378, 1, NULL, 1, '2018-03-27 17:53:19', 0, 'C', '0.00', ''),
(1354, 250000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 705, 1, NULL, 1, '2018-03-27 17:54:10', 0, 'C', '0.00', ''),
(1355, 250000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1600, 1, NULL, 1, '2018-03-27 17:55:54', 0, 'C', '0.00', ''),
(1356, 250000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 775, 1, NULL, 1, '2018-03-27 17:56:56', 0, 'C', '0.00', ''),
(1357, 250000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1813, 1, NULL, 1, '2018-03-27 17:59:16', 0, 'C', '0.00', ''),
(1358, 250000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 893, 1, NULL, 1, '2018-03-27 06:00:17', 0, 'C', '0.00', ''),
(1359, 250000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2293, 1, NULL, 1, '2018-03-27 06:01:35', 0, 'C', '0.00', ''),
(1360, 250000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1003, 1, NULL, 1, '2018-03-27 06:02:52', 0, 'C', '0.00', ''),
(1361, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1830, 1, NULL, 1, '2018-03-27 07:02:18', 0, 'C', '0.00', ''),
(1362, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1055, 1, NULL, 1, '2018-03-27 07:03:11', 0, 'C', '0.00', ''),
(1363, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2180, 1, NULL, 1, '2018-03-27 07:04:23', 0, 'C', '0.00', ''),
(1364, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1120, 1, NULL, 1, '2018-03-27 07:05:21', 0, 'C', '0.00', ''),
(1365, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2555, 1, NULL, 1, '2018-03-27 07:08:12', 0, 'C', '0.00', ''),
(1366, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1310, 1, NULL, 1, '2018-03-27 07:09:11', 0, 'C', '0.00', ''),
(1367, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3015, 1, NULL, 1, '2018-03-27 07:10:12', 0, 'C', '0.00', ''),
(1368, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1440, 1, NULL, 1, '2018-03-27 07:11:01', 0, 'C', '0.00', ''),
(1369, 500000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3435, 1, NULL, 1, '2018-03-27 07:12:37', 0, 'C', '0.00', ''),
(1370, 500000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1690, 1, NULL, 1, '2018-03-27 07:13:40', 0, 'C', '0.00', ''),
(1371, 500000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4480, 1, NULL, 1, '2018-03-27 07:14:29', 0, 'C', '0.00', ''),
(1372, 500000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1905, 1, NULL, 1, '2018-03-27 07:15:34', 0, 'C', '0.00', ''),
(1373, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3470, 1, NULL, 1, '2018-03-27 07:17:08', 0, 'C', '0.00', ''),
(1374, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2010, 1, NULL, 1, '2018-03-27 07:18:12', 0, 'C', '0.00', ''),
(1375, 1000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4120, 1, NULL, 1, '2018-03-27 07:20:04', 0, 'C', '0.00', ''),
(1376, 1000000, 0, 0, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2130, 1, NULL, 1, '2018-03-27 07:20:47', 0, 'C', '0.00', ''),
(1377, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4870, 1, NULL, 1, '2018-03-27 07:23:07', 0, 'C', '0.00', ''),
(1378, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2520, 1, NULL, 1, '2018-03-27 07:23:42', 0, 'C', '0.00', ''),
(1379, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5870, 1, NULL, 1, '2018-03-27 07:24:43', 0, 'C', '0.00', ''),
(1380, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2770, 1, NULL, 1, '2018-03-27 07:25:41', 0, 'C', '0.00', ''),
(1381, 1000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6680, 1, NULL, 1, '2018-03-27 07:28:29', 0, 'C', '0.00', ''),
(1382, 1000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3280, 1, NULL, 1, '2018-03-27 07:29:02', 0, 'C', '0.00', ''),
(1383, 1000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8880, 1, NULL, 1, '2018-03-27 07:29:55', 0, 'C', '0.00', ''),
(1384, 1000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3700, 1, NULL, 1, '2018-03-27 07:30:42', 0, 'C', '0.00', ''),
(1385, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6910, 1, NULL, 1, '2018-03-27 07:32:36', 0, 'C', '0.00', ''),
(1386, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3990, 1, NULL, 1, '2018-03-27 07:33:33', 0, 'C', '0.00', ''),
(1387, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8210, 1, NULL, 1, '2018-03-27 07:34:41', 0, 'C', '0.00', ''),
(1388, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4230, 1, NULL, 1, '2018-03-27 07:35:25', 0, 'C', '0.00', ''),
(1389, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9710, 1, NULL, 1, '2018-03-27 07:36:58', 0, 'C', '0.00', ''),
(1390, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5010, 1, NULL, 1, '2018-03-27 07:38:10', 0, 'C', '0.00', ''),
(1391, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11710, 1, NULL, 1, '2018-03-27 07:39:31', 0, 'C', '0.00', ''),
(1392, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5510, 1, NULL, 1, '2018-03-27 07:40:24', 0, 'C', '0.00', ''),
(1393, 2000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 13330, 1, NULL, 1, '2018-03-27 07:46:20', 0, 'C', '0.00', ''),
(1394, 2000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6530, 1, NULL, 1, '2018-03-27 07:47:10', 0, 'C', '0.00', ''),
(1395, 2000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 17730, 1, NULL, 1, '2018-03-27 07:48:50', 0, 'C', '0.00', ''),
(1396, 2000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7370, 1, NULL, 1, '2018-03-27 07:50:11', 0, 'C', '0.00', ''),
(1397, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10350, 1, NULL, 1, '2018-03-27 07:51:37', 0, 'C', '0.00', ''),
(1398, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5970, 1, NULL, 1, '2018-03-27 07:52:36', 0, 'C', '0.00', ''),
(1399, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12300, 1, NULL, 1, '2018-03-27 07:53:36', 0, 'C', '0.00', ''),
(1400, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6330, 1, NULL, 1, '2018-03-27 07:54:31', 0, 'C', '0.00', ''),
(1401, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 14550, 1, NULL, 1, '2018-03-27 07:55:55', 0, 'C', '0.00', ''),
(1402, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7500, 1, NULL, 1, '2018-03-27 07:57:52', 0, 'C', '0.00', ''),
(1403, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 17550, 1, NULL, 1, '2018-03-27 07:59:11', 0, 'C', '0.00', ''),
(1404, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8250, 1, NULL, 1, '2018-03-27 08:00:29', 0, 'C', '0.00', ''),
(1405, 3000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 19980, 1, NULL, 1, '2018-03-27 08:01:50', 0, 'C', '0.00', ''),
(1406, 3000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 9780, 1, NULL, 1, '2018-03-27 08:02:52', 0, 'C', '0.00', ''),
(1407, 3000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 26580, 1, NULL, 1, '2018-03-27 08:04:04', 0, 'C', '0.00', ''),
(1408, 3000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 11040, 1, NULL, 1, '2018-03-27 08:05:01', 0, 'C', '0.00', ''),
(1409, 250000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1393, 1, NULL, 1, '2018-03-27 08:07:21', 0, 'C', '0.00', ''),
(1410, 250000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 670, 1, NULL, 1, '2018-03-27 08:08:11', 0, 'C', '0.00', ''),
(1411, 250000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1703, 1, NULL, 1, '2018-03-27 08:09:07', 0, 'C', '0.00', ''),
(1412, 250000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 728, 1, NULL, 1, '2018-03-27 08:10:11', 0, 'C', '0.00', ''),
(1413, 250000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1923, 1, NULL, 1, '2018-03-27 08:11:26', 0, 'C', '0.00', ''),
(1414, 250000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 845, 1, NULL, 1, '2018-03-27 08:12:14', 0, 'C', '0.00', ''),
(1415, 250000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2285, 1, NULL, 1, '2018-03-27 08:14:12', 0, 'C', '0.00', ''),
(1416, 250000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 953, 1, NULL, 1, '2018-03-27 08:15:04', 0, 'C', '0.00', ''),
(1417, 250000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2633, 1, NULL, 1, '2018-03-27 08:16:30', 0, 'C', '0.00', ''),
(1418, 250000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1195, 1, NULL, 1, '2018-03-27 08:17:33', 0, 'C', '0.00', ''),
(1419, 250000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3303, 1, NULL, 1, '2018-03-27 08:18:30', 0, 'C', '0.00', ''),
(1420, 250000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1373, 1, NULL, 1, '2018-03-27 08:19:19', 0, 'C', '0.00', ''),
(1421, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2525, 1, NULL, 1, '2018-03-27 08:20:52', 0, 'C', '0.00', ''),
(1422, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1205, 1, NULL, 1, '2018-03-27 08:21:47', 0, 'C', '0.00', ''),
(1423, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3105, 1, NULL, 1, '2018-03-27 08:22:40', 0, 'C', '0.00', ''),
(1424, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1315, 1, NULL, 1, '2018-03-27 08:23:48', 0, 'C', '0.00', ''),
(1425, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3585, 1, NULL, 1, '2018-03-27 08:25:07', 0, 'C', '0.00', ''),
(1426, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1575, 1, NULL, 1, '2018-03-27 08:25:54', 0, 'C', '0.00', ''),
(1427, 500000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4285, 1, NULL, 1, '2018-03-27 08:26:46', 0, 'C', '0.00', ''),
(1428, 500000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1785, 1, NULL, 1, '2018-03-27 08:27:35', 0, 'C', '0.00', ''),
(1429, 500000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5040, 1, NULL, 1, '2018-03-27 08:32:22', 0, 'C', '0.00', ''),
(1430, 500000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2285, 1, NULL, 1, '2018-03-27 08:33:57', 0, 'C', '0.00', ''),
(1431, 500000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6490, 1, NULL, 1, '2018-03-27 08:34:59', 0, 'C', '0.00', ''),
(1432, 500000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2625, 1, NULL, 1, '2018-03-27 08:35:52', 0, 'C', '0.00', ''),
(1433, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4790, 1, NULL, 1, '2018-03-27 08:37:29', 0, 'C', '0.00', ''),
(1434, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2300, 1, NULL, 1, '2018-03-27 08:38:21', 0, 'C', '0.00', ''),
(1435, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5890, 1, NULL, 1, '2018-03-27 08:39:18', 0, 'C', '0.00', ''),
(1436, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2510, 1, NULL, 1, '2018-03-27 08:40:11', 0, 'C', '0.00', ''),
(1437, 1000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6860, 1, NULL, 1, '2018-03-27 08:41:34', 0, 'C', '0.00', ''),
(1438, 1000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3010, 1, NULL, 1, '2018-03-27 08:42:22', 0, 'C', '0.00', ''),
(1439, 1000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8240, 1, NULL, 1, '2018-03-27 08:43:14', 0, 'C', '0.00', ''),
(1440, 1000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3430, 1, NULL, 1, '2018-03-27 08:44:47', 0, 'C', '0.00', ''),
(1441, 1000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9840, 1, NULL, 1, '2018-03-27 08:45:56', 0, 'C', '0.00', ''),
(1442, 1000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4450, 1, NULL, 1, '2018-03-27 08:47:05', 0, 'C', '0.00', ''),
(1443, 1000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12870, 1, NULL, 1, '2018-03-27 08:47:58', 0, 'C', '0.00', ''),
(1444, 1000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5130, 1, NULL, 1, '2018-03-27 08:48:56', 0, 'C', '0.00', ''),
(1445, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9550, 1, NULL, 1, '2018-03-27 08:50:22', 0, 'C', '0.00', ''),
(1446, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4570, 1, NULL, 1, '2018-03-27 08:51:08', 0, 'C', '0.00', ''),
(1447, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11750, 1, NULL, 1, '2018-03-27 08:52:09', 0, 'C', '0.00', ''),
(1448, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4990, 1, NULL, 1, '2018-03-27 08:53:18', 0, 'C', '0.00', ''),
(1449, 2000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 13690, 1, NULL, 1, '2018-03-27 08:54:39', 0, 'C', '0.00', ''),
(1450, 2000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5990, 1, NULL, 1, '2018-03-27 08:56:03', 0, 'C', '0.00', ''),
(1451, 2000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 16450, 1, NULL, 1, '2018-03-27 08:56:55', 0, 'C', '0.00', ''),
(1452, 2000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6830, 1, NULL, 1, '2018-03-27 08:58:05', 0, 'C', '0.00', ''),
(1453, 2000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 19650, 1, NULL, 1, '2018-03-27 08:59:14', 0, 'C', '0.00', ''),
(1454, 2000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8870, 1, NULL, 1, '2018-03-27 09:00:07', 0, 'C', '0.00', ''),
(1455, 2000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 25710, 1, NULL, 1, '2018-03-27 09:00:58', 0, 'C', '0.00', ''),
(1456, 2000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 10230, 1, NULL, 1, '2018-03-27 09:01:53', 0, 'C', '0.00', ''),
(1457, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 14310, 1, NULL, 1, '2018-03-27 09:03:04', 0, 'C', '0.00', ''),
(1458, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6840, 1, NULL, 1, '2018-03-27 09:03:54', 0, 'C', '0.00', ''),
(1459, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 17610, 1, NULL, 1, '2018-03-27 09:04:48', 0, 'C', '0.00', ''),
(1460, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7470, 1, NULL, 1, '2018-03-27 09:05:45', 0, 'C', '0.00', ''),
(1461, 3000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 20520, 1, NULL, 1, '2018-03-27 09:07:02', 0, 'C', '0.00', ''),
(1462, 3000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8970, 1, NULL, 1, '2018-03-27 09:07:51', 0, 'C', '0.00', ''),
(1463, 3000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 24660, 1, NULL, 1, '2018-03-27 09:08:42', 0, 'C', '0.00', ''),
(1464, 3000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 10230, 1, NULL, 1, '2018-03-27 09:09:35', 0, 'C', '0.00', ''),
(1465, 3000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 29460, 1, NULL, 1, '2018-03-27 09:15:07', 0, 'C', '0.00', ''),
(1466, 3000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 13290, 1, NULL, 1, '2018-03-27 09:16:10', 0, 'C', '0.00', ''),
(1467, 3000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 38550, 1, NULL, 1, '2018-03-27 09:17:14', 0, 'C', '0.00', ''),
(1468, 3000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 15330, 1, NULL, 1, '2018-03-27 09:18:05', 0, 'C', '0.00', ''),
(1469, 250000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2033, 1, NULL, 1, '2018-03-27 09:33:45', 0, 'C', '0.00', ''),
(1470, 250000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 820, 1, NULL, 1, '2018-03-27 09:34:43', 0, 'C', '0.00', ''),
(1471, 250000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2518, 1, NULL, 1, '2018-03-27 09:35:42', 0, 'C', '0.00', ''),
(1472, 250000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 920, 1, NULL, 1, '2018-03-27 09:37:15', 0, 'C', '0.00', ''),
(1473, 250000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2790, 1, NULL, 1, '2018-03-27 09:38:33', 0, 'C', '0.00', ''),
(1474, 250000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1088, 1, NULL, 1, '2018-03-27 09:39:44', 0, 'C', '0.00', ''),
(1475, 250000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3413, 1, NULL, 1, '2018-03-27 09:40:41', 0, 'C', '0.00', ''),
(1476, 250000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1260, 1, NULL, 1, '2018-03-27 09:41:33', 0, 'C', '0.00', ''),
(1477, 250000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1788, 1, NULL, 1, '2018-03-27 09:43:49', 0, 'C', '0.00', ''),
(1478, 250000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2040, 1, NULL, 1, '2018-03-27 09:45:09', 0, 'C', '0.00', ''),
(1479, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3690, 1, NULL, 1, '2018-03-27 09:46:40', 0, 'C', '0.00', ''),
(1480, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1475, 1, NULL, 1, '2018-03-27 09:47:30', 0, 'C', '0.00', ''),
(1481, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4585, 1, NULL, 1, '2018-03-27 09:48:34', 0, 'C', '0.00', ''),
(1482, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1660, 1, NULL, 1, '2018-03-27 09:49:47', 0, 'C', '0.00', ''),
(1483, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5220, 1, NULL, 1, '2018-03-27 09:51:00', 0, 'C', '0.00', ''),
(1484, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2030, 1, NULL, 1, '2018-03-27 09:51:55', 0, 'C', '0.00', ''),
(1485, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6395, 1, NULL, 1, '2018-03-27 09:52:49', 0, 'C', '0.00', ''),
(1486, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2365, 1, NULL, 1, '2018-03-27 09:54:51', 0, 'C', '0.00', ''),
(1487, 500000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3445, 1, NULL, 1, '2018-03-27 09:56:33', 0, 'C', '0.00', ''),
(1488, 500000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3935, 1, NULL, 1, '2018-03-27 09:58:06', 0, 'C', '0.00', ''),
(1489, 1000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6960, 1, NULL, 1, '2018-03-27 09:59:44', 0, 'C', '0.00', ''),
(1490, 1000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2780, 1, NULL, 1, '2018-03-27 10:00:59', 0, 'C', '0.00', ''),
(1491, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8670, 1, NULL, 1, '2018-03-27 10:02:14', 0, 'C', '0.00', ''),
(1492, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3130, 1, NULL, 1, '2018-03-27 10:26:43', 0, 'C', '0.00', ''),
(1493, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10000, 1, NULL, 1, '2018-03-27 10:28:52', 0, 'C', '0.00', ''),
(1494, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3880, 1, NULL, 1, '2018-03-27 10:29:55', 0, 'C', '0.00', ''),
(1495, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12260, 1, NULL, 1, '2018-03-27 10:30:53', 0, 'C', '0.00', ''),
(1496, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4530, 1, NULL, 1, '2018-03-27 10:31:59', 0, 'C', '0.00', ''),
(1497, 1000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6470, 1, NULL, 1, '2018-03-27 10:33:29', 0, 'C', '0.00', ''),
(1498, 1000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7710, 1, NULL, 1, '2018-03-27 10:34:40', 0, 'C', '0.00', ''),
(1499, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 13890, 1, NULL, 1, '2018-03-27 10:36:06', 0, 'C', '0.00', ''),
(1500, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5530, 1, NULL, 1, '2018-03-27 10:37:04', 0, 'C', '0.00', ''),
(1501, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 17310, 1, NULL, 1, '2018-03-27 10:37:59', 0, 'C', '0.00', ''),
(1502, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6230, 1, NULL, 1, '2018-03-27 10:39:19', 0, 'C', '0.00', ''),
(1503, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 19970, 1, NULL, 1, '2018-03-27 10:40:36', 0, 'C', '0.00', ''),
(1504, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7730, 1, NULL, 1, '2018-03-27 10:41:31', 0, 'C', '0.00', ''),
(1505, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 24490, 1, NULL, 1, '2018-03-27 10:42:42', 0, 'C', '0.00', ''),
(1506, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9030, 1, NULL, 1, '2018-03-27 10:43:31', 0, 'C', '0.00', ''),
(1507, 2000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 13450, 1, NULL, 1, '2018-03-27 10:45:28', 0, 'C', '0.00', ''),
(1508, 2000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 15390, 1, NULL, 1, '2018-03-27 10:46:28', 0, 'C', '0.00', ''),
(1509, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 20820, 1, NULL, 1, '2018-03-27 10:48:11', 0, 'C', '0.00', ''),
(1510, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8280, 1, NULL, 1, '2018-03-27 10:49:42', 0, 'C', '0.00', ''),
(1511, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 25950, 1, NULL, 1, '2018-03-27 10:50:41', 0, 'C', '0.00', ''),
(1512, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9330, 1, NULL, 1, '2018-03-27 10:51:47', 0, 'C', '0.00', ''),
(1513, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 29940, 1, NULL, 1, '2018-03-27 10:53:34', 0, 'C', '0.00', ''),
(1514, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 11580, 1, NULL, 1, '2018-03-27 12:08:53', 0, 'C', '0.00', ''),
(1515, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 36720, 1, NULL, 1, '2018-03-27 12:13:33', 0, 'C', '0.00', ''),
(1516, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 13530, 1, NULL, 1, '2018-03-27 12:14:34', 0, 'C', '0.00', ''),
(1517, 3000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 20160, 1, NULL, 1, '2018-03-27 12:16:03', 0, 'C', '0.00', ''),
(1518, 3000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 23070, 1, NULL, 1, '2018-03-27 12:18:21', 0, 'C', '0.00', ''),
(1519, 250000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3020, 1, NULL, 1, '2018-03-27 12:21:11', 0, 'C', '0.00', ''),
(1520, 250000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1075, 1, NULL, 1, '2018-03-27 12:22:28', 0, 'C', '0.00', ''),
(1521, 250000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3753, 1, NULL, 1, '2018-03-27 12:23:25', 0, 'C', '0.00', ''),
(1522, 250000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1215, 1, NULL, 1, '2018-03-27 12:24:08', 0, 'C', '0.00', ''),
(1523, 250000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4160, 1, NULL, 1, '2018-03-27 12:25:30', 0, 'C', '0.00', ''),
(1524, 250000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1555, 1, NULL, 1, '2018-03-27 12:26:18', 0, 'C', '0.00', ''),
(1525, 250000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5135, 1, NULL, 1, '2018-03-27 12:27:10', 0, 'C', '0.00', ''),
(1527, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5525, 1, NULL, 1, '2018-03-27 12:31:36', 0, 'C', '0.00', ''),
(1528, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1950, 1, NULL, 1, '2018-03-27 12:32:28', 0, 'C', '0.00', ''),
(1529, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6885, 1, NULL, 1, '2018-03-27 12:33:45', 0, 'C', '0.00', ''),
(1530, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2210, 1, NULL, 1, '2018-03-27 12:34:34', 0, 'C', '0.00', ''),
(1531, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7820, 1, NULL, 1, '2018-03-27 13:03:12', 0, 'C', '0.00', ''),
(1532, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2930, 1, NULL, 1, '2018-03-27 13:04:10', 0, 'C', '0.00', ''),
(1533, 500000, 56, 6, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9665, 1, NULL, 1, '2018-03-27 13:05:04', 0, 'C', '0.00', '');
INSERT INTO `products` (`id`, `amount`, `age_start`, `age_end`, `type`, `gender`, `health`, `smoker`, `sku`, `annual_rate`, `status`, `sort_order`, `update_by`, `update_time`, `featured`, `country_category`, `flat_rate`, `year`) VALUES
(1534, 500000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3460, 1, NULL, 1, '2018-03-27 13:05:47', 0, 'C', '0.00', ''),
(1535, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10410, 1, NULL, 1, '2018-03-27 13:11:34', 0, 'C', '0.00', ''),
(1536, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3660, 1, NULL, 1, '2018-03-27 13:12:21', 0, 'C', '0.00', ''),
(1537, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13000, 1, NULL, 1, '2018-03-27 13:13:23', 0, 'C', '0.00', ''),
(1538, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4710, 1, NULL, 1, '2018-03-27 13:14:20', 0, 'C', '0.00', ''),
(1539, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 15000, 1, NULL, 1, '2018-03-27 13:15:38', 0, 'C', '0.00', ''),
(1540, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5630, 1, NULL, 1, '2018-03-27 13:16:31', 0, 'C', '0.00', ''),
(1541, 1000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18560, 1, NULL, 1, '2018-03-27 13:17:24', 0, 'C', '0.00', ''),
(1542, 1000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6650, 1, NULL, 1, '2018-03-27 13:18:25', 0, 'C', '0.00', ''),
(1543, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 20790, 1, NULL, 1, '2018-03-27 13:24:05', 0, 'C', '0.00', ''),
(1544, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7290, 1, NULL, 1, '2018-03-27 13:25:13', 0, 'C', '0.00', ''),
(1545, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 25970, 1, NULL, 1, '2018-03-27 13:26:37', 0, 'C', '0.00', ''),
(1546, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8310, 1, NULL, 1, '2018-03-27 13:27:44', 0, 'C', '0.00', ''),
(1547, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 29970, 1, NULL, 1, '2018-03-27 13:30:45', 0, 'C', '0.00', ''),
(1548, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 11230, 1, NULL, 1, '2018-03-27 13:31:34', 0, 'C', '0.00', ''),
(1549, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 37090, 1, NULL, 1, '2018-03-27 13:32:42', 0, 'C', '0.00', ''),
(1550, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 13270, 1, NULL, 1, '2018-03-27 13:33:41', 0, 'C', '0.00', ''),
(1551, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 31170, 1, NULL, 1, '2018-03-27 13:35:14', 0, 'C', '0.00', ''),
(1552, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 10920, 1, NULL, 1, '2018-03-27 13:36:14', 0, 'C', '0.00', ''),
(1553, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 38940, 1, NULL, 1, '2018-03-27 13:37:47', 0, 'C', '0.00', ''),
(1554, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 12450, 1, NULL, 1, '2018-03-27 13:38:41', 0, 'C', '0.00', ''),
(1555, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 44940, 1, NULL, 1, '2018-03-27 13:39:55', 0, 'C', '0.00', ''),
(1556, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 16830, 1, NULL, 1, '2018-03-27 13:41:10', 0, 'C', '0.00', ''),
(1557, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 55620, 1, NULL, 1, '2018-03-27 13:42:22', 0, 'C', '0.00', ''),
(1558, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 19890, 1, NULL, 1, '2018-03-27 13:43:53', 0, 'C', '0.00', ''),
(1559, 250000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4678, 1, NULL, 1, '2018-03-27 13:46:15', 0, 'C', '0.00', ''),
(1560, 250000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1545, 1, NULL, 1, '2018-03-27 13:47:01', 0, 'C', '0.00', ''),
(1561, 250000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5803, 1, NULL, 1, '2018-03-27 13:58:16', 0, 'C', '0.00', ''),
(1562, 250000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1798, 1, NULL, 1, '2018-03-27 14:00:35', 0, 'C', '0.00', ''),
(1563, 250000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6318, 1, NULL, 1, '2018-03-27 14:57:30', 0, 'C', '0.00', ''),
(1564, 250000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2478, 1, NULL, 1, '2018-03-27 14:58:33', 0, 'C', '0.00', ''),
(1565, 250000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7850, 1, NULL, 1, '2018-03-27 15:00:09', 0, 'C', '0.00', ''),
(1566, 250000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2943, 1, NULL, 1, '2018-03-27 15:01:23', 0, 'C', '0.00', ''),
(1567, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8590, 1, NULL, 1, '2018-03-27 15:03:23', 0, 'C', '0.00', ''),
(1568, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2825, 1, NULL, 1, '2018-03-27 15:04:38', 0, 'C', '0.00', ''),
(1569, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10680, 1, NULL, 1, '2018-03-27 15:05:33', 0, 'C', '0.00', ''),
(1570, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3300, 1, NULL, 1, '2018-03-27 15:06:51', 0, 'C', '0.00', ''),
(1571, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11890, 1, NULL, 1, '2018-03-27 15:08:14', 0, 'C', '0.00', ''),
(1572, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4690, 1, NULL, 1, '2018-03-27 15:09:06', 0, 'C', '0.00', ''),
(1573, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 14790, 1, NULL, 1, '2018-03-27 15:12:10', 0, 'C', '0.00', ''),
(1574, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5590, 1, NULL, 1, '2018-03-27 15:13:01', 0, 'C', '0.00', ''),
(1575, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 16100, 1, NULL, 1, '2018-03-27 15:17:12', 0, 'C', '0.00', ''),
(1576, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5230, 1, NULL, 1, '2018-03-27 15:18:08', 0, 'C', '0.00', ''),
(1577, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 20070, 1, NULL, 1, '2018-03-27 15:19:19', 0, 'C', '0.00', ''),
(1578, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 6130, 1, NULL, 1, '2018-03-27 15:20:49', 0, 'C', '0.00', ''),
(1579, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 22740, 1, NULL, 1, '2018-03-27 15:22:06', 0, 'C', '0.00', ''),
(1580, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 9000, 1, NULL, 1, '2018-03-27 15:23:27', 0, 'C', '0.00', ''),
(1581, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 28300, 1, NULL, 1, '2018-03-27 15:24:39', 0, 'C', '0.00', ''),
(1582, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 10700, 1, NULL, 1, '2018-03-27 15:25:34', 0, 'C', '0.00', ''),
(1583, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 32170, 1, NULL, 1, '2018-03-27 15:27:18', 0, 'C', '0.00', ''),
(1584, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 10430, 1, NULL, 1, '2018-03-27 15:28:06', 0, 'C', '0.00', ''),
(1585, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 40110, 1, NULL, 1, '2018-03-27 15:29:07', 0, 'C', '0.00', ''),
(1586, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 12230, 1, NULL, 1, '2018-03-27 15:30:05', 0, 'C', '0.00', ''),
(1587, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 45450, 1, NULL, 1, '2018-03-27 15:32:37', 0, 'C', '0.00', ''),
(1588, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 17970, 1, NULL, 1, '2018-03-27 15:32:13', 0, 'C', '0.00', ''),
(1589, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 56570, 1, NULL, 1, '2018-03-27 15:33:36', 0, 'C', '0.00', ''),
(1590, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 21370, 1, NULL, 1, '2018-03-27 15:34:50', 0, 'C', '0.00', ''),
(1591, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 48240, 1, NULL, 1, '2018-03-27 15:36:14', 0, 'C', '0.00', ''),
(1592, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 15630, 1, NULL, 1, '2018-03-27 15:37:05', 0, 'C', '0.00', ''),
(1593, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 60150, 1, NULL, 1, '2018-03-27 15:38:08', 0, 'C', '0.00', ''),
(1594, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 18330, 1, NULL, 1, '2018-03-27 15:57:48', 0, 'C', '0.00', ''),
(1595, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 68160, 1, NULL, 1, '2018-03-27 15:59:54', 0, 'C', '0.00', ''),
(1596, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 26940, 1, NULL, 1, '2018-03-27 16:01:04', 0, 'C', '0.00', ''),
(1597, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 84840, 1, NULL, 1, '2018-03-27 16:02:27', 0, 'C', '0.00', ''),
(1598, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 32040, 1, NULL, 1, '2018-03-27 16:03:21', 0, 'C', '0.00', ''),
(1599, 250000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6838, 1, NULL, 1, '2018-03-27 16:05:23', 0, 'C', '0.00', ''),
(1600, 250000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2340, 1, NULL, 1, '2018-03-27 16:06:13', 0, 'C', '0.00', ''),
(1601, 250000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8785, 1, NULL, 1, '2018-03-27 16:07:13', 0, 'C', '0.00', ''),
(1602, 250000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2835, 1, NULL, 1, '2018-03-27 16:08:12', 0, 'C', '0.00', ''),
(1603, 500000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 12585, 1, NULL, 1, '2018-03-27 16:10:46', 0, 'C', '0.00', ''),
(1604, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4305, 1, NULL, 1, '2018-03-27 16:11:43', 0, 'C', '0.00', ''),
(1605, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 16190, 1, NULL, 1, '2018-03-27 16:12:46', 0, 'C', '0.00', ''),
(1606, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5225, 1, NULL, 1, '2018-03-27 16:13:47', 0, 'C', '0.00', ''),
(1607, 250000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5218, 1, NULL, 1, '2018-03-27 16:17:34', 0, 'C', '0.00', ''),
(1608, 250000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4395, 1, NULL, 1, '2018-03-27 16:18:47', 0, 'C', '0.00', ''),
(1609, 500000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9990, 1, NULL, 1, '2018-03-27 16:20:08', 0, 'C', '0.00', ''),
(1610, 500000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8410, 1, NULL, 1, '2018-03-27 16:21:43', 0, 'C', '0.00', ''),
(1611, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 23660, 1, NULL, 1, '2018-03-27 16:23:38', 0, 'C', '0.00', ''),
(1612, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8030, 1, NULL, 1, '2018-03-27 16:24:59', 0, 'C', '0.00', ''),
(1613, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 30490, 1, NULL, 1, '2018-03-27 16:26:11', 0, 'C', '0.00', ''),
(1614, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9790, 1, NULL, 1, '2018-03-27 16:27:33', 0, 'C', '0.00', ''),
(1615, 1000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 16230, 1, NULL, 1, '2018-03-27 16:28:55', 0, 'C', '0.00', ''),
(1616, 1000000, 66, 7, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 19280, 1, NULL, 1, '2018-03-27 16:30:03', 0, 'C', '0.00', ''),
(1617, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 47290, 1, NULL, 1, '2018-03-27 16:31:58', 0, 'C', '0.00', ''),
(1618, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 16030, 1, NULL, 1, '2018-03-27 16:32:55', 0, 'C', '0.00', ''),
(1619, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 60950, 1, NULL, 1, '2018-03-27 16:33:43', 0, 'C', '0.00', ''),
(1620, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 19550, 1, NULL, 1, '2018-03-27 16:35:00', 0, 'C', '0.00', ''),
(1621, 2000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 32430, 1, NULL, 1, '2018-03-27 16:36:03', 0, 'C', '0.00', ''),
(1622, 2000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 38530, 1, NULL, 1, '2018-03-27 16:37:10', 0, 'C', '0.00', ''),
(1623, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 70920, 1, NULL, 1, '2018-03-27 16:38:38', 0, 'C', '0.00', ''),
(1624, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 24030, 1, NULL, 1, '2018-03-27 16:39:24', 0, 'C', '0.00', ''),
(1625, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 91410, 1, NULL, 1, '2018-03-27 16:40:21', 0, 'C', '0.00', ''),
(1626, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 29310, 1, NULL, 1, '2018-03-27 16:41:28', 0, 'C', '0.00', ''),
(1627, 3000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 57780, 1, NULL, 1, '2018-03-27 16:42:40', 0, 'C', '0.00', ''),
(1628, 3000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 48630, 1, NULL, 1, '2018-03-27 16:43:44', 0, 'C', '0.00', ''),
(1629, 250000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9073, 1, NULL, 1, '2018-03-27 16:58:30', 0, 'C', '0.00', ''),
(1630, 250000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3538, 1, NULL, 1, '2018-03-27 16:59:27', 0, 'C', '0.00', ''),
(1631, 250000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 12143, 1, NULL, 1, '2018-03-28 17:01:14', 0, 'C', '0.00', ''),
(1632, 250000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4328, 1, NULL, 1, '2018-03-28 17:02:07', 0, 'C', '0.00', ''),
(1633, 500000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 16730, 1, NULL, 1, '2018-03-28 17:04:11', 0, 'C', '0.00', ''),
(1634, 500000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6535, 1, NULL, 1, '2018-03-28 17:05:39', 0, 'C', '0.00', ''),
(1635, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 22290, 1, NULL, 1, '2018-03-28 17:07:40', 0, 'C', '0.00', ''),
(1636, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8015, 1, NULL, 1, '2018-03-28 17:08:38', 0, 'C', '0.00', ''),
(1637, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 31470, 1, NULL, 1, '2018-03-28 17:10:20', 0, 'C', '0.00', ''),
(1638, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 12230, 1, NULL, 1, '2018-03-28 17:11:54', 0, 'C', '0.00', ''),
(1639, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 41990, 1, NULL, 1, '2018-03-28 17:12:58', 0, 'C', '0.00', ''),
(1640, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 15030, 1, NULL, 1, '2018-03-28 17:13:56', 0, 'C', '0.00', ''),
(1641, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 62910, 1, NULL, 1, '2018-03-28 17:17:14', 0, 'C', '0.00', ''),
(1642, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 24430, 1, NULL, 1, '2018-03-28 17:16:37', 0, 'C', '0.00', ''),
(1643, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 83950, 1, NULL, 1, '2018-03-28 17:18:16', 0, 'C', '0.00', ''),
(1644, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 30030, 1, NULL, 1, '2018-03-28 17:19:28', 0, 'C', '0.00', ''),
(1645, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 94350, 1, NULL, 1, '2018-03-28 17:20:33', 0, 'C', '0.00', ''),
(1646, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 36630, 1, NULL, 1, '2018-03-28 17:21:44', 0, 'C', '0.00', ''),
(1647, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 125910, 1, NULL, 1, '2018-03-28 17:23:05', 0, 'C', '0.00', ''),
(1648, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 45030, 1, NULL, 1, '2018-03-28 17:24:03', 0, 'C', '0.00', ''),
(1649, 250000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17465, 1, NULL, 1, '2018-03-28 07:38:21', 0, 'C', '0.00', ''),
(1650, 250000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7403, 1, NULL, 1, '2018-03-28 07:39:16', 0, 'C', '0.00', ''),
(1651, 250000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 24895, 1, NULL, 1, '2018-03-28 07:40:21', 0, 'C', '0.00', ''),
(1652, 250000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8783, 1, NULL, 1, '2018-03-28 07:41:38', 0, 'C', '0.00', ''),
(1653, 500000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 34465, 1, NULL, 1, '2018-03-28 07:43:12', 0, 'C', '0.00', ''),
(1654, 500000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 13790, 1, NULL, 1, '2018-03-28 07:43:58', 0, 'C', '0.00', ''),
(1655, 500000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 49250, 1, NULL, 1, '2018-03-28 07:44:58', 0, 'C', '0.00', ''),
(1656, 500000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 16415, 1, NULL, 1, '2018-03-28 07:45:45', 0, 'C', '0.00', ''),
(1657, 1000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 68050, 1, NULL, 1, '2018-03-28 07:47:11', 0, 'C', '0.00', ''),
(1658, 1000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 26110, 1, NULL, 1, '2018-03-28 07:48:49', 0, 'C', '0.00', ''),
(1659, 1000000, 76, 8, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 94110, 1, NULL, 1, '2018-03-28 07:49:41', 0, 'C', '0.00', ''),
(1660, 1000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 31600, 1, NULL, 1, '2018-03-28 07:50:27', 0, 'C', '0.00', ''),
(1661, 2000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 136070, 1, NULL, 1, '2018-03-28 07:51:35', 0, 'C', '0.00', ''),
(1662, 2000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 52190, 1, NULL, 1, '2018-03-28 07:52:40', 0, 'C', '0.00', ''),
(1663, 2000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 188190, 1, NULL, 1, '2018-03-28 07:53:45', 0, 'C', '0.00', ''),
(1664, 2000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 63170, 1, NULL, 1, '2018-03-28 07:54:41', 0, 'C', '0.00', ''),
(1665, 3000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 204090, 1, NULL, 1, '2018-03-28 07:55:41', 0, 'C', '0.00', ''),
(1666, 3000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 78270, 1, NULL, 1, '2018-03-28 07:56:45', 0, 'C', '0.00', ''),
(1667, 3000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 282270, 1, NULL, 1, '2018-03-28 07:57:44', 0, 'C', '0.00', ''),
(1668, 3000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 94740, 1, NULL, 1, '2018-03-28 07:58:33', 0, 'C', '0.00', ''),
(1669, 250000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 419, 1, NULL, 1, '2018-03-28 10:04:18', 0, 'A', '0.00', ''),
(1670, 250000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 156, 1, NULL, 1, '2018-03-28 10:05:13', 0, 'A', '0.00', ''),
(1671, 250000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 535, 1, NULL, 1, '2018-03-28 10:06:02', 0, 'A', '0.00', ''),
(1672, 250000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 164, 1, NULL, 1, '2018-03-28 10:22:03', 0, 'LFG- A', '0.00', ''),
(1673, 250000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 571, 1, NULL, 1, '2018-03-28 10:21:45', 0, 'LFG- A', '0.00', ''),
(1674, 250000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 192, 1, NULL, 1, '2018-03-28 10:21:28', 0, 'LFG- A', '0.00', ''),
(1675, 250000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 704, 1, NULL, 1, '2018-03-28 10:21:10', 0, 'LFG- A', '0.00', ''),
(1676, 250000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 223, 1, NULL, 1, '2018-03-28 10:20:50', 0, 'LFG- A', '0.00', ''),
(1677, 250000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 823, 1, NULL, 1, '2018-03-28 10:20:32', 0, 'LFG- A', '0.00', ''),
(1678, 250000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 266, 1, NULL, 1, '2018-03-28 10:20:18', 0, 'LFG- A', '0.00', ''),
(1679, 250000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1109, 1, NULL, 1, '2018-03-28 10:20:02', 0, 'LFG- A', '0.00', ''),
(1680, 250000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 332, 1, NULL, 1, '2018-03-28 10:19:42', 0, 'LFG- A', '0.00', ''),
(1681, 500000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 552, 1, NULL, 1, '2018-03-28 10:19:25', 0, 'LFG- A', '0.00', ''),
(1682, 500000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 216, 1, NULL, 1, '2018-03-28 10:23:22', 0, 'LFG- A', '0.00', ''),
(1683, 500000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 677, 1, NULL, 1, '2018-03-28 10:24:19', 0, 'LFG- A', '0.00', ''),
(1684, 500000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 228, 1, NULL, 1, '2018-03-28 10:25:42', 0, 'LFG- A', '0.00', ''),
(1685, 500000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 769, 1, NULL, 1, '2018-03-28 10:31:12', 0, 'LFG- A', '0.00', ''),
(1686, 500000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 268, 1, NULL, 1, '2018-03-28 10:32:14', 0, 'LFG- A', '0.00', ''),
(1687, 500000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1005, 1, NULL, 1, '2018-03-28 10:33:09', 0, 'LFG- A', '0.00', ''),
(1688, 500000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 325, 1, NULL, 1, '2018-03-28 10:34:29', 0, 'LFG- A', '0.00', ''),
(1689, 500000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1184, 1, NULL, 1, '2018-03-28 10:35:55', 0, 'LFG- A', '0.00', ''),
(1690, 500000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 386, 1, NULL, 1, '2018-03-28 10:36:53', 0, 'LFG- A', '0.00', ''),
(1691, 500000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1563, 1, NULL, 1, '2018-03-28 10:38:51', 0, 'LFG- A', '0.00', ''),
(1692, 500000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 497, 1, NULL, 1, '2018-03-28 10:39:50', 0, 'LFG- A', '0.00', ''),
(1693, 1000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1004, 1, NULL, 1, '2018-03-28 10:45:15', 0, 'LFG- A', '0.00', ''),
(1694, 1000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 322, 1, NULL, 1, '2018-03-28 10:46:03', 0, 'LFG- A', '0.00', ''),
(1695, 1000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1254, 1, NULL, 1, '2018-03-28 10:47:05', 0, 'LFG- A', '0.00', ''),
(1696, 1000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 366, 1, NULL, 1, '2018-03-28 10:48:10', 0, 'LFG- A', '0.00', ''),
(1697, 1000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1448, 1, NULL, 1, '2018-03-28 10:56:32', 0, 'LFG- A', '0.00', ''),
(1698, 1000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 440, 1, NULL, 1, '2018-03-28 10:57:25', 0, 'LFG- A', '0.00', ''),
(1699, 1000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1884, 1, NULL, 1, '2018-03-28 10:58:53', 0, 'LFG- A', '0.00', ''),
(1700, 1000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 560, 1, NULL, 1, '2018-03-28 10:59:41', 0, 'LFG- A', '0.00', ''),
(1701, 1000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2224, 1, NULL, 1, '2018-03-28 11:00:45', 0, 'LFG- A', '0.00', ''),
(1702, 1000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 682, 1, NULL, 1, '2018-03-28 11:01:45', 0, 'LFG- A', '0.00', ''),
(1703, 1000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2980, 1, NULL, 1, '2018-03-28 11:02:36', 0, 'LFG- A', '0.00', ''),
(1704, 1000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 904, 1, NULL, 1, '2018-03-28 11:03:20', 0, 'LFG- A', '0.00', ''),
(1705, 2000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1918, 1, NULL, 1, '2018-03-28 11:04:30', 0, 'LFG- A', '0.00', ''),
(1706, 2000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 554, 1, NULL, 1, '2018-03-28 11:05:44', 0, 'LFG- A', '0.00', ''),
(1707, 2000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2418, 1, NULL, 1, '2018-03-28 11:06:44', 0, 'LFG- A', '0.00', ''),
(1708, 2000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 642, 1, NULL, 1, '2018-03-28 11:08:11', 0, 'LFG- A', '0.00', ''),
(1709, 2000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2806, 1, NULL, 1, '2018-03-28 11:09:36', 0, 'LFG- A', '0.00', ''),
(1710, 2000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 790, 1, NULL, 1, '2018-03-28 11:10:53', 0, 'LFG- A', '0.00', ''),
(1711, 2000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3678, 1, NULL, 1, '2018-03-28 11:12:21', 0, 'LFG- A', '0.00', ''),
(1712, 2000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1030, 1, NULL, 1, '2018-03-28 11:13:16', 0, 'LFG- A', '0.00', ''),
(1713, 2000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4358, 1, NULL, 1, '2018-03-28 11:16:39', 0, 'LFG- A', '0.00', ''),
(1714, 2000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1274, 1, NULL, 1, '2018-03-28 11:17:43', 0, 'LFG- A', '0.00', ''),
(1715, 2000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5870, 1, NULL, 1, '2018-03-28 11:18:31', 0, 'LFG- A', '0.00', ''),
(1716, 2000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1718, 1, NULL, 1, '2018-03-28 11:19:15', 0, 'LFG- A', '0.00', ''),
(1717, 3000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2832, 1, NULL, 1, '2018-03-28 11:21:04', 0, 'LFG- A', '0.00', ''),
(1718, 3000000, 26, 30, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 786, 1, NULL, 1, '2018-03-28 11:23:31', 0, 'LFG- A', '0.00', ''),
(1719, 3000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3582, 1, NULL, 1, '2018-03-28 11:24:35', 0, 'LFG- A', '0.00', ''),
(1720, 3000000, 26, 30, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 918, 1, NULL, 1, '2018-03-28 11:25:21', 0, 'LFG- A', '0.00', ''),
(1721, 3000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4164, 1, NULL, 1, '2018-03-28 11:26:32', 0, 'LFG- A', '0.00', ''),
(1722, 3000000, 26, 30, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1140, 1, NULL, 1, '2018-03-28 11:27:43', 0, 'LFG- A', '0.00', ''),
(1723, 3000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5472, 1, NULL, 1, '2018-03-28 11:28:54', 0, 'LFG- A', '0.00', ''),
(1724, 3000000, 26, 30, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1500, 1, NULL, 1, '2018-03-28 11:29:48', 0, 'LFG- A', '0.00', ''),
(1725, 3000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6492, 1, NULL, 1, '2018-03-28 11:30:59', 0, 'LFG- A', '0.00', ''),
(1726, 3000000, 26, 30, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1866, 1, NULL, 1, '2018-03-28 11:39:49', 0, 'LFG- A', '0.00', ''),
(1727, 3000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8760, 1, NULL, 1, '2018-03-28 11:40:46', 0, 'LFG- A', '0.00', ''),
(1728, 3000000, 26, 30, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2532, 1, NULL, 1, '2018-03-28 11:41:45', 0, 'LFG- A', '0.00', ''),
(1729, 250000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 450, 1, NULL, 1, '2018-03-28 13:42:32', 0, 'LFG- A', '0.00', ''),
(1730, 250000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 158, 1, NULL, 1, '2018-03-28 13:43:21', 0, 'LFG- A', '0.00', ''),
(1731, 250000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 545, 1, NULL, 1, '2018-03-28 13:47:11', 0, 'LFG- A', '0.00', ''),
(1732, 250000, 31, 3, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 173, 1, NULL, 1, '2018-03-28 13:47:52', 0, 'LFG- A', '0.00', ''),
(1733, 250000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 603, 1, NULL, 1, '2018-03-28 13:49:55', 0, 'LFG- A', '0.00', ''),
(1734, 250000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 198, 1, NULL, 1, '2018-03-28 13:50:57', 0, 'LFG- A', '0.00', ''),
(1735, 250000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 740, 1, NULL, 1, '2018-03-28 13:51:56', 0, 'LFG- A', '0.00', ''),
(1736, 250000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 235, 1, NULL, 1, '2018-03-28 13:52:55', 0, 'LFG- A', '0.00', ''),
(1737, 250000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 995, 1, NULL, 1, '2018-03-28 13:54:38', 0, 'LFG- A', '0.00', ''),
(1738, 250000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 300, 1, NULL, 1, '2018-03-28 13:55:26', 0, 'LFG- A', '0.00', ''),
(1739, 250000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1373, 1, NULL, 1, '2018-03-28 13:56:16', 0, 'LFG- A', '0.00', ''),
(1740, 250000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 380, 1, NULL, 1, '2018-03-28 13:57:01', 0, 'LFG- A', '0.00', ''),
(1741, 500000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 570, 1, NULL, 1, '2018-03-28 13:58:12', 0, 'LFG- A', '0.00', ''),
(1742, 500000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 225, 1, NULL, 1, '2018-03-28 13:58:57', 0, 'LFG- A', '0.00', ''),
(1743, 500000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 695, 1, NULL, 1, '2018-03-28 13:59:44', 0, 'LFG- A', '0.00', ''),
(1744, 500000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 240, 1, NULL, 1, '2018-03-28 14:00:31', 0, 'LFG- A', '0.00', ''),
(1745, 500000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 910, 1, NULL, 1, '2018-03-28 14:01:44', 0, 'LFG- A', '0.00', ''),
(1746, 500000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 295, 1, NULL, 1, '2018-03-28 14:02:28', 0, 'LFG- A', '0.00', ''),
(1747, 500000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1170, 1, NULL, 1, '2018-03-28 14:03:18', 0, 'LFG- A', '0.00', ''),
(1748, 500000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 370, 1, NULL, 1, '2018-03-28 14:04:05', 0, 'LFG- A', '0.00', ''),
(1749, 500000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1340, 1, NULL, 1, '2018-03-28 14:05:31', 0, 'LFG- A', '0.00', ''),
(1750, 500000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 455, 1, NULL, 1, '2018-03-28 14:06:19', 0, 'LFG- A', '0.00', ''),
(1751, 500000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1845, 1, NULL, 1, '2018-03-28 14:07:07', 0, 'LFG- A', '0.00', ''),
(1752, 500000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 560, 1, NULL, 1, '2018-03-28 14:07:57', 0, 'LFG- A', '0.00', ''),
(1753, 1000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1040, 1, NULL, 1, '2018-03-28 14:09:08', 0, 'LFG- A', '0.00', ''),
(1754, 1000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 340, 1, NULL, 1, '2018-03-28 14:10:27', 0, 'LFG- A', '0.00', ''),
(1755, 1000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1290, 1, NULL, 1, '2018-03-28 14:11:27', 0, 'LFG- A', '0.00', ''),
(1756, 1000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 390, 1, NULL, 1, '2018-03-28 14:12:09', 0, 'LFG- A', '0.00', ''),
(1757, 1000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1730, 1, NULL, 1, '2018-03-28 14:13:22', 0, 'LFG- A', '0.00', ''),
(1758, 1000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 500, 1, NULL, 1, '2018-03-28 14:14:05', 0, 'LFG- A', '0.00', ''),
(1759, 1000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2160, 1, NULL, 1, '2018-03-28 14:15:09', 0, 'LFG- A', '0.00', ''),
(1760, 1000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 650, 1, NULL, 1, '2018-03-28 14:16:00', 0, 'LFG- A', '0.00', ''),
(1761, 1000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2530, 1, NULL, 1, '2018-03-28 14:17:06', 0, 'LFG- A', '0.00', ''),
(1762, 1000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 820, 1, NULL, 1, '2018-03-28 14:17:47', 0, 'LFG- A', '0.00', ''),
(1763, 1000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3550, 1, NULL, 1, '2018-03-28 14:18:33', 0, 'LFG- A', '0.00', ''),
(1764, 1000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1030, 1, NULL, 1, '2018-03-28 14:19:19', 0, 'LFG- A', '0.00', ''),
(1765, 2000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1990, 1, NULL, 1, '2018-03-28 14:20:52', 0, 'LFG- A', '0.00', ''),
(1766, 2000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 590, 1, NULL, 1, '2018-03-28 14:21:47', 0, 'LFG- A', '0.00', ''),
(1767, 2000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2490, 1, NULL, 1, '2018-03-28 14:22:46', 0, 'LFG- A', '0.00', ''),
(1768, 2000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 690, 1, NULL, 1, '2018-03-28 14:23:50', 0, 'LFG- A', '0.00', ''),
(1769, 2000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3370, 1, NULL, 1, '2018-03-28 14:25:08', 0, 'LFG- A', '0.00', ''),
(1770, 2000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 910, 1, NULL, 1, '2018-03-28 14:26:20', 0, 'LFG- A', '0.00', ''),
(1771, 2000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4230, 1, NULL, 1, '2018-03-28 14:27:16', 0, 'LFG- A', '0.00', ''),
(1772, 2000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1210, 1, NULL, 1, '2018-03-28 14:28:05', 0, 'LFG- A', '0.00', ''),
(1773, 2000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 497, 1, NULL, 1, '2018-03-28 14:29:09', 0, 'LFG- A', '0.00', ''),
(1774, 2000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1550, 1, NULL, 1, '2018-03-28 14:30:18', 0, 'LFG- A', '0.00', ''),
(1775, 2000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7010, 1, NULL, 1, '2018-03-28 14:31:14', 0, 'LFG- A', '0.00', ''),
(1776, 2000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1970, 1, NULL, 1, '2018-03-28 14:32:09', 0, 'LFG- A', '0.00', ''),
(1777, 3000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2940, 1, NULL, 1, '2018-03-28 14:33:30', 0, 'LFG- A', '0.00', ''),
(1778, 3000000, 31, 35, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 840, 1, NULL, 1, '2018-03-28 14:34:24', 0, 'LFG- A', '0.00', ''),
(1779, 3000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3690, 1, NULL, 1, '2018-03-28 14:35:19', 0, 'LFG- A', '0.00', ''),
(1780, 3000000, 31, 35, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 990, 1, NULL, 1, '2018-03-28 14:36:08', 0, 'LFG- A', '0.00', ''),
(1781, 3000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5010, 1, NULL, 1, '2018-03-28 14:37:14', 0, 'LFG- A', '0.00', ''),
(1782, 3000000, 31, 35, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1320, 1, NULL, 1, '2018-03-28 14:38:08', 0, 'LFG- A', '0.00', ''),
(1783, 3000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6300, 1, NULL, 1, '2018-03-28 14:38:58', 0, 'LFG- A', '0.00', ''),
(1784, 3000000, 31, 35, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1770, 1, NULL, 1, '2018-03-28 14:40:03', 0, 'LFG- A', '0.00', ''),
(1785, 3000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7410, 1, NULL, 1, '2018-03-28 14:41:07', 0, 'LFG- A', '0.00', ''),
(1786, 3000000, 31, 35, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2280, 1, NULL, 1, '2018-03-28 14:41:58', 0, 'LFG- A', '0.00', ''),
(1787, 3000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10470, 1, NULL, 1, '2018-03-28 14:42:49', 0, 'LFG- A', '0.00', ''),
(1788, 3000000, 31, 35, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2910, 1, NULL, 1, '2018-03-28 14:43:30', 0, 'LFG- A', '0.00', ''),
(1789, 250000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 615, 1, NULL, 1, '2018-03-28 14:46:46', 0, 'LFG- A', '0.00', ''),
(1790, 250000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 205, 1, NULL, 1, '2018-03-28 14:47:32', 0, 'LFG- A', '0.00', ''),
(1791, 250000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 805, 1, NULL, 1, '2018-03-28 14:48:18', 0, 'LFG- A', '0.00', ''),
(1792, 250000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 238, 1, NULL, 1, '2018-03-28 14:49:35', 0, 'LFG- A', '0.00', ''),
(1793, 250000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 865, 1, NULL, 1, '2018-03-28 14:50:41', 0, 'LFG- A', '0.00', ''),
(1794, 250000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 265, 1, NULL, 1, '2018-03-28 14:51:27', 0, 'LFG- A', '0.00', ''),
(1795, 250000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1088, 1, NULL, 1, '2018-03-28 14:55:43', 0, 'LFG- A', '0.00', ''),
(1796, 250000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 323, 1, NULL, 1, '2018-03-28 14:56:30', 0, 'LFG- A', '0.00', ''),
(1797, 250000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1508, 1, NULL, 1, '2018-03-28 14:58:14', 0, 'LFG- A', '0.00', ''),
(1798, 250000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 413, 1, NULL, 1, '2018-03-28 14:59:18', 0, 'LFG- A', '0.00', ''),
(1799, 250000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2140, 1, NULL, 1, '2018-03-28 15:00:19', 0, 'LFG- A', '0.00', ''),
(1800, 250000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 568, 1, NULL, 1, '2018-03-28 15:01:15', 0, 'LFG- A', '0.00', ''),
(1801, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 870, 1, NULL, 1, '2018-03-28 15:03:06', 0, 'LFG- A', '0.00', ''),
(1802, 500000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 245, 1, NULL, 1, '2018-03-28 15:03:56', 0, 'LFG- A', '0.00', ''),
(1803, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1095, 1, NULL, 1, '2018-03-28 15:04:38', 0, 'LFG- A', '0.00', ''),
(1804, 500000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 290, 1, NULL, 1, '2018-03-28 15:05:21', 0, 'LFG- A', '0.00', ''),
(1805, 250000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1405, 1, NULL, 1, '2018-03-28 15:06:33', 0, 'LFG- A', '0.00', ''),
(1806, 500000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 350, 1, NULL, 1, '2018-03-28 15:07:42', 0, 'LFG- A', '0.00', ''),
(1807, 500000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1985, 1, NULL, 1, '2018-03-28 15:08:48', 0, 'LFG- A', '0.00', ''),
(1808, 500000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 445, 1, NULL, 1, '2018-03-28 15:09:31', 0, 'LFG- A', '0.00', ''),
(1809, 500000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2260, 1, NULL, 1, '2018-03-28 15:10:38', 0, 'LFG- A', '0.00', ''),
(1810, 500000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 535, 1, NULL, 1, '2018-03-28 15:11:56', 0, 'LFG- A', '0.00', ''),
(1811, 500000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3285, 1, NULL, 1, '2018-03-28 15:12:48', 0, 'LFG- A', '0.00', ''),
(1812, 500000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 730, 1, NULL, 1, '2018-03-28 15:13:39', 0, 'LFG- A', '0.00', ''),
(1813, 1000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1590, 1, NULL, 1, '2018-03-28 15:14:49', 0, 'LFG- A', '0.00', ''),
(1814, 1000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 400, 1, NULL, 1, '2018-03-28 15:16:00', 0, 'LFG- A', '0.00', ''),
(1815, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2040, 1, NULL, 1, '2018-03-28 15:16:56', 0, 'LFG- A', '0.00', ''),
(1816, 1000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 460, 1, NULL, 1, '2018-03-28 15:17:47', 0, 'LFG- A', '0.00', ''),
(1817, 1000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2720, 1, NULL, 1, '2018-03-28 15:18:56', 0, 'LFG- A', '0.00', ''),
(1818, 1000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 610, 1, NULL, 1, '2018-03-28 15:19:44', 0, 'LFG- A', '0.00', ''),
(1819, 1000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3800, 1, NULL, 1, '2018-03-28 15:20:38', 0, 'LFG- A', '0.00', ''),
(1820, 1000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 800, 1, NULL, 1, '2018-03-28 15:21:28', 0, 'LFG- A', '0.00', ''),
(1821, 1000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4220, 1, NULL, 1, '2018-03-28 15:23:34', 0, 'LFG- A', '0.00', ''),
(1822, 1000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 980, 1, NULL, 1, '2018-03-28 15:24:25', 0, 'LFG- A', '0.00', ''),
(1823, 1000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6330, 1, NULL, 1, '2018-03-28 15:25:11', 0, 'LFG- A', '0.00', ''),
(1824, 1000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1370, 1, NULL, 1, '2018-03-28 15:25:57', 0, 'LFG- A', '0.00', ''),
(1825, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3090, 1, NULL, 1, '2018-03-28 15:27:14', 0, 'LFG- A', '0.00', ''),
(1826, 2000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 710, 1, NULL, 1, '2018-03-28 15:28:59', 0, 'LFG- A', '0.00', ''),
(1827, 2000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3990, 1, NULL, 1, '2018-03-28 15:29:55', 0, 'LFG- A', '0.00', ''),
(1828, 2000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 830, 1, NULL, 1, '2018-03-28 15:31:13', 0, 'LFG- A', '0.00', ''),
(1829, 2000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5350, 1, NULL, 1, '2018-03-28 15:32:28', 0, 'LFG- A', '0.00', ''),
(1830, 2000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1130, 1, NULL, 1, '2018-03-28 15:33:28', 0, 'LFG- A', '0.00', ''),
(1831, 2000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7510, 1, NULL, 1, '2018-03-28 15:34:23', 0, 'LFG- A', '0.00', ''),
(1832, 2000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1510, 1, NULL, 1, '2018-03-28 15:35:20', 0, 'LFG- A', '0.00', ''),
(1833, 2000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8350, 1, NULL, 1, '2018-03-28 15:36:18', 0, 'LFG- A', '0.00', ''),
(1834, 2000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1870, 1, NULL, 1, '2018-03-28 15:37:14', 0, 'LFG- A', '0.00', ''),
(1835, 2000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12570, 1, NULL, 1, '2018-03-28 15:38:03', 0, 'LFG- A', '0.00', ''),
(1836, 2000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2650, 1, NULL, 1, '2018-03-28 15:39:04', 0, 'LFG- A', '0.00', ''),
(1837, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4590, 1, NULL, 1, '2018-03-28 15:41:12', 0, 'LFG- A', '0.00', ''),
(1838, 3000000, 36, 40, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1020, 1, NULL, 1, '2018-03-28 15:42:12', 0, 'LFG- A', '0.00', ''),
(1839, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5940, 1, NULL, 1, '2018-03-28 15:43:08', 0, 'LFG- A', '0.00', ''),
(1840, 3000000, 36, 40, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1200, 1, NULL, 1, '2018-03-28 15:44:00', 0, 'LFG- A', '0.00', ''),
(1841, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7980, 1, NULL, 1, '2018-03-28 15:45:10', 0, 'LFG- A', '0.00', ''),
(1842, 3000000, 36, 40, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1650, 1, NULL, 1, '2018-03-28 15:46:06', 0, 'LFG- A', '0.00', ''),
(1843, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 11220, 1, NULL, 1, '2018-03-28 15:47:17', 0, 'LFG- A', '0.00', ''),
(1844, 3000000, 36, 40, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2220, 1, NULL, 1, '2018-03-28 15:48:09', 0, 'LFG- A', '0.00', ''),
(1845, 3000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 12480, 1, NULL, 1, '2018-03-28 15:50:02', 0, 'LFG- A', '0.00', ''),
(1846, 3000000, 36, 40, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2760, 1, NULL, 1, '2018-03-28 15:50:49', 0, 'LFG- A', '0.00', ''),
(1847, 3000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18810, 1, NULL, 1, '2018-03-28 15:51:57', 0, 'LFG- A', '0.00', ''),
(1848, 3000000, 36, 40, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3930, 1, NULL, 1, '2018-03-28 15:52:45', 0, 'LFG- A', '0.00', ''),
(1849, 250000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 863, 1, NULL, 1, '2018-03-28 16:11:14', 0, 'LFG- A', '0.00', ''),
(1850, 250000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 265, 1, NULL, 1, '2018-03-28 16:12:12', 0, 'LFG- A', '0.00', ''),
(1851, 250000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1105, 1, NULL, 1, '2018-03-28 16:13:19', 0, 'LFG- A', '0.00', ''),
(1852, 250000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 303, 1, NULL, 1, '2018-03-28 16:14:03', 0, 'LFG- A', '0.00', ''),
(1853, 250000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1230, 1, NULL, 1, '2018-03-28 16:15:38', 0, 'LFG- A', '0.00', ''),
(1854, 250000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 373, 1, NULL, 1, '2018-03-28 16:16:50', 0, 'LFG- A', '0.00', ''),
(1855, 250000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1775, 1, NULL, 1, '2018-03-28 16:18:04', 0, 'LFG- A', '0.00', ''),
(1856, 250000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 495, 1, NULL, 1, '2018-03-28 16:29:12', 0, 'LFG- A', '0.00', ''),
(1857, 250000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2278, 1, NULL, 1, '2018-03-28 16:31:21', 0, 'LFG- A', '0.00', ''),
(1858, 250000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 575, 1, NULL, 1, '2018-03-28 16:33:17', 0, 'LFG- A', '0.00', ''),
(1859, 250000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3283, 1, NULL, 1, '2018-03-28 16:34:34', 0, 'LFG- A', '0.00', ''),
(1860, 250000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 868, 1, NULL, 1, '2018-03-28 16:35:23', 0, 'LFG- A', '0.00', ''),
(1861, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1145, 1, NULL, 1, '2018-03-28 16:37:22', 0, 'LFG- A', '0.00', ''),
(1862, 500000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 310, 1, NULL, 1, '2018-03-28 16:38:41', 0, 'LFG- A', '0.00', ''),
(1863, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1470, 1, NULL, 1, '2018-03-28 16:39:44', 0, 'LFG- A', '0.00', ''),
(1864, 500000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 355, 1, NULL, 1, '2018-03-28 16:40:35', 0, 'LFG- A', '0.00', ''),
(1865, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1895, 1, NULL, 1, '2018-03-28 16:41:40', 0, 'LFG- A', '0.00', ''),
(1866, 500000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 465, 1, NULL, 1, '2018-03-28 16:42:34', 0, 'LFG- A', '0.00', '');
INSERT INTO `products` (`id`, `amount`, `age_start`, `age_end`, `type`, `gender`, `health`, `smoker`, `sku`, `annual_rate`, `status`, `sort_order`, `update_by`, `update_time`, `featured`, `country_category`, `flat_rate`, `year`) VALUES
(1867, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2825, 1, NULL, 1, '2018-03-28 16:43:27', 0, 'LFG- A', '0.00', ''),
(1868, 500000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 590, 1, NULL, 1, '2018-03-28 16:44:23', 0, 'LFG- A', '0.00', ''),
(1869, 500000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3155, 1, NULL, 1, '2018-03-28 16:45:26', 0, 'LFG- A', '0.00', ''),
(1870, 500000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 757, 1, NULL, 1, '2018-03-28 16:46:28', 0, 'LFG- A', '0.00', ''),
(1871, 500000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4730, 1, NULL, 1, '2018-03-28 16:48:51', 0, 'LFG- A', '0.00', ''),
(1872, 500000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1006, 1, NULL, 1, '2018-03-28 16:49:38', 0, 'LFG- A', '0.00', ''),
(1873, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2140, 1, NULL, 1, '2018-03-28 16:50:54', 0, 'LFG- A', '0.00', ''),
(1874, 1000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 502, 1, NULL, 1, '2018-03-28 16:51:47', 0, 'LFG- A', '0.00', ''),
(1875, 1000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2810, 1, NULL, 1, '2018-03-28 16:53:12', 0, 'LFG- A', '0.00', ''),
(1876, 1000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 554, 1, NULL, 1, '2018-03-28 16:53:57', 0, 'LFG- A', '0.00', ''),
(1877, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3690, 1, NULL, 1, '2018-03-28 16:55:23', 0, 'LFG- A', '0.00', ''),
(1878, 1000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 824, 1, NULL, 1, '2018-03-28 16:56:24', 0, 'LFG- A', '0.00', ''),
(1879, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5400, 1, NULL, 1, '2018-03-28 16:57:20', 0, 'LFG- A', '0.00', ''),
(1880, 1000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1080, 1, NULL, 1, '2018-03-28 16:58:58', 0, 'LFG- A', '0.00', ''),
(1881, 1000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5960, 1, NULL, 1, '2018-03-29 17:00:49', 0, 'LFG- A', '0.00', ''),
(1882, 1000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1414, 1, NULL, 1, '2018-03-29 17:01:46', 0, 'LFG- A', '0.00', ''),
(1883, 1000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9150, 1, NULL, 1, '2018-03-29 17:02:42', 0, 'LFG- A', '0.00', ''),
(1884, 1000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1862, 1, NULL, 1, '2018-03-29 17:06:47', 0, 'LFG- A', '0.00', ''),
(1885, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4190, 1, NULL, 1, '2018-03-29 17:08:16', 0, 'LFG- A', '0.00', ''),
(1886, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 914, 1, NULL, 1, '2018-03-29 17:09:34', 0, 'LFG- A', '0.00', ''),
(1887, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 5530, 1, NULL, 1, '2018-03-29 17:11:11', 0, 'LFG- A', '0.00', ''),
(1888, 2000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1018, 1, NULL, 1, '2018-03-29 17:12:31', 0, 'LFG- A', '0.00', ''),
(1889, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7290, 1, NULL, 1, '2018-03-29 17:13:57', 0, 'LFG- A', '0.00', ''),
(1890, 2000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1558, 1, NULL, 1, '2018-03-29 17:15:58', 0, 'LFG- A', '0.00', ''),
(1891, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10710, 1, NULL, 1, '2018-03-29 17:20:15', 0, 'LFG- A', '0.00', ''),
(1892, 2000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2070, 1, NULL, 1, '2018-03-29 17:19:17', 0, 'LFG- A', '0.00', ''),
(1893, 2000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11830, 1, NULL, 1, '2018-03-29 17:22:05', 0, 'LFG- A', '0.00', ''),
(1894, 2000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2738, 1, NULL, 1, '2018-03-29 17:23:17', 0, 'LFG- A', '0.00', ''),
(1895, 2000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18210, 1, NULL, 1, '2018-03-29 17:24:15', 0, 'LFG- A', '0.00', ''),
(1896, 2000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3634, 1, NULL, 1, '2018-03-29 17:25:12', 0, 'LFG- A', '0.00', ''),
(1897, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6240, 1, NULL, 1, '2018-03-29 17:27:07', 0, 'LFG- A', '0.00', ''),
(1898, 3000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1326, 1, NULL, 1, '2018-03-29 17:28:01', 0, 'LFG- A', '0.00', ''),
(1899, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 8250, 1, NULL, 1, '2018-03-29 17:29:08', 0, 'LFG- A', '0.00', ''),
(1900, 3000000, 41, 45, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1482, 1, NULL, 1, '2018-03-29 17:29:55', 0, 'LFG- A', '0.00', ''),
(1901, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10890, 1, NULL, 1, '2018-03-29 17:31:59', 0, 'LFG- A', '0.00', ''),
(1902, 3000000, 41, 45, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2292, 1, NULL, 1, '2018-03-29 17:33:00', 0, 'LFG- A', '0.00', ''),
(1903, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 16020, 1, NULL, 1, '2018-03-29 17:34:02', 0, 'LFG- A', '0.00', ''),
(1904, 3000000, 41, 45, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3060, 1, NULL, 1, '2018-03-29 17:34:58', 0, 'LFG- A', '0.00', ''),
(1905, 3000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17700, 1, NULL, 1, '2018-03-29 17:36:43', 0, 'LFG- A', '0.00', ''),
(1906, 3000000, 41, 45, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4062, 1, NULL, 1, '2018-03-29 17:37:30', 0, 'LFG- A', '0.00', ''),
(1907, 3000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 27270, 1, NULL, 1, '2018-03-29 17:38:23', 0, 'LFG- A', '0.00', ''),
(1908, 3000000, 41, 45, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5406, 1, NULL, 1, '2018-03-29 17:39:12', 0, 'LFG- A', '0.00', ''),
(1909, 250000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1238, 1, NULL, 1, '2018-03-29 17:41:37', 0, 'LFG- A', '0.00', ''),
(1910, 250000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 353, 1, NULL, 1, '2018-03-29 17:43:10', 0, 'LFG- A', '0.00', ''),
(1911, 250000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 1733, 1, NULL, 1, '2018-03-29 17:44:37', 0, 'LFG- A', '0.00', ''),
(1912, 250000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 448, 1, NULL, 1, '2018-03-29 17:45:22', 0, 'LFG- A', '0.00', ''),
(1913, 250000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1925, 1, NULL, 1, '2018-03-29 17:46:33', 0, 'LFG- A', '0.00', ''),
(1914, 250000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 533, 1, NULL, 1, '2018-03-29 17:47:57', 0, 'LFG- A', '0.00', ''),
(1915, 250000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2863, 1, NULL, 1, '2018-03-29 17:49:32', 0, 'LFG- A', '0.00', ''),
(1916, 250000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 753, 1, NULL, 1, '2018-03-29 17:50:18', 0, 'LFG- A', '0.00', ''),
(1917, 250000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3820, 1, NULL, 1, '2018-03-29 17:51:53', 0, 'LFG- A', '0.00', ''),
(1918, 250000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 810, 1, NULL, 1, '2018-03-29 17:52:45', 0, 'LFG- A', '0.00', ''),
(1919, 250000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4528, 1, NULL, 1, '2018-03-29 17:53:45', 0, 'LFG- A', '0.00', ''),
(1920, 250000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1233, 1, NULL, 1, '2018-03-29 17:55:04', 0, 'LFG- A', '0.00', ''),
(1921, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1720, 1, NULL, 1, '2018-03-29 17:57:23', 0, 'LFG- A', '0.00', ''),
(1922, 500000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 420, 1, NULL, 1, '2018-03-29 17:58:31', 0, 'LFG- A', '0.00', ''),
(1923, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2595, 1, NULL, 1, '2018-03-29 17:59:46', 0, 'LFG- A', '0.00', ''),
(1924, 500000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 555, 1, NULL, 1, '2018-03-29 06:00:47', 0, 'LFG- A', '0.00', ''),
(1925, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2960, 1, NULL, 1, '2018-03-29 06:02:19', 0, 'LFG- A', '0.00', ''),
(1926, 500000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 670, 1, NULL, 1, '2018-03-29 06:03:45', 0, 'LFG- A', '0.00', ''),
(1927, 500000, 0, 0, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4630, 1, NULL, 1, '2018-03-29 06:04:48', 0, 'LFG- A', '0.00', ''),
(1928, 500000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 900, 1, NULL, 1, '2018-03-29 06:08:32', 0, 'LFG- A', '0.00', ''),
(1929, 500000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5315, 1, NULL, 1, '2018-03-29 06:09:56', 0, 'LFG- A', '0.00', ''),
(1930, 500000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1165, 1, NULL, 1, '2018-03-29 06:11:02', 0, 'LFG- A', '0.00', ''),
(1931, 500000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6960, 1, NULL, 1, '2018-03-29 06:12:25', 0, 'LFG- A', '0.00', ''),
(1932, 500000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1580, 1, NULL, 1, '2018-03-29 06:13:35', 0, 'LFG- A', '0.00', ''),
(1933, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3240, 1, NULL, 1, '2018-03-29 06:14:43', 0, 'LFG- A', '0.00', ''),
(1934, 1000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 724, 1, NULL, 1, '2018-03-29 06:15:37', 0, 'LFG- A', '0.00', ''),
(1935, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4760, 1, NULL, 1, '2018-03-29 06:16:52', 0, 'LFG- A', '0.00', ''),
(1936, 1000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 864, 1, NULL, 1, '2018-03-29 06:18:16', 0, 'LFG- A', '0.00', ''),
(1937, 1000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5820, 1, NULL, 1, '2018-03-29 06:19:43', 0, 'LFG- A', '0.00', ''),
(1938, 1000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1214, 1, NULL, 1, '2018-03-29 06:20:39', 0, 'LFG- A', '0.00', ''),
(1939, 1000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9060, 1, NULL, 1, '2018-03-29 06:21:47', 0, 'LFG- A', '0.00', ''),
(1940, 1000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1664, 1, NULL, 1, '2018-03-29 06:22:43', 0, 'LFG- A', '0.00', ''),
(1941, 1000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10100, 1, NULL, 1, '2018-03-29 06:23:46', 0, 'LFG- A', '0.00', ''),
(1942, 1000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2164, 1, NULL, 1, '2018-03-29 06:25:16', 0, 'LFG- A', '0.00', ''),
(1943, 1000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13500, 1, NULL, 1, '2018-03-29 06:26:27', 0, 'LFG- A', '0.00', ''),
(1944, 1000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2960, 1, NULL, 1, '2018-03-29 06:27:58', 0, 'LFG- A', '0.00', ''),
(1945, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6390, 1, NULL, 1, '2018-03-29 06:30:12', 0, 'LFG- A', '0.00', ''),
(1946, 2000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1358, 1, NULL, 1, '2018-03-29 06:31:35', 0, 'LFG- A', '0.00', ''),
(1947, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9430, 1, NULL, 1, '2018-03-29 06:32:49', 0, 'LFG- A', '0.00', ''),
(1948, 2000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1638, 1, NULL, 1, '2018-03-29 06:34:01', 0, 'LFG- A', '0.00', ''),
(1949, 2000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 11550, 1, NULL, 1, '2018-03-29 06:45:30', 0, 'LFG- A', '0.00', ''),
(1950, 2000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2338, 1, NULL, 1, '2018-03-29 06:46:43', 0, 'LFG- A', '0.00', ''),
(1951, 2000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18030, 1, NULL, 1, '2018-03-29 06:47:43', 0, 'LFG- A', '0.00', ''),
(1952, 2000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3238, 1, NULL, 1, '2018-03-29 06:48:29', 0, 'LFG- A', '0.00', ''),
(1953, 2000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 20110, 1, NULL, 1, '2018-03-29 06:49:41', 0, 'LFG- A', '0.00', ''),
(1954, 2000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4238, 1, NULL, 1, '2018-03-29 06:51:02', 0, 'LFG- A', '0.00', ''),
(1955, 2000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 26910, 1, NULL, 1, '2018-03-29 06:52:00', 0, 'LFG- A', '0.00', ''),
(1956, 2000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5830, 1, NULL, 1, '2018-03-29 06:53:36', 0, 'LFG- A', '0.00', ''),
(1957, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9540, 1, NULL, 1, '2018-03-29 06:55:46', 0, 'LFG- A', '0.00', ''),
(1958, 3000000, 46, 50, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1992, 1, NULL, 1, '2018-03-29 06:56:41', 0, 'LFG- A', '0.00', ''),
(1959, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 14100, 1, NULL, 1, '2018-03-29 06:57:45', 0, 'LFG- A', '0.00', ''),
(1960, 3000000, 46, 50, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2412, 1, NULL, 1, '2018-03-29 06:59:09', 0, 'LFG- A', '0.00', ''),
(1961, 3000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17280, 1, NULL, 1, '2018-03-29 07:28:02', 0, 'LFG- A', '0.00', ''),
(1962, 3000000, 46, 50, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3462, 1, NULL, 1, '2018-03-29 07:29:38', 0, 'LFG- A', '0.00', ''),
(1963, 3000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 27000, 1, NULL, 1, '2018-03-29 07:30:39', 0, 'LFG- A', '0.00', ''),
(1964, 3000000, 46, 50, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4812, 1, NULL, 1, '2018-03-29 07:31:30', 0, 'LFG- A', '0.00', ''),
(1965, 3000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 30120, 1, NULL, 1, '2018-03-29 07:33:06', 0, 'LFG- A', '0.00', ''),
(1966, 3000000, 46, 50, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6312, 1, NULL, 1, '2018-03-29 07:34:03', 0, 'LFG- A', '0.00', ''),
(1967, 3000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 40320, 1, NULL, 1, '2018-03-29 07:34:54', 0, 'LFG- A', '0.00', ''),
(1968, 3000000, 46, 50, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8700, 1, NULL, 1, '2018-03-29 07:35:32', 0, 'LFG- A', '0.00', ''),
(1969, 250000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 1643, 1, NULL, 1, '2018-03-29 07:37:43', 0, 'LFG- A', '0.00', ''),
(1970, 250000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 470, 1, NULL, 1, '2018-03-29 07:38:42', 0, 'LFG- A', '0.00', ''),
(1971, 250000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 2498, 1, NULL, 1, '2018-03-29 07:39:59', 0, 'LFG- A', '0.00', ''),
(1972, 250000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 645, 1, NULL, 1, '2018-03-29 07:40:39', 0, 'LFG- A', '0.00', ''),
(1973, 250000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2518, 1, NULL, 1, '2018-03-29 07:41:51', 0, 'LFG- A', '0.00', ''),
(1974, 250000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 805, 1, NULL, 1, '2018-03-29 07:42:51', 0, 'LFG- A', '0.00', ''),
(1975, 250000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 4078, 1, NULL, 1, '2018-03-29 07:43:49', 0, 'LFG- A', '0.00', ''),
(1976, 250000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1153, 1, NULL, 1, '2018-03-29 07:44:25', 0, 'LFG- A', '0.00', ''),
(1977, 250000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1340, 1, NULL, 1, '2018-03-29 07:47:36', 0, 'LFG- A', '0.00', ''),
(1978, 250000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2315, 1, NULL, 1, '2018-03-29 07:48:47', 0, 'LFG- A', '0.00', ''),
(1979, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2268, 1, NULL, 1, '2018-03-29 07:51:27', 0, 'LFG- A', '0.00', ''),
(1980, 500000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 618, 1, NULL, 1, '2018-03-29 07:52:35', 0, 'LFG- A', '0.00', ''),
(1981, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3725, 1, NULL, 1, '2018-03-29 07:54:00', 0, 'LFG- A', '0.00', ''),
(1982, 500000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 820, 1, NULL, 1, '2018-03-29 07:54:53', 0, 'LFG- A', '0.00', ''),
(1983, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4025, 1, NULL, 1, '2018-03-29 07:57:05', 0, 'LFG- A', '0.00', ''),
(1984, 500000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1060, 1, NULL, 1, '2018-03-29 07:57:41', 0, 'LFG- A', '0.00', ''),
(1985, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6435, 1, NULL, 1, '2018-03-29 07:59:03', 0, 'LFG- A', '0.00', ''),
(1986, 500000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1415, 1, NULL, 1, '2018-03-29 07:59:45', 0, 'LFG- A', '0.00', ''),
(1987, 500000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2130, 1, NULL, 1, '2018-03-29 08:04:02', 0, 'LFG- A', '0.00', ''),
(1988, 500000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2985, 1, NULL, 1, '2018-03-29 08:05:36', 0, 'LFG- A', '0.00', ''),
(1989, 1000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4320, 1, NULL, 1, '2018-03-29 08:12:11', 0, 'LFG- A', '0.00', ''),
(1990, 1000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1104, 1, NULL, 1, '2018-03-29 08:13:01', 0, 'LFG- A', '0.00', ''),
(1991, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9190, 1, NULL, 1, '2018-03-29 08:14:03', 0, 'LFG- A', '0.00', ''),
(1992, 1000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1531, 1, NULL, 1, '2018-03-29 08:14:48', 0, 'LFG- A', '0.00', ''),
(1993, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7690, 1, NULL, 1, '2018-03-29 08:16:08', 0, 'LFG- A', '0.00', ''),
(1994, 1000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1952, 1, NULL, 1, '2018-03-29 08:17:16', 0, 'LFG- A', '0.00', ''),
(1995, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12730, 1, NULL, 1, '2018-03-29 08:18:49', 0, 'LFG- A', '0.00', ''),
(1996, 1000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2702, 1, NULL, 1, '2018-03-29 08:19:40', 0, 'LFG- A', '0.00', ''),
(1997, 1000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3999, 1, NULL, 1, '2018-03-29 08:22:12', 0, 'LFG- A', '0.00', ''),
(1998, 1000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5651, 1, NULL, 1, '2018-03-29 08:23:19', 0, 'LFG- A', '0.00', ''),
(1999, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 8550, 1, NULL, 1, '2018-03-29 08:25:38', 0, 'LFG- A', '0.00', ''),
(2000, 2000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2118, 1, NULL, 1, '2018-03-29 08:26:38', 0, 'LFG- A', '0.00', ''),
(2001, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 13270, 1, NULL, 1, '2018-03-29 08:27:47', 0, 'LFG- A', '0.00', ''),
(2002, 2000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2972, 1, NULL, 1, '2018-03-29 08:28:51', 0, 'LFG- A', '0.00', ''),
(2003, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 15830, 1, NULL, 1, '2018-03-29 08:32:00', 0, 'LFG- A', '0.00', ''),
(2004, 2000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3814, 1, NULL, 1, '2018-03-29 08:31:28', 0, 'LFG- A', '0.00', ''),
(2005, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 25370, 1, NULL, 1, '2018-03-29 08:33:08', 0, 'LFG- A', '0.00', ''),
(2006, 2000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5314, 1, NULL, 1, '2018-03-29 08:34:02', 0, 'LFG- A', '0.00', ''),
(2007, 2000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7908, 1, NULL, 1, '2018-03-29 08:35:45', 0, 'LFG- A', '0.00', ''),
(2008, 2000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 11212, 1, NULL, 1, '2018-03-29 08:37:07', 0, 'LFG- A', '0.00', ''),
(2009, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 12780, 1, NULL, 1, '2018-03-29 08:40:50', 0, 'LFG- A', '0.00', ''),
(2010, 3000000, 51, 55, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3132, 1, NULL, 1, '2018-03-29 08:41:38', 0, 'LFG- A', '0.00', ''),
(2011, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 19860, 1, NULL, 1, '2018-03-29 08:42:52', 0, 'LFG- A', '0.00', ''),
(2012, 3000000, 51, 55, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4413, 1, NULL, 1, '2018-03-29 08:44:15', 0, 'LFG- A', '0.00', ''),
(2013, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 23700, 1, NULL, 1, '2018-03-29 08:46:34', 0, 'LFG- A', '0.00', ''),
(2014, 3000000, 51, 55, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5676, 1, NULL, 1, '2018-03-29 08:47:23', 0, 'LFG- A', '0.00', ''),
(2015, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 38010, 1, NULL, 1, '2018-03-29 08:48:50', 0, 'LFG- A', '0.00', ''),
(2016, 3000000, 51, 55, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7926, 1, NULL, 1, '2018-03-29 08:49:43', 0, 'LFG- A', '0.00', ''),
(2017, 3000000, 51, 55, '30 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 11817, 1, NULL, 1, '2018-03-29 08:52:00', 0, 'LFG- A', '0.00', ''),
(2018, 3000000, 51, 55, '30 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 16773, 1, NULL, 1, '2018-03-29 08:52:59', 0, 'LFG- A', '0.00', ''),
(2019, 250000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 2510, 1, NULL, 1, '2018-03-29 08:57:26', 0, 'LFG- A', '0.00', ''),
(2020, 250000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 708, 1, NULL, 1, '2018-03-29 08:58:22', 0, 'LFG- A', '0.00', ''),
(2021, 250000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 3988, 1, NULL, 1, '2018-03-29 08:59:34', 0, 'LFG- A', '0.00', ''),
(2022, 250000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 970, 1, NULL, 1, '2018-03-29 09:00:21', 0, 'LFG- A', '0.00', ''),
(2023, 250000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4273, 1, NULL, 1, '2018-03-29 09:03:31', 0, 'LFG- A', '0.00', ''),
(2024, 250000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1830, 1, NULL, 1, '2018-03-29 09:04:05', 0, 'LFG- A', '0.00', ''),
(2025, 250000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6918, 1, NULL, 1, '2018-03-29 09:05:08', 0, 'LFG- A', '0.00', ''),
(2026, 250000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2178, 1, NULL, 1, '2018-03-29 09:06:21', 0, 'LFG- A', '0.00', ''),
(2027, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3770, 1, NULL, 1, '2018-03-29 09:10:53', 0, 'LFG- A', '0.00', ''),
(2028, 500000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 909, 1, NULL, 1, '2018-03-29 09:12:07', 0, 'LFG- A', '0.00', ''),
(2029, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6650, 1, NULL, 1, '2018-03-29 09:13:15', 0, 'LFG- A', '0.00', ''),
(2030, 500000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1335, 1, NULL, 1, '2018-03-29 09:14:20', 0, 'LFG- A', '0.00', ''),
(2031, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7880, 1, NULL, 1, '2018-03-29 09:16:31', 0, 'LFG- A', '0.00', ''),
(2032, 500000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1706, 1, NULL, 1, '2018-03-29 09:17:48', 0, 'LFG- A', '0.00', ''),
(2033, 500000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12890, 1, NULL, 1, '2018-03-29 09:19:01', 0, 'LFG- A', '0.00', ''),
(2034, 500000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2440, 1, NULL, 1, '2018-03-29 09:19:45', 0, 'LFG- A', '0.00', ''),
(2035, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 7370, 1, NULL, 1, '2018-03-29 09:22:53', 0, 'LFG- A', '0.00', ''),
(2036, 1000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1659, 1, NULL, 1, '2018-03-29 09:24:02', 0, 'LFG- A', '0.00', ''),
(2037, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 12780, 1, NULL, 1, '2018-03-29 09:25:40', 0, 'LFG- A', '0.00', ''),
(2038, 1000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2528, 1, NULL, 1, '2018-03-29 09:26:42', 0, 'LFG- A', '0.00', ''),
(2039, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 14110, 1, NULL, 1, '2018-03-29 09:28:16', 0, 'LFG- A', '0.00', ''),
(2040, 1000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3224, 1, NULL, 1, '2018-03-29 09:29:16', 0, 'LFG- A', '0.00', ''),
(2041, 1000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 23160, 1, NULL, 1, '2018-03-29 09:30:14', 0, 'LFG- A', '0.00', ''),
(2042, 1000000, 0, 0, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4783, 1, NULL, 1, '2018-03-29 09:32:28', 0, 'LFG- A', '0.00', ''),
(2043, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 14650, 1, NULL, 1, '2018-03-29 09:34:27', 0, 'LFG- A', '0.00', ''),
(2044, 2000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3228, 1, NULL, 1, '2018-03-29 09:35:34', 0, 'LFG- A', '0.00', ''),
(2045, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 25470, 1, NULL, 1, '2018-03-29 09:36:51', 0, 'LFG- A', '0.00', ''),
(2046, 2000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4966, 1, NULL, 1, '2018-03-29 09:37:47', 0, 'LFG- A', '0.00', ''),
(2047, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 28130, 1, NULL, 1, '2018-03-29 09:40:28', 0, 'LFG- A', '0.00', ''),
(2048, 2000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6358, 1, NULL, 1, '2018-03-29 09:40:43', 0, 'LFG- A', '0.00', ''),
(2049, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 46230, 1, NULL, 1, '2018-03-29 09:42:21', 0, 'LFG- A', '0.00', ''),
(2050, 2000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9476, 1, NULL, 1, '2018-03-29 09:43:19', 0, 'LFG- A', '0.00', ''),
(2051, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 21930, 1, NULL, 1, '2018-03-29 09:47:53', 0, 'LFG- A', '0.00', ''),
(2052, 3000000, 56, 60, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4797, 1, NULL, 1, '2018-03-29 09:47:22', 0, 'LFG- A', '0.00', ''),
(2053, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 38160, 1, NULL, 1, '2018-03-29 09:49:09', 0, 'LFG- A', '0.00', ''),
(2054, 3000000, 56, 60, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7404, 1, NULL, 1, '2018-03-29 09:50:28', 0, 'LFG- A', '0.00', ''),
(2055, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 42150, 1, NULL, 1, '2018-03-29 09:52:20', 0, 'LFG- A', '0.00', ''),
(2056, 3000000, 56, 60, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 9492, 1, NULL, 1, '2018-03-29 09:53:21', 0, 'LFG- A', '0.00', ''),
(2057, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 69300, 1, NULL, 1, '2018-03-29 09:54:26', 0, 'LFG- A', '0.00', ''),
(2058, 3000000, 56, 60, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 14169, 1, NULL, 1, '2018-03-29 09:55:32', 0, 'LFG- A', '0.00', ''),
(2059, 250000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 3690, 1, NULL, 1, '2018-03-29 09:58:13', 0, 'LFG- A', '0.00', ''),
(2060, 250000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1060, 1, NULL, 1, '2018-03-29 09:59:13', 0, 'LFG- A', '0.00', ''),
(2061, 250000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 6383, 1, NULL, 1, '2018-03-29 10:00:13', 0, 'LFG- A', '0.00', ''),
(2062, 250000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 1648, 1, NULL, 1, '2018-03-29 10:06:44', 0, 'LFG- A', '0.00', ''),
(2063, 250000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 6820, 1, NULL, 1, '2018-03-29 10:08:21', 0, 'LFG- A', '0.00', ''),
(2064, 250000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1918, 1, NULL, 1, '2018-03-29 10:09:27', 0, 'LFG- A', '0.00', ''),
(2065, 250000, 0, 0, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 10840, 1, NULL, 1, '2018-03-29 10:10:17', 0, 'LFG- A', '0.00', ''),
(2066, 250000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2540, 1, NULL, 1, '2018-03-29 10:11:07', 0, 'LFG- A', '0.00', ''),
(2067, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5245, 1, NULL, 1, '2018-03-29 10:14:22', 0, 'LFG- A', '0.00', ''),
(2068, 500000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1472, 1, NULL, 1, '2018-03-29 10:15:47', 0, 'LFG- A', '0.00', ''),
(2069, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 9550, 1, NULL, 1, '2018-03-29 10:16:57', 0, 'LFG- A', '0.00', ''),
(2070, 500000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2320, 1, NULL, 1, '2018-03-29 10:18:29', 0, 'LFG- A', '0.00', ''),
(2071, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 13295, 1, NULL, 1, '2018-03-29 10:20:17', 0, 'LFG- A', '0.00', ''),
(2072, 500000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3086, 1, NULL, 1, '2018-03-29 10:21:20', 0, 'LFG- A', '0.00', ''),
(2073, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 21180, 1, NULL, 1, '2018-03-29 10:22:27', 0, 'LFG- A', '0.00', ''),
(2074, 500000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4644, 1, NULL, 1, '2018-03-29 10:23:42', 0, 'LFG- A', '0.00', ''),
(2075, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10400, 1, NULL, 1, '2018-03-29 10:29:06', 0, 'LFG- A', '0.00', ''),
(2076, 1000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2703, 1, NULL, 1, '2018-03-29 10:30:12', 0, 'LFG- A', '0.00', ''),
(2077, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18920, 1, NULL, 1, '2018-03-29 10:31:18', 0, 'LFG- A', '0.00', ''),
(2078, 1000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4418, 1, NULL, 1, '2018-03-29 10:32:34', 0, 'LFG- A', '0.00', ''),
(2079, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 25730, 1, NULL, 1, '2018-03-29 10:34:07', 0, 'LFG- A', '0.00', ''),
(2080, 1000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5773, 1, NULL, 1, '2018-03-29 10:35:42', 0, 'LFG- A', '0.00', ''),
(2081, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 41040, 1, NULL, 1, '2018-03-29 10:36:49', 0, 'LFG- A', '0.00', ''),
(2082, 1000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8793, 1, NULL, 1, '2018-03-29 10:39:26', 0, 'LFG- A', '0.00', ''),
(2083, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 20710, 1, NULL, 1, '2018-03-29 10:41:33', 0, 'LFG- A', '0.00', ''),
(2084, 2000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5316, 1, NULL, 1, '2018-03-29 10:43:16', 0, 'LFG- A', '0.00', ''),
(2085, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 37750, 1, NULL, 1, '2018-03-29 17:08:49', 0, 'LFG- A', '0.00', ''),
(2086, 2000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 8746, 1, NULL, 1, '2018-03-29 17:08:28', 0, 'LFG- A', '0.00', ''),
(2087, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 51370, 1, NULL, 1, '2018-03-29 17:10:17', 0, 'LFG- A', '0.00', ''),
(2088, 2000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 11456, 1, NULL, 1, '2018-03-29 17:11:04', 0, 'LFG- A', '0.00', ''),
(2089, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 81990, 1, NULL, 1, '2018-03-29 17:12:20', 0, 'LFG- A', '0.00', ''),
(2090, 2000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 17496, 1, NULL, 1, '2018-03-29 17:13:19', 0, 'LFG- A', '0.00', ''),
(2091, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 31020, 1, NULL, 1, '2018-03-29 17:15:32', 0, 'LFG- A', '0.00', ''),
(2092, 3000000, 61, 65, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 7929, 1, NULL, 1, '2018-03-29 17:16:25', 0, 'LFG- A', '0.00', ''),
(2093, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 56580, 1, NULL, 1, '2018-03-29 17:17:33', 0, 'LFG- A', '0.00', ''),
(2094, 3000000, 61, 65, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 13074, 1, NULL, 1, '2018-03-29 17:18:25', 0, 'LFG- A', '0.00', ''),
(2095, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 77010, 1, NULL, 1, '2018-03-29 17:20:01', 0, 'LFG- A', '0.00', ''),
(2096, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 17139, 1, NULL, 1, '2018-03-29 17:20:39', 0, 'LFG- A', '0.00', ''),
(2097, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 122940, 1, NULL, 1, '2018-03-29 17:21:42', 0, 'LFG- A', '0.00', ''),
(2098, 3000000, 61, 65, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 26199, 1, NULL, 1, '2018-03-29 17:22:54', 0, 'LFG- A', '0.00', ''),
(2099, 250000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 5505, 1, NULL, 1, '2018-03-29 17:25:33', 0, 'LFG- A', '0.00', ''),
(2100, 250000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 1768, 1, NULL, 1, '2018-03-29 17:26:21', 0, 'LFG- A', '0.00', ''),
(2101, 250000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 7895, 1, NULL, 1, '2018-03-29 17:27:14', 0, 'LFG- A', '0.00', ''),
(2102, 250000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 2828, 1, NULL, 1, '2018-03-29 17:28:16', 0, 'LFG- A', '0.00', ''),
(2103, 250000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3085, 1, NULL, 1, '2018-03-29 17:30:11', 0, 'LFG- A', '0.00', ''),
(2104, 250000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 4790, 1, NULL, 1, '2018-03-29 17:31:30', 0, 'LFG- A', '0.00', ''),
(2105, 500000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 9530, 1, NULL, 1, '2018-03-29 17:34:20', 0, 'LFG- A', '0.00', ''),
(2106, 500000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 2395, 1, NULL, 1, '2018-03-29 17:35:13', 0, 'LFG- A', '0.00', ''),
(2107, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 15570, 1, NULL, 1, '2018-03-29 17:36:14', 0, 'LFG- A', '0.00', ''),
(2108, 500000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 3995, 1, NULL, 1, '2018-03-29 17:37:07', 0, 'LFG- A', '0.00', ''),
(2109, 500000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6684, 1, NULL, 1, '2018-03-29 17:38:49', 0, 'LFG- A', '0.00', ''),
(2110, 500000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9368, 1, NULL, 1, '2018-03-29 17:40:04', 0, 'LFG- A', '0.00', ''),
(2111, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 17610, 1, NULL, 1, '2018-03-29 17:41:38', 0, 'LFG- A', '0.00', ''),
(2112, 1000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 4349, 1, NULL, 1, '2018-03-29 17:42:32', 0, 'LFG- A', '0.00', ''),
(2113, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 30900, 1, NULL, 1, '2018-03-29 17:43:39', 0, 'LFG- A', '0.00', ''),
(2114, 1000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7199, 1, NULL, 1, '2018-03-29 17:44:22', 0, 'LFG- A', '0.00', ''),
(2115, 1000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 12923, 1, NULL, 1, '2018-03-29 17:46:12', 0, 'LFG- A', '0.00', ''),
(2116, 1000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 17999, 1, NULL, 1, '2018-03-29 17:46:44', 0, 'LFG- A', '0.00', ''),
(2117, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 35130, 1, NULL, 1, '2018-03-29 17:48:13', 0, 'LFG- A', '0.00', ''),
(2118, 2000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 8608, 1, NULL, 1, '2018-03-29 17:49:00', 0, 'LFG- A', '0.00', ''),
(2119, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 61710, 1, NULL, 1, '2018-03-29 17:50:07', 0, 'LFG- A', '0.00', ''),
(2120, 2000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 14308, 1, NULL, 1, '2018-03-29 17:50:46', 0, 'LFG- A', '0.00', ''),
(2121, 2000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 25756, 1, NULL, 1, '2018-03-29 17:52:03', 0, 'LFG- A', '0.00', ''),
(2122, 2000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 35908, 1, NULL, 1, '2018-03-29 17:52:49', 0, 'LFG- A', '0.00', ''),
(2123, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 52650, 1, NULL, 1, '2018-03-29 17:54:45', 0, 'LFG- A', '0.00', ''),
(2124, 3000000, 66, 70, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 12867, 1, NULL, 1, '2018-03-29 17:55:47', 0, 'LFG- A', '0.00', ''),
(2125, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 92520, 1, NULL, 1, '2018-03-29 17:56:53', 0, 'LFG- A', '0.00', ''),
(2126, 3000000, 66, 70, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 21417, 1, NULL, 1, '2018-03-29 17:57:39', 0, 'LFG- A', '0.00', ''),
(2127, 3000000, 66, 70, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 35589, 1, NULL, 1, '2018-03-29 17:59:25', 0, 'LFG- A', '0.00', ''),
(2128, 3000000, 66, 70, '20 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 53817, 1, NULL, 1, '2018-03-29 06:00:13', 0, 'LFG- A', '0.00', ''),
(2129, 250000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 10625, 1, NULL, 1, '2018-03-29 06:02:26', 0, 'LFG- A', '0.00', ''),
(2130, 250000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 3685, 1, NULL, 1, '2018-03-29 06:03:10', 0, 'LFG- A', '0.00', ''),
(2131, 250000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 18718, 1, NULL, 1, '2018-03-29 06:03:53', 0, 'LFG- A', '0.00', ''),
(2132, 250000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 5593, 1, NULL, 1, '2018-03-29 06:04:47', 0, 'LFG- A', '0.00', ''),
(2133, 500000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 18725, 1, NULL, 1, '2018-03-29 06:07:51', 0, 'LFG- A', '0.00', ''),
(2134, 500000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 5110, 1, NULL, 1, '2018-03-29 06:08:43', 0, 'LFG- A', '0.00', ''),
(2135, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 30320, 1, NULL, 1, '2018-03-29 06:09:32', 0, 'LFG- A', '0.00', ''),
(2136, 500000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 7615, 1, NULL, 1, '2018-03-29 06:10:33', 0, 'LFG- A', '0.00', ''),
(2137, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 34710, 1, NULL, 1, '2018-03-29 06:11:58', 0, 'LFG- A', '0.00', ''),
(2138, 1000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 9314, 1, NULL, 1, '2018-03-29 06:12:27', 0, 'LFG- A', '0.00', ''),
(2139, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 56290, 1, NULL, 1, '2018-03-29 06:13:44', 0, 'LFG- A', '0.00', ''),
(2140, 1000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 14624, 1, NULL, 1, '2018-03-29 06:14:14', 0, 'LFG- A', '0.00', ''),
(2141, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 69330, 1, NULL, 1, '2018-03-29 06:15:49', 0, 'LFG- A', '0.00', ''),
(2142, 2000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 18538, 1, NULL, 1, '2018-03-29 06:16:25', 0, 'LFG- A', '0.00', ''),
(2143, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 112490, 1, NULL, 1, '2018-03-29 06:17:37', 0, 'LFG- A', '0.00', ''),
(2144, 2000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 29158, 1, NULL, 1, '2018-03-29 06:18:29', 0, 'LFG- A', '0.00', ''),
(2145, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 103950, 1, NULL, 1, '2018-03-29 06:20:17', 0, 'LFG- A', '0.00', ''),
(2146, 3000000, 71, 75, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 27762, 1, NULL, 1, '2018-03-29 06:21:01', 0, 'LFG- A', '0.00', ''),
(2147, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 168690, 1, NULL, 1, '2018-03-29 06:22:09', 0, 'LFG- A', '0.00', ''),
(2148, 3000000, 71, 75, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 43692, 1, NULL, 1, '2018-03-29 06:22:48', 0, 'LFG- A', '0.00', ''),
(2149, 250000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 24990, 1, NULL, 1, '2018-03-29 06:24:14', 0, 'LFG- A', '0.00', ''),
(2150, 250000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 6140, 1, NULL, 1, '2018-03-29 06:24:58', 0, 'LFG- A', '0.00', ''),
(2151, 250000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 34085, 1, NULL, 1, '2018-03-29 06:26:00', 0, 'LFG- A', '0.00', ''),
(2152, 250000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 9040, 1, NULL, 1, '2018-03-29 06:26:31', 0, 'LFG- A', '0.00', ''),
(2153, 500000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 43395, 1, NULL, 1, '2018-03-29 06:28:48', 0, 'LFG- A', '0.00', ''),
(2154, 500000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 13403, 1, NULL, 1, '2018-03-29 06:29:20', 0, 'LFG- A', '0.00', ''),
(2155, 500000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 59210, 1, NULL, 1, '2018-03-29 06:30:14', 0, 'LFG- A', '0.00', ''),
(2156, 500000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 17975, 1, NULL, 1, '2018-03-29 06:31:16', 0, 'LFG- A', '0.00', ''),
(2157, 1000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 80540, 1, NULL, 1, '2018-03-29 06:32:28', 0, 'LFG- A', '0.00', ''),
(2158, 1000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 24299, 1, NULL, 1, '2018-03-29 06:34:08', 0, 'LFG- A', '0.00', ''),
(2159, 1000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 110000, 1, NULL, 1, '2018-03-29 06:35:13', 0, 'LFG- A', '0.00', ''),
(2160, 1000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 33969, 1, NULL, 1, '2018-03-29 06:36:03', 0, 'LFG- A', '0.00', ''),
(2161, 2000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 160990, 1, NULL, 1, '2018-03-29 06:37:16', 0, 'LFG- A', '0.00', ''),
(2162, 2000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 48508, 1, NULL, 1, '2018-03-29 06:37:55', 0, 'LFG- A', '0.00', ''),
(2163, 2000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 219910, 1, NULL, 1, '2018-03-29 06:39:01', 0, 'LFG- A', '0.00', ''),
(2164, 2000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 67848, 1, NULL, 1, '2018-03-29 06:39:39', 0, 'LFG- A', '0.00', ''),
(2165, 3000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 241440, 1, NULL, 1, '2018-03-29 06:41:02', 0, 'LFG- A', '0.00', ''),
(2166, 3000000, 76, 80, '10 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 72717, 1, NULL, 1, '2018-03-29 06:41:47', 0, 'LFG- A', '0.00', ''),
(2167, 3000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'Yes', NULL, 329820, 1, NULL, 1, '2018-03-29 06:42:54', 0, 'LFG- A', '0.00', ''),
(2168, 3000000, 76, 80, '10 Years Level Term', 'Male', 'Proffered Plus', 'No', NULL, 101727, 1, NULL, 1, '2018-03-29 06:43:41', 0, 'LFG- A', '0.00', ''),
(2169, 3000000, 61, 65, '20 Years Level Term', 'Female', 'Proffered Plus', 'No', NULL, 18615, 1, NULL, 1, '2018-04-05 06:41:07', 0, 'A', '0.00', ''),
(2170, 2000000, 41, 45, '10 Years Level Term', 'Female', 'Proffered Plus', 'Yes', NULL, 4975, 1, NULL, 1, '2018-04-05 08:43:49', 0, 'A', '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `products_attribute`
--

CREATE TABLE `products_attribute` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`id`, `product_id`, `category_id`) VALUES
(1671, 1168, 4),
(1672, 1167, 4),
(1673, 1166, 4),
(1674, 1165, 4),
(1675, 1163, 4),
(1676, 1162, 4),
(1677, 1161, 4),
(1680, 1160, 4),
(1681, 1159, 4),
(1682, 1158, 4),
(1683, 1157, 4),
(1684, 1156, 4),
(1685, 1155, 4),
(1686, 1154, 4),
(1687, 1153, 4),
(1688, 1152, 4),
(1689, 1151, 4),
(1690, 1150, 4),
(1691, 1149, 4),
(1692, 1148, 4),
(1693, 1147, 4),
(1694, 1146, 4),
(1695, 1145, 4),
(1696, 1143, 4),
(1697, 1141, 7),
(1698, 1140, 4),
(1699, 1139, 7),
(1700, 1138, 4),
(1701, 1135, 4),
(1702, 1132, 4),
(1703, 1129, 4),
(1704, 1127, 4),
(1705, 1124, 4),
(1706, 1121, 4),
(1707, 1118, 4),
(1708, 1116, 4),
(1709, 1113, 4),
(1710, 1110, 4),
(1711, 1107, 4),
(1712, 1105, 4),
(1713, 1102, 4),
(1714, 1099, 4),
(1715, 1096, 4),
(1716, 1094, 4),
(1717, 1091, 4),
(1718, 1089, 4),
(1719, 1088, 4),
(1720, 1087, 4),
(1721, 1086, 4),
(1722, 1085, 4),
(1723, 1084, 4),
(1724, 1083, 4),
(1725, 1082, 4),
(1726, 1081, 4),
(1727, 1080, 4),
(1728, 1078, 4),
(1729, 1075, 4),
(1730, 1072, 4),
(1731, 1069, 4),
(1732, 1066, 4),
(1733, 1063, 4),
(1734, 1060, 4),
(1735, 1057, 4),
(1736, 1054, 4),
(1737, 1051, 4),
(1738, 1048, 4),
(1739, 1045, 4),
(1740, 1042, 4),
(1741, 1039, 4),
(1742, 1036, 4),
(1743, 1033, 4),
(1744, 1030, 4),
(1745, 1027, 4),
(1746, 1024, 4),
(1747, 1021, 4),
(1748, 1017, 4),
(1749, 1014, 4),
(1750, 1011, 4),
(1751, 1008, 4),
(1752, 1005, 4),
(1753, 1002, 4),
(1754, 999, 4),
(1755, 996, 4),
(1756, 993, 4),
(1757, 990, 4),
(1758, 987, 4),
(1759, 984, 4),
(1760, 981, 4),
(1761, 978, 4),
(1762, 975, 4),
(1763, 972, 4),
(1764, 967, 4),
(1765, 964, 4),
(1766, 961, 4),
(1767, 958, 4),
(1768, 955, 4),
(1769, 952, 4),
(1770, 949, 4),
(1771, 946, 4),
(1772, 941, 4),
(1773, 938, 4),
(1774, 935, 4),
(1775, 932, 4),
(1776, 929, 4),
(1777, 926, 4),
(1778, 923, 4),
(1779, 920, 4),
(1780, 917, 4),
(1781, 915, 4),
(1782, 913, 4),
(1783, 910, 4),
(1784, 907, 4),
(1785, 904, 4),
(1786, 901, 4),
(1787, 898, 4),
(1788, 895, 4),
(1789, 892, 4),
(1790, 889, 4),
(1791, 887, 4),
(1792, 885, 4),
(1793, 882, 4),
(1794, 879, 4),
(1795, 876, 4),
(1796, 873, 4),
(1797, 870, 4),
(1798, 867, 4),
(1799, 864, 4),
(1800, 862, 4),
(1801, 860, 4),
(1802, 858, 4),
(1803, 856, 4),
(1804, 853, 4),
(1805, 850, 4),
(1806, 847, 4),
(1807, 844, 4),
(1808, 841, 4),
(1809, 838, 4),
(1810, 835, 4),
(1811, 832, 4),
(1812, 830, 4),
(1813, 828, 4),
(1814, 826, 4),
(1815, 824, 4),
(1816, 821, 4),
(1817, 818, 4),
(1818, 815, 4),
(1819, 812, 4),
(1820, 809, 4),
(1821, 806, 4),
(1822, 803, 4),
(1823, 800, 4),
(1824, 798, 4),
(1825, 796, 4),
(1826, 794, 4),
(1827, 792, 4),
(1828, 789, 4),
(1829, 786, 4),
(1830, 783, 4),
(1831, 780, 4),
(1832, 777, 4),
(1833, 774, 4),
(1834, 771, 4),
(1835, 768, 4),
(1836, 766, 4),
(1837, 764, 4),
(1840, 757, 4),
(1841, 762, 4),
(1842, 760, 4),
(1843, 754, 4),
(1844, 751, 4),
(1845, 748, 4),
(1846, 745, 4),
(1847, 742, 4),
(1848, 739, 4),
(1849, 736, 4),
(1850, 734, 4),
(1851, 732, 4),
(1852, 730, 4),
(1853, 728, 4),
(1854, 725, 4),
(1855, 722, 4),
(1856, 719, 4),
(1857, 716, 4),
(1858, 713, 4),
(1859, 710, 4),
(1860, 707, 4),
(1861, 704, 4),
(1862, 702, 4),
(1863, 700, 4),
(1864, 698, 4),
(1865, 696, 4),
(1866, 693, 4),
(1867, 690, 4),
(1868, 687, 4),
(1869, 684, 4),
(1870, 681, 4),
(1871, 678, 4),
(1872, 675, 4),
(1873, 672, 4),
(1874, 670, 4),
(1875, 668, 4),
(1876, 666, 4),
(1877, 664, 4),
(1879, 658, 4),
(1880, 661, 4),
(1881, 655, 4),
(1882, 652, 4),
(1883, 649, 4),
(1884, 646, 4),
(1885, 643, 4),
(1886, 640, 4),
(1887, 638, 4),
(1888, 636, 4),
(1889, 634, 4),
(1890, 631, 4),
(1891, 628, 4),
(1892, 625, 4),
(1893, 622, 4),
(1894, 619, 4),
(1895, 616, 4),
(1896, 613, 4),
(1897, 610, 4),
(1898, 607, 4),
(1899, 604, 4),
(1900, 601, 4),
(1901, 598, 4),
(1902, 595, 4),
(1903, 592, 4),
(1904, 589, 4),
(1905, 586, 4),
(1906, 583, 4),
(1907, 562, 4),
(1908, 559, 4),
(1909, 556, 4),
(1910, 553, 4),
(1911, 550, 4),
(1912, 547, 4),
(1913, 544, 4),
(1914, 541, 4),
(1915, 538, 4),
(1916, 535, 4),
(1917, 532, 4),
(1918, 529, 4),
(1919, 526, 4),
(1920, 522, 4),
(1921, 519, 4),
(1922, 516, 4),
(1923, 507, 4),
(1924, 504, 4),
(1925, 501, 4),
(1926, 498, 4),
(1927, 495, 4),
(1928, 492, 4),
(1929, 489, 4),
(1930, 486, 4),
(1931, 483, 4),
(1932, 480, 4),
(1933, 477, 4),
(1934, 474, 4),
(1936, 468, 4),
(1937, 471, 4),
(1938, 465, 4),
(1939, 462, 4),
(1940, 459, 4),
(1941, 456, 4),
(1942, 453, 4),
(1943, 450, 4),
(1944, 447, 4),
(1945, 444, 4),
(1946, 441, 4),
(1947, 438, 4),
(1948, 435, 4),
(1949, 433, 4),
(1950, 431, 4),
(1951, 429, 4),
(1952, 427, 4),
(1953, 425, 4),
(1954, 423, 4),
(1955, 420, 4),
(1956, 417, 4),
(1957, 414, 4),
(1958, 411, 4),
(1959, 408, 4),
(1960, 405, 4),
(1961, 402, 4),
(1962, 399, 4),
(1963, 396, 4),
(1964, 393, 4),
(1965, 390, 4),
(1966, 387, 4),
(1967, 384, 4),
(1968, 381, 4),
(1969, 378, 4),
(1970, 375, 4),
(1971, 372, 4),
(1972, 369, 4),
(1973, 366, 4),
(1974, 360, 4),
(1975, 357, 4),
(1976, 354, 4),
(1977, 352, 4),
(1978, 348, 4),
(1979, 346, 4),
(1980, 344, 4),
(1981, 340, 4),
(1982, 338, 4),
(1983, 336, 4),
(1984, 332, 4),
(1985, 330, 4),
(1986, 327, 4),
(1987, 319, 4),
(1988, 313, 4),
(1989, 307, 4),
(1990, 301, 4),
(1991, 295, 4),
(1992, 289, 4),
(1993, 286, 4),
(1994, 283, 4),
(1995, 280, 4),
(1996, 277, 4),
(1997, 274, 4),
(1998, 271, 4),
(1999, 268, 4),
(2000, 265, 4),
(2001, 262, 4),
(2002, 259, 4),
(2003, 256, 4),
(2004, 254, 4),
(2005, 250, 4),
(2006, 248, 4),
(2007, 246, 4),
(2008, 242, 4),
(2009, 240, 4),
(2010, 238, 4),
(2011, 234, 4),
(2012, 232, 4),
(2013, 229, 4),
(2014, 226, 4),
(2015, 223, 4),
(2016, 220, 4),
(2017, 217, 4),
(2018, 214, 4),
(2019, 211, 4),
(2020, 208, 4),
(2021, 205, 4),
(2022, 202, 4),
(2023, 199, 4),
(2024, 196, 4),
(2025, 193, 4),
(2026, 190, 4),
(2027, 187, 4),
(2028, 184, 4),
(2029, 182, 4),
(2030, 179, 4),
(2031, 176, 4),
(2032, 173, 4),
(2033, 170, 4),
(2034, 167, 4),
(2035, 164, 4),
(2036, 161, 4),
(2037, 159, 4),
(2038, 157, 4),
(2039, 155, 4),
(2040, 153, 4),
(2041, 150, 4),
(2042, 147, 4),
(2043, 144, 4),
(2044, 141, 4),
(2045, 138, 4),
(2046, 135, 4),
(2047, 132, 4),
(2048, 129, 4),
(2049, 126, 4),
(2050, 123, 4),
(2051, 120, 4),
(2052, 117, 4),
(2053, 114, 4),
(2054, 111, 4),
(2055, 108, 4),
(2056, 105, 4),
(2057, 101, 4),
(2058, 103, 4),
(2059, 99, 4),
(2060, 97, 4),
(2061, 95, 4),
(2062, 93, 4),
(2063, 91, 4),
(2064, 89, 4),
(2065, 87, 4),
(2066, 85, 4),
(2067, 83, 4),
(2068, 81, 4),
(2069, 78, 4),
(2070, 75, 4),
(2071, 72, 4),
(2072, 69, 4),
(2073, 66, 4),
(2074, 63, 4),
(2075, 60, 4),
(2076, 57, 4),
(2077, 54, 4),
(2078, 51, 4),
(2079, 48, 4),
(2080, 45, 4),
(2081, 42, 4),
(2082, 39, 4),
(2083, 36, 4),
(2084, 33, 4),
(2085, 30, 4),
(2086, 27, 4),
(2087, 24, 4),
(2088, 21, 4),
(2089, 18, 4),
(2090, 15, 4),
(2091, 12, 4),
(2092, 9, 4),
(2093, 1144, 7),
(2094, 1136, 7),
(2095, 1133, 7),
(2096, 1130, 7),
(2097, 1128, 7),
(2098, 1125, 7),
(2099, 1122, 7),
(2100, 1119, 7),
(2101, 1117, 7),
(2102, 1114, 7),
(2103, 1111, 7),
(2104, 1108, 7),
(2105, 1106, 7),
(2106, 1103, 7),
(2107, 1079, 7),
(2108, 1076, 7),
(2109, 1073, 7),
(2110, 1070, 7),
(2111, 1067, 7),
(2112, 1064, 7),
(2113, 1061, 7),
(2114, 1058, 7),
(2115, 1055, 7),
(2116, 1052, 7),
(2117, 1049, 7),
(2118, 1046, 7),
(2120, 1043, 7),
(2121, 1040, 7),
(2122, 1037, 7),
(2123, 1034, 7),
(2124, 1018, 7),
(2125, 1015, 7),
(2126, 1012, 7),
(2127, 1009, 7),
(2129, 994, 7),
(2130, 991, 7),
(2131, 988, 7),
(2132, 985, 7),
(2133, 968, 7),
(2134, 965, 7),
(2135, 962, 7),
(2136, 959, 7),
(2137, 956, 7),
(2138, 953, 7),
(2139, 950, 7),
(2140, 947, 7),
(2141, 914, 7),
(2142, 911, 7),
(2143, 908, 7),
(2144, 905, 7),
(2148, 1172, 4),
(2153, 1169, 4),
(2154, 1170, 4),
(2156, 1171, 4),
(2157, 1173, 4),
(2159, 1174, 4),
(2160, 1175, 4),
(2161, 1176, 4),
(2162, 1177, 4),
(2163, 1178, 4),
(2164, 1180, 4),
(2165, 1179, 4),
(2166, 1181, 4),
(2167, 1182, 4),
(2168, 1183, 4),
(2169, 1184, 4),
(2170, 1185, 4),
(2171, 1186, 4),
(2172, 1187, 4),
(2173, 1188, 4),
(2174, 1189, 4),
(2175, 1190, 4),
(2176, 1191, 4),
(2178, 1192, 4),
(2179, 1193, 4),
(2180, 1194, 4),
(2181, 1195, 4),
(2182, 1196, 4),
(2183, 1197, 4),
(2184, 1198, 4),
(2185, 1199, 4),
(2186, 1200, 4),
(2187, 1201, 4),
(2188, 1202, 4),
(2189, 1203, 4),
(2190, 1204, 4),
(2191, 1205, 4),
(2192, 1206, 4),
(2193, 1207, 4),
(2194, 1208, 4),
(2195, 1209, 4),
(2196, 1210, 4),
(2197, 1211, 4),
(2198, 1212, 4),
(2199, 1213, 4),
(2200, 1214, 4),
(2201, 1215, 4),
(2202, 1216, 4),
(2203, 1217, 4),
(2204, 1218, 4),
(2205, 1219, 4),
(2206, 1220, 4),
(2207, 1221, 4),
(2208, 1222, 4),
(2209, 1223, 4),
(2210, 1224, 4),
(2211, 1225, 4),
(2212, 1226, 4),
(2213, 1227, 4),
(2214, 1228, 4),
(2215, 1229, 4),
(2216, 1230, 4),
(2217, 1231, 4),
(2218, 1232, 4),
(2219, 1233, 4),
(2221, 1234, 4),
(2222, 1235, 4),
(2223, 1236, 4),
(2224, 1237, 4),
(2225, 1238, 4),
(2226, 1239, 4),
(2227, 1240, 4),
(2228, 1241, 4),
(2229, 1242, 4),
(2231, 1243, 4),
(2232, 1244, 4),
(2233, 1245, 4),
(2234, 1246, 4),
(2235, 1247, 4),
(2236, 1248, 4),
(2237, 1249, 4),
(2240, 1252, 4),
(2241, 1251, 4),
(2242, 1250, 4),
(2243, 1253, 4),
(2244, 1254, 4),
(2245, 1255, 4),
(2246, 1256, 4),
(2247, 1257, 4),
(2248, 1258, 4),
(2249, 1259, 4),
(2251, 1260, 4),
(2252, 1261, 4),
(2253, 1262, 4),
(2254, 1263, 4),
(2255, 1264, 4),
(2256, 1265, 4),
(2258, 1267, 4),
(2259, 1268, 4),
(2260, 1266, 4),
(2261, 1269, 4),
(2262, 1270, 4),
(2263, 1271, 4),
(2264, 1272, 4),
(2265, 1273, 4),
(2266, 1274, 4),
(2267, 1275, 4),
(2268, 1276, 4),
(2269, 1277, 4),
(2270, 1278, 4),
(2271, 1279, 4),
(2272, 1280, 4),
(2274, 1281, 4),
(2275, 1282, 4),
(2276, 1283, 4),
(2277, 1284, 4),
(2278, 1285, 4),
(2279, 1286, 4),
(2280, 1287, 4),
(2281, 1288, 4),
(2282, 1289, 4),
(2283, 1291, 4),
(2284, 1290, 4),
(2285, 1292, 4),
(2286, 1293, 4),
(2287, 1294, 4),
(2288, 1295, 4),
(2289, 1296, 4),
(2290, 1297, 4),
(2291, 1298, 4),
(2292, 1299, 4),
(2293, 1300, 4),
(2294, 1301, 4),
(2295, 1302, 4),
(2296, 1303, 4),
(2298, 1304, 4),
(2299, 1305, 4),
(2300, 1306, 4),
(2301, 1307, 4),
(2302, 1308, 4),
(2303, 1309, 4),
(2304, 1310, 4),
(2305, 1311, 4),
(2306, 1312, 4),
(2307, 1313, 4),
(2308, 1314, 4),
(2309, 1315, 4),
(2310, 1316, 4),
(2311, 1317, 4),
(2312, 1318, 4),
(2314, 1319, 4),
(2315, 1320, 4),
(2316, 1321, 4),
(2317, 1322, 4),
(2318, 1323, 4),
(2319, 1324, 4),
(2320, 1325, 4),
(2321, 1326, 4),
(2322, 1327, 4),
(2323, 1328, 4),
(2324, 1329, 4),
(2325, 1330, 4),
(2327, 1331, 4),
(2328, 1332, 4),
(2329, 1333, 4),
(2331, 1334, 4),
(2332, 1335, 4),
(2333, 1336, 4),
(2334, 1337, 4),
(2335, 1338, 4),
(2336, 1339, 4),
(2337, 1340, 4),
(2338, 1341, 4),
(2339, 1342, 4),
(2340, 1343, 4),
(2341, 1344, 4),
(2342, 1345, 4),
(2343, 1346, 4),
(2344, 1347, 4),
(2345, 1348, 4),
(2346, 1349, 4),
(2347, 1350, 4),
(2348, 1351, 4),
(2349, 1352, 4),
(2350, 1353, 4),
(2351, 1354, 4),
(2352, 1355, 4),
(2353, 1356, 4),
(2355, 1357, 4),
(2356, 1358, 4),
(2357, 1359, 4),
(2358, 1360, 4),
(2359, 1361, 4),
(2360, 1362, 4),
(2361, 1363, 4),
(2362, 1364, 4),
(2363, 1365, 4),
(2364, 1366, 4),
(2365, 1367, 4),
(2366, 1368, 4),
(2367, 1369, 4),
(2368, 1370, 4),
(2369, 1371, 4),
(2370, 1372, 4),
(2371, 1373, 4),
(2372, 1374, 4),
(2373, 1375, 4),
(2374, 1376, 4),
(2376, 1377, 4),
(2377, 1378, 4),
(2378, 1379, 4),
(2379, 1380, 4),
(2381, 1381, 4),
(2382, 1382, 4),
(2383, 1383, 4),
(2384, 1384, 4),
(2385, 1385, 4),
(2386, 1386, 4),
(2387, 1387, 4),
(2388, 1388, 4),
(2389, 1389, 4),
(2390, 1390, 4),
(2391, 1391, 4),
(2392, 1392, 4),
(2393, 1393, 4),
(2394, 1394, 4),
(2395, 1395, 4),
(2396, 1396, 4),
(2397, 1397, 4),
(2398, 1398, 4),
(2399, 1399, 4),
(2400, 1400, 4),
(2401, 1401, 4),
(2402, 1402, 4),
(2403, 1403, 4),
(2404, 1404, 4),
(2405, 1405, 4),
(2406, 1406, 4),
(2407, 1407, 4),
(2408, 1408, 4),
(2409, 1409, 4),
(2410, 1410, 4),
(2411, 1411, 4),
(2412, 1412, 4),
(2413, 1413, 4),
(2414, 1414, 4),
(2415, 1415, 4),
(2416, 1416, 4),
(2417, 1417, 4),
(2418, 1418, 4),
(2419, 1419, 4),
(2420, 1420, 4),
(2421, 1421, 4),
(2422, 1422, 4),
(2423, 1423, 4),
(2424, 1424, 4),
(2425, 1425, 4),
(2426, 1426, 4),
(2427, 1427, 4),
(2428, 1428, 4),
(2429, 1429, 4),
(2430, 1430, 4),
(2431, 1431, 4),
(2432, 1432, 4),
(2433, 1433, 4),
(2434, 1434, 4),
(2435, 1435, 4),
(2436, 1436, 4),
(2437, 1437, 4),
(2438, 1438, 4),
(2439, 1439, 4),
(2440, 1440, 4),
(2441, 1441, 4),
(2442, 1442, 4),
(2443, 1443, 4),
(2444, 1444, 4),
(2445, 1445, 4),
(2446, 1446, 4),
(2447, 1447, 4),
(2448, 1448, 4),
(2449, 1449, 4),
(2450, 1450, 4),
(2451, 1451, 4),
(2452, 1452, 4),
(2453, 1453, 4),
(2454, 1454, 4),
(2455, 1455, 4),
(2456, 1456, 4),
(2457, 1457, 4),
(2458, 1458, 4),
(2459, 1459, 4),
(2460, 1460, 4),
(2461, 1461, 4),
(2462, 1462, 4),
(2463, 1463, 4),
(2464, 1464, 4),
(2465, 1465, 4),
(2466, 1466, 4),
(2467, 1467, 4),
(2468, 1468, 4),
(2469, 1469, 4),
(2470, 1470, 4),
(2471, 1471, 4),
(2472, 1472, 4),
(2473, 1473, 4),
(2474, 1474, 4),
(2475, 1475, 4),
(2476, 1476, 4),
(2477, 1477, 4),
(2478, 1478, 4),
(2479, 1479, 4),
(2480, 1480, 4),
(2481, 1481, 4),
(2482, 1482, 4),
(2483, 1483, 4),
(2484, 1484, 4),
(2485, 1485, 4),
(2487, 1486, 4),
(2488, 1487, 4),
(2489, 1488, 4),
(2490, 1489, 4),
(2491, 1490, 4),
(2492, 1491, 4),
(2493, 1492, 4),
(2494, 1493, 4),
(2495, 1494, 4),
(2496, 1495, 4),
(2497, 1496, 4),
(2498, 1497, 4),
(2499, 1498, 4),
(2500, 1499, 4),
(2501, 1500, 4),
(2502, 1501, 4),
(2503, 1502, 4),
(2504, 1503, 4),
(2505, 1504, 4),
(2506, 1505, 4),
(2507, 1506, 4),
(2509, 1507, 4),
(2510, 1508, 4),
(2511, 1509, 4),
(2513, 1510, 4),
(2514, 1511, 4),
(2515, 1512, 4),
(2516, 1513, 4),
(2517, 1514, 4),
(2518, 1515, 4),
(2519, 1516, 4),
(2520, 1517, 4),
(2521, 1518, 4),
(2522, 1519, 4),
(2523, 1520, 4),
(2524, 1521, 4),
(2525, 1522, 4),
(2526, 1523, 4),
(2527, 1524, 4),
(2528, 1525, 4),
(2530, 1527, 4),
(2531, 1528, 4),
(2532, 1529, 4),
(2533, 1530, 4),
(2534, 1531, 4),
(2535, 1532, 4),
(2536, 1533, 4),
(2537, 1534, 4),
(2538, 1535, 4),
(2539, 1536, 4),
(2540, 1537, 4),
(2541, 1538, 4),
(2542, 1539, 4),
(2543, 1540, 4),
(2544, 1541, 4),
(2545, 1542, 4),
(2546, 1543, 4),
(2547, 1544, 4),
(2548, 1545, 4),
(2549, 1546, 4),
(2550, 1547, 4),
(2551, 1548, 4),
(2552, 1549, 4),
(2553, 1550, 4),
(2554, 1551, 4),
(2555, 1552, 4),
(2557, 1553, 4),
(2558, 1554, 4),
(2559, 1555, 4),
(2560, 1556, 4),
(2561, 1557, 4),
(2562, 1558, 4),
(2563, 1559, 4),
(2564, 1560, 4),
(2565, 1561, 4),
(2566, 1562, 4),
(2568, 1563, 4),
(2569, 1564, 4),
(2570, 1565, 4),
(2571, 1566, 4),
(2572, 1567, 4),
(2573, 1568, 4),
(2574, 1569, 4),
(2575, 1570, 4),
(2576, 1571, 4),
(2577, 1572, 4),
(2578, 1573, 4),
(2579, 1574, 4),
(2580, 1575, 4),
(2581, 1576, 4),
(2582, 1577, 4),
(2583, 1578, 4),
(2584, 1579, 4),
(2585, 1580, 4),
(2586, 1581, 4),
(2587, 1582, 4),
(2588, 1583, 4),
(2589, 1584, 4),
(2590, 1585, 4),
(2591, 1586, 4),
(2593, 1588, 4),
(2594, 1587, 4),
(2595, 1589, 4),
(2596, 1590, 4),
(2597, 1591, 4),
(2598, 1592, 4),
(2599, 1593, 4),
(2600, 1594, 4),
(2601, 1595, 4),
(2602, 1596, 4),
(2603, 1597, 4),
(2604, 1598, 4),
(2605, 1599, 4),
(2606, 1600, 4),
(2607, 1601, 4),
(2608, 1602, 4),
(2609, 1603, 4),
(2610, 1604, 4),
(2611, 1605, 4),
(2612, 1606, 4),
(2613, 1607, 4),
(2614, 1608, 4),
(2615, 1609, 4),
(2616, 1610, 4),
(2617, 1611, 4),
(2618, 1612, 4),
(2619, 1613, 4),
(2620, 1614, 4),
(2621, 1615, 4),
(2622, 1616, 4),
(2623, 1617, 4),
(2624, 1618, 4),
(2625, 1619, 4),
(2626, 1620, 4),
(2627, 1621, 4),
(2628, 1622, 4),
(2629, 1623, 4),
(2630, 1624, 4),
(2631, 1625, 4),
(2632, 1626, 4),
(2633, 1627, 4),
(2634, 1628, 4),
(2635, 1629, 4),
(2636, 1630, 4),
(2637, 1631, 4),
(2638, 1632, 4),
(2639, 1633, 4),
(2640, 1634, 4),
(2641, 1635, 4),
(2642, 1636, 4),
(2643, 1637, 4),
(2644, 1638, 4),
(2645, 1639, 4),
(2646, 1640, 4),
(2648, 1642, 4),
(2649, 1641, 4),
(2650, 1643, 4),
(2651, 1644, 4),
(2652, 1645, 4),
(2653, 1646, 4),
(2654, 1647, 4),
(2655, 1648, 4),
(2656, 1649, 4),
(2657, 1650, 4),
(2658, 1651, 4),
(2659, 1652, 4),
(2660, 1653, 4),
(2661, 1654, 4),
(2662, 1655, 4),
(2663, 1656, 4),
(2664, 1657, 4),
(2665, 1658, 4),
(2666, 1659, 4),
(2667, 1660, 4),
(2668, 1661, 4),
(2669, 1662, 4),
(2670, 1663, 4),
(2671, 1664, 4),
(2672, 1665, 4),
(2673, 1666, 4),
(2674, 1667, 4),
(2675, 1668, 4),
(2676, 902, 7),
(2677, 899, 7),
(2678, 896, 7),
(2679, 893, 7),
(2682, 854, 7),
(2683, 851, 7),
(2684, 848, 7),
(2685, 845, 7),
(2686, 842, 7),
(2687, 839, 7),
(2688, 836, 7),
(2689, 833, 7),
(2690, 1669, 8),
(2691, 1670, 8),
(2692, 1671, 8),
(2704, 1681, 8),
(2705, 1680, 8),
(2706, 1679, 8),
(2707, 1678, 8),
(2708, 1677, 8),
(2709, 1676, 8),
(2710, 1675, 8),
(2711, 1674, 8),
(2712, 1673, 8),
(2713, 1672, 8),
(2714, 1682, 8),
(2715, 1683, 8),
(2717, 1684, 8),
(2718, 1685, 8),
(2719, 1686, 8),
(2720, 1687, 8),
(2721, 1688, 8),
(2722, 1689, 8),
(2723, 1690, 8),
(2724, 1691, 8),
(2725, 1692, 8),
(2726, 1693, 8),
(2727, 1694, 8),
(2728, 1695, 8),
(2729, 1696, 8),
(2730, 1697, 8),
(2731, 1698, 8),
(2732, 1699, 8),
(2733, 1700, 8),
(2734, 1701, 8),
(2735, 1702, 8),
(2736, 1703, 8),
(2737, 1704, 8),
(2738, 1705, 8),
(2739, 1706, 8),
(2740, 1707, 8),
(2741, 1708, 8),
(2742, 1709, 8),
(2743, 1710, 8),
(2744, 1711, 8),
(2745, 1712, 8),
(2746, 1713, 8),
(2747, 1714, 8),
(2748, 1715, 8),
(2749, 1716, 8),
(2750, 1717, 8),
(2751, 1718, 8),
(2752, 1719, 8),
(2753, 1720, 8),
(2754, 1721, 8),
(2755, 1722, 8),
(2756, 1723, 8),
(2757, 1724, 8),
(2758, 1725, 8),
(2759, 1726, 8),
(2760, 1727, 8),
(2761, 1728, 8),
(2762, 1729, 8),
(2763, 1730, 8),
(2764, 1731, 8),
(2765, 1732, 8),
(2766, 1733, 8),
(2767, 1734, 8),
(2768, 1735, 8),
(2769, 1736, 8),
(2770, 1737, 8),
(2771, 1738, 8),
(2772, 1739, 8),
(2773, 1740, 8),
(2774, 1741, 8),
(2775, 1742, 8),
(2776, 1743, 8),
(2777, 1744, 8),
(2778, 1745, 8),
(2779, 1746, 8),
(2780, 1747, 8),
(2781, 1748, 8),
(2782, 1749, 8),
(2783, 1750, 8),
(2784, 1751, 8),
(2785, 1752, 8),
(2786, 1753, 8),
(2788, 1754, 8),
(2789, 1755, 8),
(2790, 1756, 8),
(2791, 1757, 8),
(2792, 1758, 8),
(2793, 1759, 8),
(2794, 1760, 8),
(2795, 1761, 8),
(2796, 1762, 8),
(2797, 1763, 8),
(2798, 1764, 8),
(2799, 1765, 8),
(2800, 1766, 8),
(2801, 1767, 8),
(2802, 1768, 8),
(2803, 1769, 8),
(2804, 1770, 8),
(2805, 1771, 8),
(2806, 1772, 8),
(2807, 1773, 8),
(2808, 1774, 8),
(2809, 1775, 8),
(2810, 1776, 8),
(2811, 1777, 8),
(2812, 1778, 8),
(2813, 1779, 8),
(2814, 1780, 8),
(2815, 1781, 8),
(2816, 1782, 8),
(2817, 1783, 8),
(2818, 1784, 8),
(2819, 1785, 8),
(2820, 1786, 8),
(2821, 1787, 8),
(2822, 1788, 8),
(2823, 1789, 8),
(2824, 1790, 8),
(2825, 1791, 8),
(2826, 1792, 8),
(2827, 1793, 8),
(2828, 1794, 8),
(2829, 1795, 8),
(2830, 1796, 8),
(2832, 1797, 8),
(2833, 1798, 8),
(2834, 1799, 8),
(2835, 1800, 8),
(2836, 1801, 8),
(2837, 1802, 8),
(2838, 1803, 8),
(2839, 1804, 8),
(2840, 1805, 8),
(2841, 1806, 8),
(2842, 1807, 8),
(2843, 1808, 8),
(2844, 1809, 8),
(2845, 1810, 8),
(2846, 1811, 8),
(2847, 1812, 8),
(2848, 1813, 8),
(2849, 1814, 8),
(2850, 1815, 8),
(2851, 1816, 8),
(2852, 1817, 8),
(2853, 1818, 8),
(2854, 1819, 8),
(2855, 1820, 8),
(2856, 1821, 8),
(2857, 1822, 8),
(2858, 1823, 8),
(2859, 1824, 8),
(2860, 1825, 8),
(2861, 1826, 8),
(2862, 1827, 8),
(2863, 1828, 8),
(2864, 1829, 8),
(2865, 1830, 8),
(2866, 1831, 8),
(2867, 1832, 8),
(2868, 1833, 8),
(2869, 1834, 8),
(2870, 1835, 8),
(2871, 1836, 8),
(2872, 1837, 8),
(2873, 1838, 8),
(2874, 1839, 8),
(2875, 1840, 8),
(2876, 1841, 8),
(2877, 1842, 8),
(2878, 1843, 8),
(2879, 1844, 8),
(2881, 1845, 8),
(2882, 1846, 8),
(2883, 1847, 8),
(2884, 1848, 8),
(2885, 1849, 8),
(2886, 1850, 8),
(2887, 1851, 8),
(2888, 1852, 8),
(2889, 1853, 8),
(2890, 1854, 8),
(2891, 1855, 8),
(2892, 1856, 8),
(2894, 1857, 8),
(2895, 1858, 8),
(2896, 1859, 8),
(2897, 1860, 8),
(2898, 1861, 8),
(2899, 1862, 8),
(2900, 1863, 8),
(2901, 1864, 8),
(2902, 1865, 8),
(2903, 1866, 8),
(2904, 1867, 8),
(2905, 1868, 8),
(2906, 1869, 8),
(2907, 1870, 8),
(2908, 1871, 8),
(2909, 1872, 8),
(2910, 1873, 8),
(2911, 1874, 8),
(2912, 1875, 8),
(2913, 1876, 8),
(2914, 1877, 8),
(2915, 1878, 8),
(2916, 1879, 8),
(2917, 1880, 8),
(2918, 1881, 8),
(2919, 1882, 8),
(2920, 1883, 8),
(2921, 1884, 8),
(2922, 1885, 8),
(2923, 1886, 8),
(2924, 1887, 8),
(2925, 1888, 8),
(2926, 1889, 8),
(2928, 1890, 8),
(2931, 1892, 8),
(2932, 1891, 8),
(2933, 1893, 8),
(2934, 1894, 8),
(2935, 1895, 8),
(2936, 1896, 8),
(2937, 1897, 8),
(2938, 1898, 8),
(2939, 1899, 8),
(2940, 1900, 8),
(2941, 1901, 8),
(2942, 1902, 8),
(2943, 1903, 8),
(2944, 1904, 8),
(2945, 1905, 8),
(2946, 1906, 8),
(2947, 1907, 8),
(2948, 1908, 8),
(2949, 1909, 8),
(2950, 1910, 8),
(2951, 1911, 8),
(2952, 1912, 8),
(2953, 1913, 8),
(2954, 1914, 8),
(2955, 1915, 8),
(2956, 1916, 8),
(2957, 1917, 8),
(2958, 1918, 8),
(2959, 1919, 8),
(2960, 1920, 8),
(2961, 1921, 8),
(2962, 1922, 8),
(2963, 1923, 8),
(2964, 1924, 8),
(2965, 1925, 8),
(2966, 1926, 8),
(2967, 1927, 8),
(2968, 1928, 8),
(2969, 1929, 8),
(2970, 1930, 8),
(2971, 1931, 8),
(2972, 1932, 8),
(2973, 1933, 8),
(2974, 1934, 8),
(2975, 1935, 8),
(2976, 1936, 8),
(2977, 1937, 8),
(2978, 1938, 8),
(2979, 1939, 8),
(2980, 1940, 8),
(2981, 1941, 8),
(2982, 1942, 8),
(2983, 1943, 8),
(2984, 1944, 8),
(2985, 1945, 8),
(2987, 1946, 8),
(2988, 1947, 8),
(2989, 1948, 8),
(2990, 1949, 8),
(2991, 1950, 8),
(2992, 1951, 8),
(2993, 1952, 8),
(2994, 1953, 8),
(2995, 1954, 8),
(2996, 1955, 8),
(2998, 1956, 8),
(2999, 1957, 8),
(3000, 1958, 8),
(3001, 1959, 8),
(3002, 1960, 8),
(3003, 1961, 8),
(3005, 1962, 8),
(3006, 1963, 8),
(3007, 1964, 8),
(3008, 1965, 8),
(3009, 1966, 8),
(3010, 1967, 8),
(3011, 1968, 8),
(3012, 1969, 8),
(3013, 1970, 8),
(3014, 1971, 8),
(3015, 1972, 8),
(3016, 1973, 8),
(3017, 1974, 8),
(3018, 1975, 8),
(3019, 1976, 8),
(3021, 1977, 8),
(3022, 1978, 8),
(3024, 1979, 8),
(3025, 1980, 8),
(3026, 1981, 8),
(3027, 1982, 8),
(3028, 1983, 8),
(3029, 1984, 8),
(3030, 1985, 8),
(3031, 1986, 8),
(3032, 1987, 8),
(3033, 1988, 8),
(3034, 1989, 8),
(3035, 1990, 8),
(3036, 1991, 8),
(3037, 1992, 8),
(3038, 1993, 8),
(3040, 1994, 8),
(3042, 1995, 8),
(3043, 1996, 8),
(3044, 1997, 8),
(3045, 1998, 8),
(3046, 1999, 8),
(3047, 2000, 8),
(3048, 2001, 8),
(3049, 2002, 8),
(3051, 2004, 8),
(3052, 2003, 8),
(3053, 2005, 8),
(3054, 2006, 8),
(3055, 2007, 8),
(3057, 2008, 8),
(3058, 2009, 8),
(3059, 2010, 8),
(3060, 2011, 8),
(3061, 2012, 8),
(3062, 2013, 8),
(3063, 2014, 8),
(3064, 2015, 8),
(3065, 2016, 8),
(3066, 2017, 8),
(3067, 2018, 8),
(3068, 2019, 8),
(3069, 2020, 8),
(3070, 2021, 8),
(3071, 2022, 8),
(3074, 2023, 8),
(3075, 2024, 8),
(3076, 2025, 8),
(3077, 2026, 8),
(3078, 2027, 8),
(3079, 2028, 8),
(3080, 2029, 8),
(3081, 2030, 8),
(3082, 2031, 8),
(3083, 2032, 8),
(3084, 2033, 8),
(3085, 2034, 8),
(3086, 2035, 8),
(3087, 2036, 8),
(3088, 2037, 8),
(3089, 2038, 8),
(3090, 2039, 8),
(3091, 2040, 8),
(3092, 2041, 8),
(3093, 2042, 8),
(3094, 2043, 8),
(3095, 2044, 8),
(3096, 2045, 8),
(3097, 2046, 8),
(3100, 2047, 8),
(3101, 2048, 8),
(3102, 2049, 8),
(3103, 2050, 8),
(3105, 2052, 8),
(3106, 2051, 8),
(3107, 2053, 8),
(3108, 2054, 8),
(3110, 2055, 8),
(3111, 2056, 8),
(3112, 2057, 8),
(3113, 2058, 8),
(3114, 2059, 8),
(3115, 2060, 8),
(3116, 2061, 8),
(3117, 2062, 8),
(3118, 2063, 8),
(3120, 2064, 8),
(3121, 2065, 8),
(3122, 2066, 8),
(3123, 2067, 8),
(3124, 2068, 8),
(3125, 2069, 8),
(3127, 2070, 8),
(3128, 2071, 8),
(3129, 2072, 8),
(3130, 2073, 8),
(3131, 2074, 8),
(3132, 2075, 8),
(3133, 2076, 8),
(3134, 2077, 8),
(3135, 2078, 8),
(3136, 2079, 8),
(3137, 2080, 8),
(3138, 2081, 8),
(3139, 2082, 8),
(3140, 2083, 8),
(3142, 2084, 8),
(3145, 2086, 8),
(3146, 2085, 8),
(3147, 2087, 8),
(3148, 2088, 8),
(3149, 2089, 8),
(3150, 2090, 8),
(3151, 2091, 8),
(3152, 2092, 8),
(3153, 2093, 8),
(3154, 2094, 8),
(3155, 2095, 8),
(3156, 2096, 8),
(3157, 2097, 8),
(3158, 2098, 8),
(3160, 2099, 8),
(3161, 2100, 8),
(3162, 2101, 8),
(3163, 2102, 8),
(3164, 2103, 8),
(3165, 2104, 8),
(3166, 2105, 8),
(3167, 2106, 8),
(3168, 2107, 8),
(3169, 2108, 8),
(3170, 2109, 8),
(3171, 2110, 8),
(3172, 2111, 8),
(3173, 2112, 8),
(3174, 2113, 8),
(3175, 2114, 8),
(3176, 2115, 8),
(3177, 2116, 8),
(3178, 2117, 8),
(3179, 2118, 8),
(3180, 2119, 8),
(3181, 2120, 8),
(3182, 2121, 8),
(3183, 2122, 8),
(3184, 2123, 8),
(3185, 2124, 8),
(3186, 2125, 8),
(3187, 2126, 8),
(3189, 2127, 8),
(3190, 2128, 8),
(3191, 2129, 8),
(3192, 2130, 8),
(3193, 2131, 8),
(3194, 2132, 8),
(3195, 2133, 8),
(3196, 2134, 8),
(3197, 2135, 8),
(3198, 2136, 8),
(3199, 2137, 8),
(3200, 2138, 8),
(3201, 2139, 8),
(3202, 2140, 8),
(3203, 2141, 8),
(3204, 2142, 8),
(3205, 2143, 8),
(3206, 2144, 8),
(3207, 2145, 8),
(3208, 2146, 8),
(3209, 2147, 8),
(3210, 2148, 8),
(3211, 2149, 8),
(3212, 2150, 8),
(3213, 2151, 8),
(3214, 2152, 8),
(3215, 2153, 8),
(3216, 2154, 8),
(3217, 2155, 8),
(3218, 2156, 8),
(3219, 2157, 8),
(3221, 2158, 8),
(3222, 2159, 8),
(3223, 2160, 8),
(3224, 2161, 8),
(3225, 2162, 8),
(3226, 2163, 8),
(3227, 2164, 8),
(3228, 2165, 8),
(3229, 2166, 8),
(3230, 2167, 8),
(3231, 2168, 8),
(3238, 790, 7),
(3239, 787, 7),
(3240, 784, 7),
(3241, 781, 7),
(3244, 775, 7),
(3245, 778, 7),
(3246, 772, 7),
(3247, 769, 7),
(3248, 726, 7),
(3249, 723, 7),
(3250, 720, 7),
(3251, 717, 7),
(3252, 714, 7),
(3253, 711, 7),
(3254, 708, 7),
(3255, 705, 7),
(3256, 662, 7),
(3257, 659, 7),
(3258, 656, 7),
(3259, 653, 7),
(3260, 650, 7),
(3261, 647, 7),
(3262, 644, 7),
(3263, 641, 7),
(3264, 605, 7),
(3265, 599, 7),
(3266, 2169, 7),
(3267, 596, 7),
(3268, 593, 7),
(3269, 590, 7),
(3270, 587, 7),
(3271, 584, 7),
(3272, 563, 7),
(3273, 560, 7),
(3274, 557, 7),
(3275, 554, 7),
(3276, 551, 7),
(3277, 548, 7),
(3278, 545, 7),
(3279, 542, 7),
(3280, 539, 7),
(3281, 536, 7),
(3282, 533, 7),
(3283, 530, 7),
(3284, 527, 7),
(3285, 523, 7),
(3286, 520, 7),
(3287, 517, 7),
(3288, 508, 7),
(3289, 505, 7),
(3290, 502, 7),
(3291, 499, 7),
(3292, 496, 7),
(3293, 493, 7),
(3294, 490, 7),
(3295, 487, 7),
(3296, 484, 7),
(3297, 481, 7),
(3298, 478, 7),
(3299, 475, 7),
(3300, 472, 7),
(3301, 469, 7),
(3302, 466, 7),
(3303, 463, 7),
(3304, 460, 7),
(3305, 457, 7),
(3306, 454, 7),
(3307, 451, 7),
(3308, 448, 7),
(3309, 445, 7),
(3310, 442, 7),
(3311, 439, 7),
(3312, 424, 7),
(3313, 421, 7),
(3314, 418, 7),
(3315, 415, 7),
(3316, 412, 7),
(3317, 409, 7),
(3318, 406, 7),
(3319, 403, 7),
(3320, 400, 7),
(3321, 397, 7),
(3322, 394, 7),
(3323, 391, 7),
(3324, 388, 7),
(3325, 385, 7),
(3326, 382, 7),
(3327, 379, 7),
(3328, 376, 7),
(3329, 373, 7),
(3330, 370, 7),
(3331, 367, 7),
(3332, 364, 7),
(3333, 361, 7),
(3334, 358, 7),
(3335, 355, 7),
(3336, 328, 7),
(3337, 325, 7),
(3338, 320, 7),
(3339, 317, 7),
(3340, 314, 7),
(3341, 311, 7),
(3342, 308, 7),
(3343, 305, 7),
(3344, 302, 7),
(3345, 299, 7),
(3346, 296, 7),
(3347, 293, 7),
(3349, 290, 7),
(3350, 287, 7),
(3351, 284, 7),
(3352, 281, 7),
(3353, 278, 7),
(3354, 275, 7),
(3355, 272, 7),
(3356, 269, 7),
(3357, 266, 7),
(3358, 263, 7),
(3359, 260, 7),
(3360, 257, 7),
(3361, 230, 7),
(3362, 227, 7),
(3363, 224, 7),
(3364, 221, 7),
(3365, 218, 7),
(3366, 215, 7),
(3367, 212, 7),
(3368, 209, 7),
(3369, 206, 7),
(3370, 203, 7),
(3371, 200, 7),
(3372, 197, 7),
(3374, 194, 7),
(3375, 191, 7),
(3376, 188, 7),
(3377, 185, 7),
(3379, 180, 7),
(3380, 2170, 7),
(3381, 177, 7),
(3382, 174, 7),
(3383, 171, 7),
(3384, 168, 7),
(3385, 165, 7),
(3386, 162, 7),
(3387, 151, 7),
(3388, 148, 7),
(3389, 145, 7),
(3390, 142, 7),
(3391, 139, 7),
(3392, 136, 7),
(3393, 133, 7),
(3394, 130, 7),
(3395, 127, 7),
(3396, 124, 7),
(3397, 121, 7),
(3398, 118, 7),
(3399, 115, 7),
(3400, 112, 7),
(3401, 109, 7),
(3402, 106, 7),
(3403, 79, 7),
(3404, 76, 7),
(3405, 73, 7),
(3406, 70, 7),
(3407, 67, 7),
(3408, 64, 7),
(3409, 61, 7),
(3410, 58, 7),
(3411, 55, 7),
(3412, 52, 7),
(3413, 49, 7),
(3414, 46, 7),
(3415, 43, 7),
(3416, 40, 7),
(3417, 37, 7),
(3418, 34, 7),
(3419, 31, 7),
(3420, 28, 7),
(3422, 25, 7),
(3423, 22, 7),
(3424, 19, 7),
(3425, 16, 7),
(3426, 13, 7),
(3427, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products_discount`
--

CREATE TABLE `products_discount` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `from_date` timestamp NULL DEFAULT NULL,
  `to_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_filter`
--

CREATE TABLE `products_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_image`
--

CREATE TABLE `products_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_option`
--

CREATE TABLE `products_option` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `isrequired` varchar(5) NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_option_item`
--

CREATE TABLE `products_option_item` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `option_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `price` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_rating_review`
--

CREATE TABLE `products_rating_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating_score` int(5) NOT NULL,
  `review_title` varchar(20) NOT NULL,
  `review_description` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_related_product`
--

CREATE TABLE `products_related_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `related_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_wishlist`
--

CREATE TABLE `products_wishlist` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `sort_order`) VALUES
(1, 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `first_amount` decimal(11,2) NOT NULL,
  `first_lable` varchar(50) NOT NULL,
  `first_banner` varchar(100) NOT NULL,
  `bank_account` varchar(300) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_info`
--

CREATE TABLE `shipping_info` (
  `id` int(11) NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `street_address` varchar(300) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `city` int(11) NOT NULL,
  `country` int(11) NOT NULL DEFAULT 1,
  `pincode` varchar(20) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `additional_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slideshow_items`
--

CREATE TABLE `slideshow_items` (
  `id` int(11) NOT NULL,
  `slideshow_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `tag_line` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

CREATE TABLE `social_settings` (
  `id` int(11) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `google` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_block`
--

CREATE TABLE `sub_category_block` (
  `category_block_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `role` int(11) NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT 0,
  `verification_code` varchar(400) DEFAULT NULL,
  `forgot_pass_code` varchar(300) NOT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `from` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `active`, `email`, `first_name`, `last_name`, `phone`, `gender`, `role`, `email_verified`, `verification_code`, `forgot_pass_code`, `last_login_time`, `from`) VALUES
(1, 'admin', '379c988d75f1cef6456b02f0ba90281d', 1, 'info@insurance.com', 'Coder71', 'CMS', '01711111111', '', 1, 1, NULL, '', '2018-08-02 03:17:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_oauth`
--

CREATE TABLE `user_oauth` (
  `user_id` int(11) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `identifier` varchar(64) NOT NULL,
  `profile_cache` text DEFAULT NULL,
  `session_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_group`
--
ALTER TABLE `attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_block`
--
ALTER TABLE `category_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_category`
--
ALTER TABLE `country_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_request`
--
ALTER TABLE `customer_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_items`
--
ALTER TABLE `deal_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_id` (`deal_id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first`
--
ALTER TABLE `first`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_item`
--
ALTER TABLE `option_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_process`
--
ALTER TABLE `order_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_fk` (`order_id_fk`,`products_id_fk`),
  ADD KEY `products_id_fk` (`products_id_fk`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attribute`
--
ALTER TABLE `products_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products_discount`
--
ALTER TABLE `products_discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products_filter`
--
ALTER TABLE `products_filter`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `filter_id` (`filter_id`);

--
-- Indexes for table `products_image`
--
ALTER TABLE `products_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products_option`
--
ALTER TABLE `products_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products_option_item`
--
ALTER TABLE `products_option_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_option_id` (`product_option_id`);

--
-- Indexes for table `products_rating_review`
--
ALTER TABLE `products_rating_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products_related_product`
--
ALTER TABLE `products_related_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `related_product_id` (`related_product_id`);

--
-- Indexes for table `products_wishlist`
--
ALTER TABLE `products_wishlist`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_info`
--
ALTER TABLE `shipping_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshow_items`
--
ALTER TABLE `slideshow_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slideshow_id` (`slideshow_id`);

--
-- Indexes for table `social_settings`
--
ALTER TABLE `social_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_oauth`
--
ALTER TABLE `user_oauth`
  ADD PRIMARY KEY (`provider`,`identifier`),
  ADD UNIQUE KEY `unic_user_id_name` (`user_id`,`provider`),
  ADD KEY `oauth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_group`
--
ALTER TABLE `attribute_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_block`
--
ALTER TABLE `category_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `country_category`
--
ALTER TABLE `country_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_request`
--
ALTER TABLE `customer_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `deal`
--
ALTER TABLE `deal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_items`
--
ALTER TABLE `deal_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first`
--
ALTER TABLE `first`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_item`
--
ALTER TABLE `option_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_process`
--
ALTER TABLE `order_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2171;

--
-- AUTO_INCREMENT for table `products_attribute`
--
ALTER TABLE `products_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3428;

--
-- AUTO_INCREMENT for table `products_discount`
--
ALTER TABLE `products_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_image`
--
ALTER TABLE `products_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_option`
--
ALTER TABLE `products_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_option_item`
--
ALTER TABLE `products_option_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_rating_review`
--
ALTER TABLE `products_rating_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_related_product`
--
ALTER TABLE `products_related_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_info`
--
ALTER TABLE `shipping_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slideshow_items`
--
ALTER TABLE `slideshow_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_settings`
--
ALTER TABLE `social_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_block`
--
ALTER TABLE `category_block`
  ADD CONSTRAINT `category_block_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deal_items`
--
ALTER TABLE `deal_items`
  ADD CONSTRAINT `deal_items_ibfk_1` FOREIGN KEY (`deal_id`) REFERENCES `deal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`order_id_fk`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_attribute`
--
ALTER TABLE `products_attribute`
  ADD CONSTRAINT `products_attribute_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_attribute_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_category`
--
ALTER TABLE `products_category`
  ADD CONSTRAINT `products_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_discount`
--
ALTER TABLE `products_discount`
  ADD CONSTRAINT `products_discount_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_filter`
--
ALTER TABLE `products_filter`
  ADD CONSTRAINT `products_filter_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_filter_ibfk_2` FOREIGN KEY (`filter_id`) REFERENCES `filter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_image`
--
ALTER TABLE `products_image`
  ADD CONSTRAINT `products_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_option`
--
ALTER TABLE `products_option`
  ADD CONSTRAINT `products_option_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_option_item`
--
ALTER TABLE `products_option_item`
  ADD CONSTRAINT `products_option_item_ibfk_1` FOREIGN KEY (`product_option_id`) REFERENCES `products_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_rating_review`
--
ALTER TABLE `products_rating_review`
  ADD CONSTRAINT `products_rating_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_rating_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_wishlist`
--
ALTER TABLE `products_wishlist`
  ADD CONSTRAINT `products_wishlist_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_wishlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipping_info`
--
ALTER TABLE `shipping_info`
  ADD CONSTRAINT `shipping_info_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slideshow_items`
--
ALTER TABLE `slideshow_items`
  ADD CONSTRAINT `slideshow_items_ibfk_1` FOREIGN KEY (`slideshow_id`) REFERENCES `slideshow` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
