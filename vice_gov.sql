-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 04:01 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vice_gov`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `latitude` float(7,4) NOT NULL,
  `longtitude` float(7,4) NOT NULL,
  `land_mark` varchar(255) NOT NULL,
  `barangay` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `latitude`, `longtitude`, `land_mark`, `barangay`) VALUES
(18, 6.7580, 125.3545, 'Gaisano Grand Mall', 'Tres de Mayo'),
(19, 6.7593, 125.3595, 'Gabriel', 'Zone II'),
(20, 6.7575, 125.3552, 'Payts', 'Cogon'),
(21, 6.7594, 125.3537, 'Gabriel', 'Kapatagan'),
(22, 6.7558, 125.3584, 'Gabriel', 'Binaton');

-- --------------------------------------------------------

--
-- Table structure for table `collect`
--

CREATE TABLE `collect` (
  `collect_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collect`
--

INSERT INTO `collect` (`collect_id`, `date_time`, `user_id`, `area_id`, `weight`) VALUES
(1, '2021-05-21 00:00:00', 2, 18, 50),
(2, '2021-05-26 00:00:00', 2, 18, 50);

-- --------------------------------------------------------

--
-- Table structure for table `purok`
--

CREATE TABLE `purok` (
  `prk_id` int(11) NOT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `purok` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purok`
--

INSERT INTO `purok` (`prk_id`, `barangay`, `purok`) VALUES
(1, 'Aplaya', 'Purok 2'),
(2, 'Aplaya', 'Purok 3'),
(3, 'Aplaya', 'Purok 4'),
(4, 'Aplaya', 'Purok 5'),
(5, 'Aplaya', 'Purok 6'),
(6, 'Aplaya', 'Purok 7'),
(7, 'Aplaya', 'Purok 7 A'),
(8, 'Aplaya', 'Purok 8'),
(9, 'Aplaya', 'Purok 9'),
(10, 'Aplaya', 'Purok 9 A'),
(11, 'Aplaya', 'Purok 10'),
(12, 'Aplaya', 'Purok 11'),
(13, 'Aplaya', 'Purok 12'),
(14, 'Balabag', 'Sampalok'),
(15, 'Balabag', 'Kaimito'),
(16, 'Balabag', 'Mangga'),
(17, 'Balabag', 'Durian '),
(18, 'Balabag', 'Cashiew'),
(19, 'Balabag', 'Rambutang'),
(20, 'Balabag', 'Boongon'),
(21, 'Balabag', 'Lansones'),
(22, 'Binaton', 'Duranta'),
(23, 'Binaton', 'Mabolo'),
(24, 'Binaton', 'Kampana'),
(25, 'Binaton', 'Narra'),
(26, 'Binaton', 'Gemilina'),
(27, 'Binaton', 'Nangka'),
(28, 'Binaton', 'Balite'),
(29, 'Binaton', 'Bajada'),
(30, 'Binaton', 'Pantaurium'),
(31, 'Binaton', 'Magga'),
(32, 'Binaton', 'Durian '),
(33, 'Binaton', 'Palma'),
(34, 'Binaton', 'Panaghiusa'),
(35, 'Binaton', 'Pag-asa'),
(36, 'Binaton', 'Lanzones'),
(37, 'Binaton', 'Mabuhay'),
(38, 'Binaton', 'Nagkahiusa'),
(39, 'Cogon', 'River Side'),
(40, 'Cogon', 'Kalingkatan'),
(41, 'Cogon', 'Laminusa'),
(42, 'Cogon', 'Talisay'),
(43, 'Cogon', 'Kaimito'),
(44, 'Cogon', 'Mangga'),
(45, 'Cogon', 'Acacia'),
(46, 'Cogon', 'Whit Sand'),
(47, 'Cogon', 'Butterfly'),
(48, 'Cogon', 'Pag-asa'),
(49, 'Cogon', 'Calumpang'),
(50, 'Cogon', 'Bermuda-A'),
(51, 'Cogon', 'San Francisco'),
(52, 'Cogon', 'Owangon'),
(53, 'Cogon', 'Bakhaw'),
(54, 'Cogon', 'Gemelina'),
(55, 'Cogon', 'Hanapbuhay'),
(56, 'Cogon', 'Calachuchi'),
(57, 'Cogon', 'Mahogani'),
(58, 'Cogon', 'Malabago'),
(59, 'Cogon', 'Tabing-Ilog'),
(60, 'Cogon', 'Molave'),
(61, 'Cogon', 'Bermuda-B'),
(62, 'Cogon', 'Seaweeds'),
(63, 'Cogon', 'Kalubihan '),
(64, 'Cogon', 'Ipil-ipil'),
(65, 'Colorado', 'Vanda'),
(66, 'Colorado', 'Gemelina'),
(67, 'Colorado', 'Palmero'),
(68, 'Colorado', 'Anahaw'),
(69, 'Colorado', 'Bird Paradise'),
(70, 'Colorado', 'Bongainvilla'),
(71, 'Colorado', 'San Francisco'),
(72, 'Dawis', 'Bariles-A'),
(73, 'Dawis', 'Bariles-B'),
(74, 'Dawis', 'Bangus-A'),
(75, 'Dawis', 'Bangus-B'),
(76, 'Dawis', 'Tangigue-A'),
(77, 'Dawis', 'Tangigue-B'),
(78, 'Dawis', 'Maya-Maya-A'),
(79, 'Dawis', 'Maya-Maya-B'),
(80, 'Dawis', 'Barongoy-A'),
(81, 'Dawis', 'Barongoy-B'),
(82, 'Dawis', 'Kitong-A'),
(83, 'Dawis', 'Kitong-B'),
(84, 'Dawis', 'Bolinao'),
(85, 'Dawis', 'Lapu-Lapu'),
(86, 'Dulangan', 'Purok 1'),
(87, 'Dulangan', 'Purok 2'),
(88, 'Goma', 'Maliwanag'),
(89, 'Goma', 'Duranta'),
(90, 'Goma', 'Rambutan 1'),
(91, 'Goma', 'Rambutan 2'),
(92, 'Goma', 'Rambutan 3'),
(93, 'Goma', 'Rambutan 4'),
(94, 'Goma', 'Rambutan 5'),
(95, 'Goma', 'Sandawa 1'),
(96, 'Goma', 'Sandawa 2'),
(97, 'Goma', 'Sandawa 3'),
(98, 'Goma', 'Islam'),
(99, 'Goma', 'Lanan'),
(100, 'Goma', 'Kawayan 1'),
(101, 'Goma', 'Kawayan 2'),
(102, 'Goma', 'Waling-waling 1'),
(103, 'Goma', 'Waling-waling 2'),
(104, 'Goma', 'Narra 1'),
(105, 'Goma', 'Narra 2'),
(106, 'Goma', 'Narra 3'),
(107, 'Igpit', 'Roxas'),
(108, 'Igpit', 'Sto. Nino A'),
(109, 'Igpit', 'Sto. Nino B'),
(110, 'Igpit', 'Relocation A'),
(111, 'Igpit', 'Relocation B'),
(112, 'Igpit', 'Sto. Tomas A'),
(113, 'Igpit', 'Sto. Tomas B'),
(114, 'Igpit', 'Bagumbuhay'),
(115, 'Igpit', 'Bagumbuhay'),
(116, 'Igpit', 'San Vicente'),
(117, 'Igpit', 'Palayan'),
(118, 'Kapatagan', 'Dalisay'),
(119, 'Kapatagan', 'Campo 1'),
(120, 'Kapatagan', 'Campo 2'),
(121, 'Kapatagan', 'Campo 3'),
(122, 'Kapatagan', 'Campo 4'),
(123, 'Kapatagan', 'Campo 5'),
(124, 'Kapatagan', 'Kahayag 1'),
(125, 'Kapatagan', 'Kahayag 2'),
(126, 'Kapatagan', 'Kanto Village'),
(127, 'Kapatagan', 'Calamohay 1'),
(128, 'Kapatagan', 'Calamohay 2'),
(129, 'Kapatagan', 'Tagumpay 1'),
(130, 'Kapatagan', 'Tagumpay 2'),
(131, 'Kapatagan', 'Mauswagan'),
(132, 'Kapatagan', 'Sto. Nino'),
(133, 'Kapatagan', 'Bugac'),
(134, 'Kapatagan', 'Balatikan'),
(135, 'Kapatagan', 'Everlasting'),
(136, 'Kapatagan', 'Sandawa'),
(137, 'Kapatagan', 'Mainit 1'),
(138, 'Kapatagan', 'Mainit 2'),
(139, 'Kapatagan', 'Mainit 3'),
(140, 'Kapatagan', 'Pag-ibig 3'),
(141, 'Kapatagan', 'Paradise'),
(142, 'Kapatagan', 'Teril'),
(143, 'Kapatagan', 'Lower Baras'),
(144, 'Kapatagan', 'Upper Baras'),
(145, 'Kapatagan', 'Kinambulan'),
(146, 'Kapatagan', 'Mabuhay'),
(147, 'Kapatagan', 'Purok 1 Pag-asa'),
(148, 'Kapatagan', 'Purok 2 Pag-asa'),
(149, 'Kapatagan', 'Kidaran'),
(150, 'Kapatagan', 'Bayanihan Purok 1'),
(151, 'Kapatagan', 'Bayanihan Purok 2'),
(152, 'Kapatagan', 'Purok 1 Mt. Apo'),
(153, 'Kapatagan', 'Purok 2 Mt. Apo'),
(154, 'Kapatagan', 'Purok 3 Mt. Apo'),
(155, 'Kapatagan', 'Purok 1 Palo 5'),
(156, 'Kapatagan', 'Purok 2 Palo 5'),
(157, 'Kapatagan', 'Purok 1 Cadena de Amor'),
(158, 'Kapatagan', 'Purok 1 Cadena de Amor'),
(159, 'Kapatagan', 'Sampaguita 1'),
(160, 'Kapatagan', 'Sampaguita 2'),
(161, 'Kapatagan', 'Sampaguita 3'),
(162, 'Kapatagan', 'Rose of Sharon'),
(163, 'Kapatagan', 'Rose of Sharon 2'),
(164, 'Kapatagan', 'Palo 10'),
(165, 'Kapatagan', 'Palo 20'),
(166, 'Kapatagan', 'East Maharlika'),
(167, 'Kapatagan', 'Nangkaan 1'),
(168, 'Kapatagan', 'Nangkaan 2'),
(169, 'Kapatagan', 'Atis'),
(170, 'Kapatagan', 'Sereguelas'),
(171, 'Kapatagan', 'Sambag'),
(172, 'Kapatagan', 'Santol '),
(173, 'Kapatagan', 'Chico'),
(174, 'Kapatagan', 'Manga'),
(175, 'Kapatagan', 'Labana'),
(176, 'Kapatagan', 'Doldol'),
(177, 'Kapatagan', 'Flying A'),
(178, 'Kapatagan', 'Talisay'),
(179, 'Kapatagan', 'Ipil-ipil'),
(180, 'Kapatagan', 'Tapol'),
(181, 'Lungag', 'Malipayon'),
(182, 'Lungag', 'Mabuhay'),
(183, 'Lungag', 'Pag-asa Mangga'),
(184, 'Mahayahay', 'Dona Aurora'),
(185, 'Mahayahay', 'Lomboy'),
(186, 'Mahayahay', 'Mangga'),
(187, 'Mahayahay', 'Senorita'),
(188, 'Mahayahay', 'Palmera'),
(189, 'Mahayahay', 'Mahogany'),
(190, 'Mahayahay', 'Acacia'),
(191, 'Matti', 'Purok 1'),
(192, 'Matti', 'Purok 2'),
(193, 'Matti', 'Purok 3'),
(194, 'Matti', 'Purok 4'),
(195, 'Matti', 'Purok 5'),
(196, 'Matti', 'Purok 6'),
(197, 'Matti', 'Purok 7'),
(198, 'Matti', 'San Vicente'),
(199, 'Matti', 'Centro'),
(200, 'Matti', 'Two Lover'),
(201, 'Matti', 'Sto. Nino'),
(202, 'Matti', 'San Miguel'),
(203, 'Matti', 'River Side'),
(204, 'Matti', 'Sto. Rosario'),
(205, 'San Agustin', 'Purok 1A'),
(206, 'San Agustin', 'Purok 1B'),
(207, 'San Agustin', 'Purok 1C'),
(208, 'San Agustin', 'Purok 2A'),
(209, 'San Agustin', 'Purok 2B'),
(210, 'San Agustin', 'Purok 3'),
(211, 'San Agustin', 'Purok 4'),
(212, 'San Agustin', 'Purok 5'),
(213, 'San Agustin', 'Purok 6'),
(214, 'San Agustin', 'Purok 7'),
(215, 'San Agustin', 'Mangga'),
(216, 'San Agustin', 'Pomelo'),
(217, 'San Agustin', 'Mango Drive'),
(218, 'San Agustin', 'Nindot'),
(219, 'San Agustin', 'Nangka A'),
(220, 'San Agustin', 'Nangka B'),
(221, 'San Agustin', 'Talisay A'),
(222, 'San Agustin', 'Talisay B'),
(223, 'San Agustin', 'Camanchilis'),
(224, 'San Agustin', 'Super Highway'),
(225, 'San Agustin', 'Madasigon'),
(226, 'San Agustin', 'Batangueno'),
(227, 'San Agustin', 'Pabalan/Pioneer'),
(228, 'San Agustin', 'Cagape'),
(229, 'San Agustin', 'Acacia'),
(230, 'San Agustin', 'Gemelina'),
(231, 'San Agustin', 'Rose'),
(232, 'San Agustin', 'Malinawon'),
(233, 'San Agustin', 'Mahogany'),
(234, 'San Agustin', 'Akosalem'),
(235, 'San Agustin', 'Duranta'),
(236, 'San Agustin', 'San Francisco'),
(237, 'San Miguel', 'Azuana'),
(238, 'San Miguel', 'Talisay'),
(239, 'San Miguel', 'San Francisco'),
(240, 'San Miguel', 'Santol '),
(241, 'San Miguel', 'Rosal'),
(242, 'San Miguel', 'Waling-Waling'),
(243, 'San Miguel', 'Sambag'),
(244, 'San Miguel', 'Santan'),
(245, 'San Miguel', 'Lomboy II'),
(246, 'San Miguel', 'Durian '),
(247, 'San Miguel', 'Camantague'),
(248, 'San Miguel', 'Rambutan'),
(249, 'San Miguel', 'Nangka'),
(250, 'San Miguel', 'Calumpang'),
(251, 'San Miguel', 'Gemelina'),
(252, 'San Miguel', 'Sampaguita II'),
(253, 'San Miguel', 'Narra II'),
(254, 'San Miguel', 'Sampaguita II'),
(255, 'San Miguel', 'Cibucao'),
(256, 'San Miguel', 'Manga I'),
(257, 'San Miguel', 'Manga II'),
(258, 'San Miguel', 'Anahaw'),
(259, 'San Roque', 'Dayang-dayang'),
(260, 'San Roque', 'Curacha'),
(261, 'San Roque', 'Cha-Cha'),
(262, 'San Roque', 'Lambada'),
(263, 'San Roque', 'Tango'),
(264, 'San Roque', 'Tinikling'),
(265, 'San Roque', 'Carinosa'),
(266, 'San Roque', 'Boogie'),
(267, 'Sinawilan', 'Tambis'),
(268, 'Sinawilan', 'Nangka'),
(269, 'Sinawilan', 'Sampalok'),
(270, 'Sinawilan', 'Nakayama'),
(271, 'Sinawilan', 'Seniguilas'),
(272, 'Sinawilan', 'Bayabas'),
(273, 'Sinawilan', 'Mangga '),
(274, 'Sinawilan', 'Rosas'),
(275, 'Sinawilan', 'Latasa'),
(276, 'Sinawilan', 'Narra'),
(277, 'Sinawilan', 'Duranta'),
(278, 'Sinawilan', 'Pakikisama'),
(279, 'Sinawilan', 'Tabigue'),
(280, 'Sinawilan', 'San Vicente'),
(281, 'Sinawilan', 'Islam'),
(282, 'Sinawilan', 'Isla B. '),
(283, 'Sinawilan', 'Lapu-Lapu'),
(284, 'Sinawilan', 'Agbao'),
(285, 'Sinawilan', 'Bakhaw'),
(286, 'Sinawilan', 'Talisay'),
(287, 'Soong', 'Purok 1'),
(288, 'Soong', 'Purok 2'),
(289, 'Soong', 'Purok 3'),
(290, 'Soong', 'Purok 4'),
(291, 'Soong', 'Purok 5'),
(292, 'Soong', 'Purok 6'),
(293, 'Soong', 'Purok 7'),
(294, 'Tiguman', 'Bombil'),
(295, 'Tiguman', 'Cattleya'),
(296, 'Tiguman', 'Centennial'),
(297, 'Tiguman', 'Sampaguita'),
(298, 'Tiguman', 'Orchids'),
(299, 'Tiguman', 'Palmera'),
(300, 'Tiguman', 'Calachuchi'),
(301, 'Tiguman', 'Daisy'),
(302, 'Tiguman', 'Santan'),
(303, 'Tres de Mayo', 'Sto. Nino'),
(304, 'Tres de Mayo', 'Mahogany'),
(305, 'Tres de Mayo', 'Pag-asa'),
(306, 'Tres de Mayo', 'Don Lorenzo'),
(307, 'Tres de Mayo', 'Gemelina'),
(308, 'Tres de Mayo', 'Adelfa'),
(309, 'Tres de Mayo', 'Padema'),
(310, 'Tres de Mayo', 'Manggahan'),
(311, 'Tres de Mayo', 'Maabi-abihon'),
(312, 'Tres de Mayo', 'Madasigon'),
(313, 'Tres de Mayo', 'Acacia'),
(314, 'Tres de Mayo', 'Conte'),
(315, 'Tres de Mayo', 'Sampalok'),
(316, 'Tres de Mayo', 'Dapsa'),
(317, 'Tres de Mayo', 'Yellowbell'),
(318, 'Tres de Mayo', 'Sambag'),
(319, 'Tres de Mayo', 'Mabuhay'),
(320, 'Tres de Mayo', 'Panaghiusa'),
(321, 'Tres de Mayo', 'Malantawun'),
(322, 'Tres de Mayo', 'Linaw'),
(323, 'Tres de Mayo', 'Paradise'),
(324, 'Tres de Mayo', 'Tugus'),
(325, 'Tres de Mayo', 'Fortune'),
(326, 'Tres de Mayo', 'Duranta'),
(327, 'Tres de Mayo', 'Centro'),
(328, 'Tres de Mayo', 'Santol '),
(329, 'Tres de Mayo', 'Emily Homes Phase 1'),
(330, 'Tres de Mayo', 'Emily Homes Phase 2'),
(331, 'Tres de Mayo', 'Central Plane'),
(332, 'Tres de Mayo', 'Perfect Homes'),
(333, 'Tres de Mayo', 'Estrada'),
(334, 'Tres de Mayo', 'Crispino'),
(335, 'Zone I', 'Malipayun'),
(336, 'Zone I', 'Pag-asa'),
(337, 'Zone I', 'River Side'),
(338, 'Zone I', 'Bayabas'),
(339, 'Zone I', 'Madasigon'),
(340, 'Zone I', 'Panaghiusa'),
(341, 'Zone I', 'San Francisco'),
(342, 'Zone I', 'Kawayan'),
(343, 'Zone I', 'Silingan'),
(344, 'Zone I', 'Alum'),
(345, 'Zone I', 'Centennial'),
(346, 'Zone I', 'Laminusa'),
(347, 'Zone I', 'Palmera 1'),
(348, 'Zone I', 'Sampaguita'),
(349, 'Zone I', 'Lanzones'),
(350, 'Zone I', 'Durian '),
(351, 'Zone I', 'Gemelina'),
(352, 'Zone I', 'Rosas'),
(353, 'Zone I', 'Kalinaw'),
(354, 'Zone I', 'Islam'),
(355, 'Zone I', 'Labana'),
(356, 'Zone I', 'Palmera 2'),
(357, 'Zone I', 'Malunggay'),
(358, 'Zone I', 'Matamis'),
(359, 'Zone I', 'Narra 1'),
(360, 'Zone I', 'Mahogany'),
(361, 'Zone I', 'Mangga Rabina'),
(362, 'Zone I', 'Pagtoo'),
(363, 'Zone I', 'Golden Duranta'),
(364, 'Zone I', 'Narra'),
(365, 'Zone II', 'Sadepa'),
(366, 'Zone II', 'Narra'),
(367, 'Zone II', 'Maligaya'),
(368, 'Zone II', 'Kawayan'),
(369, 'Zone II', 'Comero'),
(370, 'Zone II', 'Kahayag'),
(371, 'Zone II', 'Paraiso'),
(372, 'Zone II', 'Santan'),
(373, 'Zone II', 'Padillo'),
(374, 'Zone II', 'Ubas'),
(375, 'Zone II', 'Duranta'),
(376, 'Zone II', 'Pakigdait'),
(377, 'Zone II', 'Assessor'),
(378, 'Zone II', 'Panaghiusa'),
(379, 'Zone II', 'San Vicente'),
(380, 'Zone II', 'Bayanihan'),
(381, 'Zone II', 'Gemelina 1'),
(382, 'Zone II', 'Maya'),
(383, 'Zone II', 'Nagkahiusa'),
(384, 'Zone II', 'San Vicente'),
(385, 'Zone II', 'Bayanihan'),
(386, 'Zone II', 'Gemelina 2'),
(387, 'Zone II', 'Binangay'),
(388, 'Zone II', 'Laging Handa'),
(389, 'Zone II', 'Pag-asa'),
(390, 'Zone II', 'Kapamilya '),
(391, 'Zone II', 'Kalayaan'),
(392, 'Zone II', 'Salam'),
(393, 'Zone II', 'Kauswagan'),
(394, 'Zone II', 'Suerte'),
(395, 'Zone II', 'Sabayang Nayon'),
(396, 'Zone I', 'Duranta'),
(397, 'Zone I', 'Cattleya'),
(398, 'Zone I', 'Sambag'),
(399, 'Zone I', 'Waling-Waling'),
(400, 'Zone I', 'Tugas'),
(401, 'Zone I', 'Avocado'),
(402, 'Zone I', 'Papaya'),
(403, 'Zone I', 'Yellowbell'),
(404, 'Zone I', 'Tambis'),
(405, 'Zone I', 'Talisay'),
(406, 'Zone I', 'Chico'),
(407, 'Zone I', 'Mangga'),
(408, 'Zone I', 'Laminusa'),
(409, 'Zone I', 'Golden Duranta'),
(410, 'Zone I', 'Acaciahan'),
(411, 'Zone I', 'Ipil-ipil'),
(412, 'Zone I', 'Molave'),
(413, 'Zone I', 'Star Apple'),
(414, 'Zone I', 'Atis'),
(415, 'Zone I', 'Chestnut'),
(416, 'Zone I', 'Santol '),
(417, 'Zone I', 'Manggahan'),
(418, 'Zone III', 'Rambutan'),
(419, 'Zone III', 'Saging'),
(420, 'Zone III', 'Granada'),
(421, 'Zone III', 'Tambis'),
(422, 'Zone III', 'Lanzones'),
(423, 'Zone III', 'Ubas'),
(424, 'Zone III', 'Labana'),
(425, 'Zone III', 'Lomboy'),
(426, 'Zone III', 'Pakwan'),
(427, 'Zone III', 'Avocado'),
(428, 'Zone III', 'Nangka'),
(429, 'Zone III', 'Santol '),
(430, 'Zone III', 'Pinya'),
(431, 'Zone III', 'Mansanas'),
(432, 'Zone III', 'Marang'),
(433, 'Zone III', 'Durian '),
(434, 'Zone III', 'Chico'),
(435, 'Zone III', 'Everlasting'),
(436, 'Zone III', 'Cathleya'),
(437, 'Zone III', 'San Francisco'),
(438, 'Zone III', 'Santan'),
(439, 'Zone III', 'Orchids'),
(440, 'Zone III', 'Gumamela'),
(441, 'Zone III', 'Ilang-ilang'),
(442, 'Zone III', 'Waling-waling'),
(443, 'Zone III', 'Sakura'),
(444, 'Zone III', 'Daisy'),
(445, 'Zone III', 'SAMPAGUITA'),
(446, 'Zone III', 'EAGLE/SKYLARK '),
(447, 'Zone III', 'CARABAO'),
(448, 'Zone III', ' DRAGON'),
(449, 'Zone III', 'TINDALO'),
(450, 'Zone III', 'IPIL'),
(451, 'Zone III', 'INDIAN TREE'),
(452, 'Zone III', 'BALITE'),
(453, 'Zone III', 'KAMAGONG'),
(454, 'Zone III', 'KALAPATI'),
(455, 'Zone III', 'PARROT'),
(456, 'Zone III', 'AGILA'),
(457, 'Zone III', 'WOODPEEKER'),
(458, 'Zone III', 'MAYA'),
(459, 'Zone III', 'TAMSI'),
(460, 'Zone III', 'OSTRICH'),
(461, 'Zone III', 'GURYON'),
(462, 'Zone III', 'KINGFISHER'),
(463, 'Zone III', 'LOVEBIRDS'),
(464, 'Zone III', 'BALO'),
(465, 'Zone III', 'MABINIX'),
(466, 'Zone III', 'ARWANA'),
(467, 'Zone III', 'TANGIGUE'),
(468, 'Zone III', 'LAPU-LAPU'),
(469, 'Zone III', 'KALAW'),
(470, 'Zone III', 'CAMEL'),
(471, 'Zone III', 'JAGUAR'),
(472, 'Zone III', 'KANGAROO'),
(473, 'Zone III', 'PANTHER'),
(474, 'Zone III', 'COBRA'),
(475, 'Zone III', 'SKYLARK'),
(476, 'Zone III', 'KAMANSI'),
(477, 'Zone III', 'CABBAGE'),
(478, 'Zone III', 'CADIOS'),
(479, 'Zone III', 'CARROTS'),
(480, 'Zone III', 'AMPALAYA'),
(481, 'Zone III', 'EGGPLANT'),
(482, 'Zone III', 'PETCHAY'),
(483, 'Zone III', 'STRINGBEANS'),
(484, 'Zone III', 'MALUNGGAY'),
(485, 'Zone III', 'BOLINAO'),
(486, 'Zone III', 'TALAKITOK'),
(487, 'Zone III', 'BANGUS'),
(488, 'Zone III', 'BARILES'),
(489, 'Zone III', 'BALU'),
(490, 'Zone III', 'FLOWERHORN'),
(491, 'Zone III', 'GEMELINA'),
(492, 'Zone III', 'MAHOGANY'),
(493, 'Zone III', 'TUGAS'),
(494, 'Zone III', 'NEEMTREE'),
(495, 'Zone III', 'ALMASIGA'),
(496, 'Zone III', 'TALISAY'),
(497, 'Zone III', 'NARRA'),
(498, 'Zone III', 'APITONG'),
(499, 'Zone III', 'YAKAL'),
(500, 'Zone III', 'MOLAVE'),
(501, 'Zone III', 'LAWAAN'),
(502, 'Zone III', 'ACACIA'),
(503, 'Zone III', 'PINETREE'),
(504, 'SAN JOSE', 'POMELO'),
(505, 'SAN JOSE', 'MANGO'),
(506, 'SAN JOSE', 'DRIVE'),
(507, 'SAN JOSE', 'NINDOT'),
(508, 'SAN JOSE', 'NANGKA A'),
(509, 'SAN JOSE', 'NANGKA B'),
(510, 'SAN JOSE', 'TALISAY A'),
(511, 'SAN JOSE', 'TALISAY B'),
(512, 'SAN JOSE', 'CAMANCHILIS'),
(513, 'SAN JOSE', 'SUPER HIGHWAY'),
(514, 'SAN JOSE', 'MADASIGON'),
(515, 'SAN JOSE', 'BATANGUENO'),
(516, 'SAN JOSE', 'PABALAN/PIONEER'),
(517, 'SAN JOSE', 'CAGAPE'),
(518, 'SAN JOSE', 'ACACIA'),
(519, 'SAN JOSE', 'GEMELINA'),
(520, 'SAN JOSE', 'ROSE'),
(521, 'SAN JOSE', 'MALINAWON'),
(522, 'SAN JOSE', 'MAHOGANY'),
(523, 'SAN JOSE', 'AKOSALEM'),
(524, 'SAN JOSE', 'DURANTA'),
(525, 'SAN JOSE', 'SAN FRANCISCO'),
(526, 'RUPARAN   ', 'CENTRO'),
(527, 'RUPARAN   ', 'TWO LOVER'),
(528, 'RUPARAN   ', 'STO. NIÑO'),
(529, 'RUPARAN   ', 'SAN MIGUEL'),
(530, 'RUPARAN   ', 'RIVERSIDE'),
(531, 'RUPARAN   ', 'STO. ROSARIO'),
(532, 'KIAGOT ', 'NANGKAAN 1'),
(533, 'KIAGOT ', 'NANGKAAN 2'),
(534, 'KIAGOT ', 'ATIS'),
(535, 'KIAGOT ', 'SEREGUELAS'),
(536, 'KIAGOT ', 'SAMBAG'),
(537, 'KIAGOT ', 'SANTOL'),
(538, 'KIAGOT ', 'CHICO'),
(539, 'KIAGOT ', 'MANGA'),
(540, 'KIAGOT ', 'LABANA'),
(541, 'KIAGOT ', 'DOLDOL'),
(542, 'KIAGOT ', 'FLYING –A'),
(543, 'KIAGOT ', 'TALISAY'),
(544, 'KIAGOT ', 'GELLETA'),
(545, 'KIAGOT ', 'IPIL-IPIL'),
(546, 'KIAGOT ', 'TAPOL');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `user_type`, `barangay`) VALUES
(1, 'agabriel.nieve@gmail.com', '$2y$10$pci/Gk5fgcByLpaco0qkBO.ZGx/JzOghhPRheuD/AsPPkq9gjSl.6', 0, 'Zone III'),
(2, 'john.doe@gmail.com', '$2y$10$jstyFKZTZlyhhk94e1W8q.VcBVCnB3c69Qte0jnx/McSOL5hjZS5C', 1, NULL),
(3, 'izzy@gmail.com', '$2y$10$IG2NKqXkW/eyNr.nk3M.fuo5hSYtZ8SN/kBWlBdBLwfEaBj.a6X4G', NULL, NULL),
(4, 'agabriel.nieve@gmail.com', '$2y$10$Aalb7d.0TjdGyNWtqRf9weEWUjRcWFaW32jJ8vN2dlWKkBmkMsArG', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`collect_id`);

--
-- Indexes for table `purok`
--
ALTER TABLE `purok`
  ADD PRIMARY KEY (`prk_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `collect`
--
ALTER TABLE `collect`
  MODIFY `collect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purok`
--
ALTER TABLE `purok`
  MODIFY `prk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
