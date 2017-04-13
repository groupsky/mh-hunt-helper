-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2017 at 12:28 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1346768_mhhh`
--

-- --------------------------------------------------------

--
-- Table structure for table `bases`
--

CREATE TABLE `bases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bases`
--

INSERT INTO `bases` (`id`, `name`) VALUES
(32, 'Wooden with Target'),
(1073, 'Rift'),
(1644, 'Fissure'),
(1915, 'Minotaur'),
(2120, 'Attuned Enerchi Induction'),
(2259, '2017 New Year\'s'),
(2284, 'Sprinkly Sweet Cupcake Birthday');

-- --------------------------------------------------------

--
-- Table structure for table `charms`
--

CREATE TABLE `charms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `charms`
--

INSERT INTO `charms` (`id`, `name`) VALUES
(501, 'Valentine'),
(851, 'Eggstra'),
(1164, 'Eggscavator Charge'),
(1476, 'Super Cactus'),
(1714, 'Eggstra Charge'),
(1735, 'Diamond Boost'),
(1736, 'Gemstone Boost'),
(1822, 'Ultimate Ancient'),
(2081, 'Enerchi');

-- --------------------------------------------------------

--
-- Table structure for table `cheese`
--

CREATE TABLE `cheese` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cheese`
--

INSERT INTO `cheese` (`id`, `name`) VALUES
(81, 'Cheddar'),
(98, 'Gouda'),
(114, 'SUPER|brie+'),
(118, 'Vanilla Stilton'),
(586, 'Marshmallow Monterey'),
(1009, 'Graveblossom Camembert'),
(1424, 'Brie String'),
(1529, 'Grilled'),
(1732, 'Gemstone'),
(1733, 'Glowing Gruyere'),
(2080, 'Maki String'),
(2226, 'Crescent');

-- --------------------------------------------------------

--
-- Table structure for table `hunts`
--

CREATE TABLE `hunts` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL,
  `trap_id` int(10) UNSIGNED NOT NULL,
  `base_id` int(10) UNSIGNED NOT NULL,
  `charm_id` int(10) UNSIGNED DEFAULT NULL,
  `cheese_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `shield` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `caught` tinyint(1) UNSIGNED NOT NULL,
  `attracted` tinyint(1) UNSIGNED NOT NULL,
  `mouse_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hunts`
--

INSERT INTO `hunts` (`user_id`, `entry_id`, `timestamp`, `trap_id`, `base_id`, `charm_id`, `cheese_id`, `location_id`, `shield`, `caught`, `attracted`, `mouse_id`) VALUES
(53772, 263424, 1491945310, 1813, 1915, 851, 114, 33, 1, 1, 1, 6),
(53772, 263543, 1491998318, 1285, 2120, 2081, 114, 13, 1, 1, 1, 34),
(3573743, 31274, 1492017588, 356, 2259, 1164, 114, 32, 1, 1, 1, 44),
(3573743, 31276, 1492018511, 356, 2259, 1164, 114, 32, 1, 1, 1, 44),
(3573743, 31294, 1492027576, 354, 32, 1164, 98, 32, 1, 0, 1, 44),
(3573743, 31297, 1492028482, 354, 32, 1476, 98, 32, 1, 0, 1, 50),
(3573743, 31298, 1492029387, 354, 32, 1476, 98, 32, 1, 1, 1, 51),
(3573743, 31299, 1492030338, 369, 2284, 501, 98, 32, 1, 1, 1, 52),
(3573743, 31301, 1492031341, 369, 2284, 501, 98, 32, 1, 0, 1, 53),
(3573743, 31303, 1492032279, 369, 2284, 501, 98, 32, 1, 1, 1, 51),
(3573743, 31311, 1492038801, 608, 2284, 501, 98, 32, 1, 1, 1, 44),
(3573743, 31317, 1492039709, 608, 2284, 501, 98, 32, 1, 1, 1, 50),
(3573743, 31318, 1492040656, 608, 2284, 501, 98, 32, 1, 1, 1, 44),
(3573743, 31319, 1492041581, 608, 2284, 501, 98, 32, 1, 0, 1, 52),
(3573743, 31320, 1492042483, 608, 2284, 501, 98, 32, 1, 0, 1, 56),
(4839553, 166579, 1491941664, 1918, 1915, 1736, 1732, 50, 1, 1, 1, 1),
(4839553, 166584, 1491943518, 2137, 1915, 1714, 98, 54, 1, 1, 1, 5),
(4839553, 166589, 1491947267, 2137, 1915, 851, 114, 54, 1, 1, 1, 5),
(4839553, 166594, 1491948229, 1833, 1915, 851, 114, 38, 1, 1, 1, 7),
(4839553, 166605, 1491950159, 1833, 1915, 851, 98, 38, 1, 1, 1, 8),
(4839553, 166606, 1491951069, 1833, 1915, 851, 98, 38, 1, 1, 1, 9),
(4839553, 166611, 1491952466, 1833, 1915, 851, 98, 38, 1, 1, 1, 11),
(4839553, 166613, 1491953562, 1515, 1915, 851, 98, 26, 1, 1, 1, 12),
(4839553, 166614, 1491954469, 1515, 1915, 851, 98, 26, 1, 1, 1, 12),
(4839553, 166619, 1491955380, 1918, 1915, 1714, 586, 8, 1, 1, 1, 14),
(4839553, 166620, 1491956333, 1918, 1915, 1714, 586, 8, 1, 1, 1, 16),
(4839553, 166621, 1491957239, 1918, 1915, 1714, 586, 8, 1, 1, 1, 17),
(4839553, 166624, 1491958144, 2095, 2120, 1714, 1424, 53, 1, 0, 1, 18),
(4839553, 166632, 1491959402, 1833, 1915, NULL, 586, 12, 1, 1, 1, 19),
(4839553, 166633, 1491960310, 1833, 1915, 1164, 586, 12, 1, 1, 1, 20),
(4839553, 166636, 1491961246, 1515, 1915, 1164, 586, 26, 1, 1, 1, 21),
(4839553, 166640, 1491962224, 1515, 1915, 1164, 586, 26, 1, 1, 1, 22),
(4839553, 166642, 1491963133, 1515, 1915, 1164, 586, 26, 1, 1, 1, 23),
(4839553, 166643, 1491964094, 1515, 1915, 1164, 586, 26, 1, 1, 1, 19),
(4839553, 166646, 1491966985, 1515, 1915, 1164, 586, 26, 1, 1, 1, 17),
(4839553, 166647, 1491967896, 1515, 1915, 1164, 586, 26, 1, 1, 1, 19),
(4839553, 166654, 1491968822, 1515, 1915, 1164, 586, 26, 1, 1, 1, 24),
(4839553, 166656, 1491969732, 1515, 1915, 1164, 586, 26, 1, 1, 1, 17),
(4839553, 166657, 1491970636, 1515, 1915, 1164, 586, 26, 1, 1, 1, 16),
(4839553, 166713, 1491972833, 1004, 1915, 1164, 118, 14, 1, 1, 1, 28),
(4839553, 166720, 1491973738, 2095, 2120, 1164, 2080, 53, 1, 1, 1, 29),
(4839553, 166722, 1491974675, 2095, 2120, 2081, 2080, 53, 1, 1, 1, 30),
(4839553, 166725, 1491975600, 2095, 2120, 2081, 2080, 53, 1, 1, 1, 30),
(4839553, 166728, 1491976526, 1918, 1915, 1164, 1733, 52, 1, 1, 1, 32),
(4839553, 166733, 1491978657, 1918, 1915, 1164, 1733, 52, 1, 1, 1, 32),
(4839553, 166763, 1492009261, 1918, 1915, 1164, 1529, 30, 1, 1, 1, 36),
(4839553, 166765, 1492010365, 1515, 1915, 1164, 98, 13, 1, 1, 1, 38),
(4839553, 166771, 1492015094, 1515, 1915, 1164, 586, 26, 1, 1, 1, 17),
(4839553, 166774, 1492016242, 1515, 1915, 1164, 98, 26, 1, 1, 1, 42),
(4839553, 166776, 1492018096, 1515, 1915, 1164, 98, 26, 1, 1, 1, 45),
(5277495, 1214, 1492006954, 1515, 1073, 851, 586, 26, 1, 1, 1, 17),
(5277495, 1222, 1492007866, 1515, 1073, 851, 586, 26, 1, 1, 1, 23),
(5277495, 1223, 1492008769, 1515, 1073, 851, 586, 26, 1, 1, 1, 21),
(5277495, 1227, 1492009696, 1515, 1073, 851, 114, 18, 1, 1, 1, 37),
(5277495, 1228, 1492010704, 1515, 1073, 851, 114, 18, 1, 1, 1, 39),
(5277495, 1234, 1492011699, 1515, 1073, 851, 98, 13, 1, 1, 1, 11),
(5277495, 1237, 1492012618, 2225, 1073, 851, 2226, 54, 1, 1, 1, 26),
(6784428, 151538, 1491936772, 1916, 1644, 1735, 1732, 50, 1, 1, 1, 1),
(6784428, 151540, 1491937682, 1916, 1644, 1735, 1732, 50, 1, 0, 1, 2),
(6784428, 151543, 1491938594, 1916, 1644, 1735, 1732, 50, 1, 1, 1, 1),
(6784428, 151544, 1491939496, 1916, 1644, 1735, 1732, 50, 1, 0, 1, 2),
(6784428, 151550, 1491942312, 1916, 1644, 1735, 1732, 50, 1, 1, 1, 3),
(6784428, 151555, 1491945107, 1916, 1644, 1735, 1732, 50, 1, 0, 1, 2),
(6784428, 151557, 1491946051, 1916, 1644, 1735, 1732, 50, 1, 1, 1, 1),
(6784428, 151558, 1491946955, 1916, 1644, 1735, 1732, 50, 1, 1, 1, 3),
(6784428, 151561, 1491947856, 1916, 1644, 1735, 1732, 50, 1, 1, 1, 1),
(6784428, 151564, 1491948767, 1916, 1644, 1735, 1732, 50, 1, 1, 1, 1),
(6784428, 151569, 1491950642, 2137, 1644, NULL, 98, 54, 1, 0, 0, NULL),
(6784428, 151571, 1491951549, 2137, 1644, NULL, 98, 54, 1, 1, 1, 10),
(6784428, 151583, 1491956276, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 15),
(6784428, 151630, 1491970655, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 26),
(6784428, 151632, 1491971564, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 27),
(6784428, 151637, 1491973376, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 15),
(6784428, 151656, 1491996664, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 33),
(6784428, 151664, 1492000423, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 35),
(6784428, 151671, 1492002235, 1004, 1644, NULL, 2226, 54, 1, 0, 0, NULL),
(6784428, 151679, 1492005008, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 15),
(6784428, 151686, 1492007784, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 15),
(6784428, 151690, 1492008687, 1004, 1644, NULL, 98, 54, 1, 1, 1, 15),
(6784428, 151692, 1492009594, 1004, 1644, NULL, 98, 54, 1, 1, 1, 26),
(6784428, 151693, 1492010507, 1004, 1644, NULL, 81, 54, 1, 0, 0, NULL),
(6784428, 151695, 1492011410, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 40),
(6784428, 151704, 1492012324, 1004, 1644, NULL, 2226, 54, 1, 1, 1, 41),
(6784428, 151717, 1492015359, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 33),
(6784428, 151727, 1492016293, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 26),
(6784428, 151732, 1492017201, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 43),
(6784428, 151736, 1492018108, 1005, 1644, NULL, 2226, 54, 1, 0, 1, 46),
(6784428, 151750, 1492020152, 1005, 1644, NULL, 2226, 54, 1, 0, 1, 47),
(6784428, 151755, 1492021063, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 48),
(6784428, 151759, 1492021977, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 47),
(6784428, 151767, 1492022945, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 26),
(6784428, 151793, 1492027671, 1005, 1644, NULL, 2226, 54, 1, 0, 1, 49),
(6784428, 151798, 1492028584, 1005, 1644, NULL, 2226, 54, 1, 0, 0, NULL),
(6784428, 151803, 1492029503, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 48),
(6784428, 151813, 1492030408, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 49),
(6784428, 151826, 1492033317, 1005, 1644, NULL, 2226, 54, 1, 0, 1, 49),
(6784428, 151839, 1492035232, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 49),
(6784428, 151843, 1492036140, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 48),
(6784428, 151851, 1492037160, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 48),
(6784428, 151855, 1492038069, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 48),
(6784428, 151859, 1492038976, 1005, 1644, NULL, 2226, 54, 1, 1, 1, 48),
(6784428, 151864, 1492039884, 1005, 1644, 1476, 2226, 54, 1, 1, 1, 54),
(6784428, 151868, 1492040795, 1005, 1644, 1476, 2226, 54, 1, 1, 1, 55);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
(8, 'Dojo'),
(12, 'Great Gnarled Tree'),
(13, 'Harbour'),
(14, 'Jungle of Dread'),
(18, 'Meadow'),
(26, 'S.S. Huntington III'),
(30, 'Windmill'),
(32, 'Zugzwang\'s Tower'),
(33, 'Fiery Warpath'),
(38, 'King\'s Arms'),
(41, 'Cursed City'),
(50, 'Fungal Cavern'),
(51, 'Zokor'),
(52, 'Labyrinth'),
(53, 'Furoma Rift'),
(54, 'Fort Rox');

-- --------------------------------------------------------

--
-- Table structure for table `mice`
--

CREATE TABLE `mice` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mice`
--

INSERT INTO `mice` (`id`, `name`) VALUES
(35, 'Alpha Weremouse'),
(18, 'Armored Archer'),
(12, 'Briegull'),
(45, 'Buccaneer'),
(36, 'Captain Croissant'),
(14, 'Carefree Cook'),
(24, 'Chocolate Overload'),
(22, 'Coco Commander'),
(4, 'Crystal Behemoth'),
(2, 'Crystal Lurker'),
(3, 'Crystal Observer'),
(1, 'Crystal Queen'),
(47, 'Cursed Taskmaster'),
(54, 'Dawn Guardian'),
(9, 'Diamond'),
(30, 'Dumpling Delivery'),
(17, 'Egg Painter'),
(23, 'Egg Scrambler'),
(21, 'Eggscavator'),
(19, 'Eggsplosive Scientist'),
(7, 'Flying'),
(20, 'Hare Razer'),
(40, 'Hypnotized Gunslinger'),
(37, 'Lightning Rod'),
(32, 'Lost Legionnaire'),
(43, 'Meteorite Golem'),
(46, 'Meteorite Mystic'),
(10, 'Meteorite Snacker'),
(5, 'Mischievous Meteorite Miner'),
(27, 'Mischievous Wereminer'),
(55, 'Monster of the Meteor'),
(52, 'Mystic Knight'),
(51, 'Mystic Pawn'),
(49, 'Night Watcher'),
(48, 'Nightfire'),
(26, 'Nightmancer'),
(16, 'Onion Chopper'),
(8, 'Pugilist'),
(41, 'Reveling Lycanthrope'),
(28, 'Riptide'),
(29, 'Shinobi'),
(11, 'Spotted'),
(38, 'Steel'),
(50, 'Technic Bishop'),
(53, 'Technic Knight'),
(44, 'Technic Pawn'),
(56, 'Technic Rook'),
(6, 'Theurgy Warden'),
(39, 'Tiny'),
(42, 'Water Nymph'),
(33, 'Wealthy Werewarrior'),
(15, 'Werehauler'),
(34, 'White');

-- --------------------------------------------------------

--
-- Table structure for table `traps`
--

CREATE TABLE `traps` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `traps`
--

INSERT INTO `traps` (`id`, `name`) VALUES
(354, 'Mystic Pawn Pincher'),
(356, 'Technic Pawn Pincher'),
(369, 'Blackstone Pass'),
(608, 'Dimensional Chest'),
(1004, 'Clockwork Portal'),
(1005, 'Grand Arcanum'),
(1285, 'Glacier Gatler'),
(1515, 'School of Sharks'),
(1813, 'Warden Slayer'),
(1833, 'Chrome Sphynx Wrath'),
(1916, 'Endless Labyrinth'),
(1918, 'Infinite Labyrinth'),
(2095, 'Mysteriously unYielding Null-Onyx Rampart of Cascading Amperes'),
(2137, 'Law Laser'),
(2224, 'Droid Archmagus'),
(2225, 'Interdimensional Crossbow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bases`
--
ALTER TABLE `bases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charms`
--
ALTER TABLE `charms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheese`
--
ALTER TABLE `cheese`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hunts`
--
ALTER TABLE `hunts`
  ADD PRIMARY KEY (`user_id`,`entry_id`,`timestamp`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mice`
--
ALTER TABLE `mice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `traps`
--
ALTER TABLE `traps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mice`
--
ALTER TABLE `mice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
