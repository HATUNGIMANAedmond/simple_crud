-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2024 at 08:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_crud_php-master (2)`
--

-- --------------------------------------------------------

--
-- Table structure for table `citoyen`
--

CREATE TABLE `citoyen` (
  `idcitoyen` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `genre` tinyint(4) NOT NULL,
  `nationalite` int(11) NOT NULL,
  `telephone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citoyen`
--

INSERT INTO `citoyen` (`idcitoyen`, `nom`, `prenom`, `adresse`, `genre`, `nationalite`, `telephone`) VALUES
(9, 'Nirema', 'TESTTOO', 'Kinanira', 1, 4, '768883549939993'),
(10, 'TESTTOO', 'TEST', 'Kinan', 2, 63, '69462014'),
(13, 'TESTTOO', 'TESTTOO', 'Kinanira', 2, 17, '768883549939993888'),
(15, 'Nirema', 'Eloge', 'Kinanira', 1, 24, '76888888'),
(16, 'amiss', 'bigirimana', 'mugerama', 1, 17, '79945455'),
(17, 'amiss', 'bigirimana', 'mugerama', 2, 13, '79945455'),
(18, 'edd', 'hat', 'kajaga', 1, 15, '71977537'),
(19, 'ytutu', 'ggg', 'tyt', 1, 8, '98776655'),
(20, 'jj', 'oiuy', 'def', 2, 5, '87654433'),
(21, 'kevin', 'gryurufhg', 'dgfhf', 1, 5, '546474744848'),
(22, 'dsfgs', 'rtry', '124', 0, 0, 't6y'),
(23, 'dodo', 'ytu', 'kaa', 0, 0, '43536363'),
(24, 'fghhj', 'tyyu', 'cf', 2, 11, '8976');

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `code` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`id`, `name`, `code`) VALUES
(2, 'Andorra', 'AD'),
(3, 'United Arab Emirates', 'AE'),
(4, 'Afghanistan', 'AF'),
(5, 'Antigua and Barbuda', 'AG'),
(6, 'Anguilla', 'AI'),
(7, 'Albania', 'AL'),
(8, 'Armenia', 'AM'),
(9, 'Angola', 'AO'),
(10, 'Antarctica', 'AQ'),
(11, 'Argentina', 'AR'),
(12, 'American Samoa', 'AS'),
(13, 'Austria', 'AT'),
(14, 'Australia', 'AU'),
(15, 'Aruba', 'AW'),
(17, 'Azerbaijan', 'AZ'),
(18, 'Bosnia and Herzegovina', 'BA'),
(19, 'Barbados', 'BB'),
(20, 'Bangladesh', 'BD'),
(21, 'Belgium', 'BE'),
(22, 'Burkina Faso', 'BF'),
(23, 'Bulgaria', 'BG'),
(24, 'Bahrain', 'BH'),
(25, 'Burundi', 'BI'),
(26, 'Benin', 'BJ'),
(27, 'Saint Barth?lemy', 'BL'),
(28, 'Bermuda', 'BM'),
(29, 'Brunei Darussalam', 'BN'),
(30, 'Bolivia', 'BO'),
(31, 'Caribbean Netherlands ', 'BQ'),
(32, 'Brazil', 'BR'),
(33, 'Bahamas', 'BS'),
(34, 'Bhutan', 'BT'),
(35, 'Bouvet Island', 'BV'),
(36, 'Botswana', 'BW'),
(37, 'Belarus', 'BY'),
(38, 'Belize', 'BZ'),
(39, 'Canada', 'CA'),
(40, 'Cocos (Keeling) Islands', 'CC'),
(41, 'Congo, Democratic Republic of', 'CD'),
(42, 'Central African Republic', 'CF'),
(43, 'Congo', 'CG'),
(44, 'Switzerland', 'CH'),
(45, 'C?te d\'Ivoire', 'CI'),
(46, 'Cook Islands', 'CK'),
(47, 'Chile', 'CL'),
(48, 'Cameroon', 'CM'),
(49, 'China', 'CN'),
(50, 'Colombia', 'CO'),
(51, 'Costa Rica', 'CR'),
(52, 'Cuba', 'CU'),
(53, 'Cape Verde', 'CV'),
(54, 'Cura?ao', 'CW'),
(55, 'Christmas Island', 'CX'),
(56, 'Cyprus', 'CY'),
(57, 'Czech Republic', 'CZ'),
(58, 'Germany', 'DE'),
(59, 'Djibouti', 'DJ'),
(60, 'Denmark', 'DK'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Algeria', 'DZ'),
(64, 'Ecuador', 'EC'),
(65, 'Estonia', 'EE'),
(66, 'Egypt', 'EG'),
(67, 'Western Sahara', 'EH'),
(68, 'Eritrea', 'ER'),
(69, 'Spain', 'ES'),
(70, 'Ethiopia', 'ET'),
(71, 'Finland', 'FI'),
(72, 'Fiji', 'FJ'),
(73, 'Falkland Islands', 'FK'),
(74, 'Micronesia, Federated States of', 'FM'),
(75, 'Faroe Islands', 'FO'),
(76, 'France', 'FR'),
(77, 'Gabon', 'GA'),
(78, 'United Kingdom', 'GB'),
(79, 'Grenada', 'GD'),
(80, 'Georgia', 'GE'),
(81, 'French Guiana', 'GF'),
(82, 'Guernsey', 'GG'),
(83, 'Ghana', 'GH'),
(84, 'Gibraltar', 'GI'),
(85, 'Greenland', 'GL'),
(86, 'Gambia', 'GM'),
(87, 'Guinea', 'GN'),
(88, 'Guadeloupe', 'GP'),
(89, 'Equatorial Guinea', 'GQ'),
(90, 'Greece', 'GR'),
(91, 'South Georgia and the South Sandwich Islands', 'GS'),
(92, 'Guatemala', 'GT'),
(93, 'Guam', 'GU'),
(94, 'Guinea-Bissau', 'GW'),
(95, 'Guyana', 'GY'),
(96, 'Hong Kong', 'HK'),
(97, 'Heard and McDonald Islands', 'HM'),
(98, 'Honduras', 'HN'),
(99, 'Croatia', 'HR'),
(100, 'Haiti', 'HT'),
(101, 'Hungary', 'HU'),
(102, 'Indonesia', 'ID'),
(103, 'Ireland', 'IE'),
(104, 'Israel', 'IL'),
(105, 'Isle of Man', 'IM'),
(106, 'India', 'IN'),
(107, 'British Indian Ocean Territory', 'IO'),
(108, 'Iraq', 'IQ'),
(109, 'Iran', 'IR'),
(110, 'Iceland', 'IS'),
(111, 'Italy', 'IT'),
(112, 'Jersey', 'JE'),
(113, 'Jamaica', 'JM'),
(114, 'Jordan', 'JO'),
(115, 'Japan', 'JP'),
(116, 'Kenya', 'KE'),
(117, 'Kyrgyzstan', 'KG'),
(118, 'Cambodia', 'KH'),
(119, 'Kiribati', 'KI'),
(120, 'Comoros', 'KM'),
(121, 'Saint Kitts and Nevis', 'KN'),
(122, 'North Korea', 'KP'),
(123, 'South Korea', 'KR'),
(124, 'Kuwait', 'KW'),
(125, 'Cayman Islands', 'KY'),
(126, 'Kazakhstan', 'KZ'),
(127, 'Lao People\'s Democratic Republic', 'LA'),
(128, 'Lebanon', 'LB'),
(129, 'Saint Lucia', 'LC'),
(130, 'Liechtenstein', 'LI'),
(131, 'Sri Lanka', 'LK'),
(132, 'Liberia', 'LR'),
(133, 'Lesotho', 'LS'),
(134, 'Lithuania', 'LT'),
(135, 'Luxembourg', 'LU'),
(136, 'Latvia', 'LV'),
(137, 'Libya', 'LY'),
(138, 'Morocco', 'MA'),
(139, 'Monaco', 'MC'),
(140, 'Moldova', 'MD'),
(141, 'Montenegro', 'ME'),
(142, 'Saint-Martin (France)', 'MF'),
(143, 'Madagascar', 'MG'),
(144, 'Marshall Islands', 'MH'),
(145, 'Macedonia', 'MK'),
(146, 'Mali', 'ML'),
(147, 'Myanmar', 'MM'),
(148, 'Mongolia', 'MN'),
(149, 'Macau', 'MO'),
(150, 'Northern Mariana Islands', 'MP'),
(151, 'Martinique', 'MQ'),
(152, 'Mauritania', 'MR'),
(153, 'Montserrat', 'MS'),
(154, 'Malta', 'MT'),
(155, 'Mauritius', 'MU'),
(156, 'Maldives', 'MV'),
(157, 'Malawi', 'MW'),
(158, 'Mexico', 'MX'),
(159, 'Malaysia', 'MY'),
(160, 'Mozambique', 'MZ'),
(161, 'Namibia', 'NA'),
(162, 'New Caledonia', 'NC'),
(163, 'Niger', 'NE'),
(164, 'Norfolk Island', 'NF'),
(165, 'Nigeria', 'NG'),
(166, 'Nicaragua', 'NI'),
(167, 'The Netherlands', 'NL'),
(168, 'Norway', 'NO'),
(169, 'Nepal', 'NP'),
(170, 'Nauru', 'NR'),
(171, 'Niue', 'NU'),
(172, 'New Zealand', 'NZ'),
(173, 'Oman', 'OM'),
(174, 'Panama', 'PA'),
(175, 'Peru', 'PE'),
(176, 'French Polynesia', 'PF'),
(177, 'Papua New Guinea', 'PG'),
(178, 'Philippines', 'PH'),
(179, 'Pakistan', 'PK'),
(180, 'Poland', 'PL'),
(181, 'St. Pierre and Miquelon', 'PM'),
(182, 'Pitcairn', 'PN'),
(183, 'Puerto Rico', 'PR'),
(184, 'Palestine, State of', 'PS'),
(185, 'Portugal', 'PT'),
(186, 'Palau', 'PW'),
(187, 'Paraguay', 'PY'),
(188, 'Qatar', 'QA'),
(189, 'R?union', 'RE'),
(190, 'Romania', 'RO'),
(191, 'Serbia', 'RS'),
(192, 'Russian Federation', 'RU'),
(193, 'Rwanda', 'RW'),
(194, 'Saudi Arabia', 'SA'),
(195, 'Solomon Islands', 'SB'),
(196, 'Seychelles', 'SC'),
(197, 'Sudan', 'SD'),
(198, 'Sweden', 'SE'),
(199, 'Singapore', 'SG'),
(200, 'Saint Helena', 'SH'),
(201, 'Slovenia', 'SI'),
(202, 'Svalbard and Jan Mayen Islands', 'SJ'),
(203, 'Slovakia', 'SK'),
(204, 'Sierra Leone', 'SL'),
(205, 'San Marino', 'SM'),
(206, 'Senegal', 'SN'),
(207, 'Somalia', 'SO'),
(208, 'Suriname', 'SR'),
(209, 'South Sudan', 'SS'),
(210, 'Sao Tome and Principe', 'ST'),
(211, 'El Salvador', 'SV'),
(212, 'Sint Maarten (Dutch part)', 'SX'),
(213, 'Syria', 'SY'),
(214, 'Swaziland', 'SZ'),
(215, 'Turks and Caicos Islands', 'TC'),
(216, 'Chad', 'TD'),
(217, 'French Southern Territories', 'TF'),
(218, 'Togo', 'TG'),
(219, 'Thailand', 'TH'),
(220, 'Tajikistan', 'TJ'),
(221, 'Tokelau', 'TK'),
(222, 'Timor-Leste', 'TL'),
(223, 'Turkmenistan', 'TM'),
(224, 'Tunisia', 'TN'),
(225, 'Tonga', 'TO'),
(226, 'Turkey', 'TR'),
(227, 'Trinidad and Tobago', 'TT'),
(228, 'Tuvalu', 'TV'),
(229, 'Taiwan', 'TW'),
(230, 'Tanzania', 'TZ'),
(231, 'Ukraine', 'UA'),
(232, 'Uganda', 'UG'),
(233, 'United States Minor Outlying Islands', 'UM'),
(234, 'United States', 'US'),
(235, 'Uruguay', 'UY'),
(236, 'Uzbekistan', 'UZ'),
(237, 'Vatican', 'VA'),
(238, 'Saint Vincent and the Grenadines', 'VC'),
(239, 'Venezuela', 'VE'),
(240, 'Virgin Islands (British)', 'VG'),
(241, 'Virgin Islands (U.S.)', 'VI'),
(242, 'Vietnam', 'VN'),
(243, 'Vanuatu', 'VU'),
(244, 'Wallis and Futuna Islands', 'WF'),
(245, 'Samoa', 'WS'),
(246, 'Yemen', 'YE'),
(247, 'Mayotte', 'YT'),
(248, 'South Africa', 'ZA'),
(249, 'Zambia', 'ZM'),
(250, 'Zimbabwe', 'ZW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citoyen`
--
ALTER TABLE `citoyen`
  ADD PRIMARY KEY (`idcitoyen`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citoyen`
--
ALTER TABLE `citoyen`
  MODIFY `idcitoyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
