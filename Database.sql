-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2017 at 03:49 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waybilling`
--

-- --------------------------------------------------------

--
-- Table structure for table `carordersrandom`
--

CREATE TABLE `carordersrandom` (
  `ID` int(3) DEFAULT NULL,
  `Origin` int(3) DEFAULT NULL,
  `Destination` int(3) DEFAULT NULL,
  `CarType` varchar(2) DEFAULT NULL,
  `MinQty` int(2) DEFAULT NULL,
  `MaxQty` int(2) DEFAULT NULL,
  `WinterDifference` varchar(2) DEFAULT NULL,
  `SpringDifference` varchar(2) DEFAULT NULL,
  `SummerDifference` varchar(2) DEFAULT NULL,
  `FallDifference` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `carordersrandom`
--

INSERT INTO `carordersrandom` (`ID`, `Origin`, `Destination`, `CarType`, `MinQty`, `MaxQty`, `WinterDifference`, `SpringDifference`, `SummerDifference`, `FallDifference`) VALUES
(104, 106, 68, 'X', 2, 2, '', '', '', ''),
(105, 107, 68, 'X', 2, 2, '', '', '', ''),
(109, 108, 70, 'X', 0, 1, '', '', '', ''),
(111, 110, 72, 'R', 2, 2, '', '', '', ''),
(121, 106, 79, 'X', 0, 1, '', '', '', ''),
(122, 71, 79, 'X', 0, 1, '', '', '', ''),
(126, 108, 83, 'X', 3, 3, '', '', '', ''),
(133, 108, 86, 'X', 1, 1, '', '', '', ''),
(134, 109, 86, 'X', 3, 3, '', '', '', ''),
(144, 109, 89, 'X', 2, 2, '', '', '', ''),
(147, 111, 91, 'X', 1, 1, '', '', '', ''),
(150, 109, 93, 'X', 0, 1, '', '', '', ''),
(154, 106, 121, 'X', 2, 2, '', '', '', ''),
(184, 102, 48, 'X', 1, 1, '', '', '', ''),
(197, 60, 106, 'X', 0, 1, '', '', '', ''),
(200, 63, 107, 'X', 1, 1, '', '', '', ''),
(202, 67, 106, 'X', 1, 3, '', '', '', ''),
(205, 70, 106, 'X', 1, 1, '', '', '', ''),
(212, 83, 106, 'X', 1, 1, '', '', '', ''),
(243, 83, 111, 'X', 1, 1, '', '', '', ''),
(256, 109, 124, 'H', 3, 3, '', '', '', ''),
(258, 107, 126, 'H', 0, 1, '', '', '', ''),
(378, 107, 52, 'X', 0, 1, '', '', '', ''),
(391, 107, 66, 'X', 2, 2, '', '', '', ''),
(396, 110, 77, 'X', 0, 1, '', '', '', ''),
(402, 108, 56, 'X', 0, 1, '', '', '', ''),
(412, 109, 101, 'G', 1, 1, '', '', '', ''),
(416, 56, 106, 'X', 0, 1, '', '', '', ''),
(417, 59, 106, 'X', 1, 1, '', '', '', ''),
(421, 65, 109, 'X', 0, 1, '', '', '', ''),
(424, 91, 107, 'X', 1, 1, '', '', '', ''),
(427, 56, 108, 'X', 0, 1, '', '', '', ''),
(429, 60, 108, 'X', 0, 1, '', '', '', ''),
(430, 66, 107, 'X', 1, 1, '', '', '', ''),
(432, 134, 111, 'X', 1, 1, '', '', '', ''),
(433, 138, 109, 'H', 0, 1, '', '', '', ''),
(497, 106, 56, 'X', 0, 1, '', '', '', ''),
(498, 134, 107, 'X', 1, 1, '', '', '', ''),
(500, 111, 72, 'K', 2, 2, '', '', '', ''),
(507, 118, 71, 'T', 10, 10, '', '', '', ''),
(508, 106, 128, 'X', 0, 1, '', '', '', ''),
(509, 107, 128, 'X', 0, 1, '', '', '', ''),
(510, 111, 128, 'X', 0, 1, '', '', '', ''),
(511, 128, 106, 'G', 0, 1, '', '', '', ''),
(512, 107, 65, 'G', 0, 1, '', '', '', ''),
(515, 109, 95, 'X', 3, 3, '', '', '', ''),
(516, 87, 109, 'X', 0, 1, '', '', '', ''),
(519, 48, 102, 'X', 1, 1, '', '', '', ''),
(521, 101, 107, 'X', 0, 1, '', '', '', ''),
(526, 106, 116, 'X', 0, 1, '', '', '', ''),
(529, 106, 137, 'LO', 2, 2, '', '', '', ''),
(530, 139, 133, 'G', 0, 0, '', '', '', ''),
(532, 133, 139, 'G', 0, 1, '', '', '', ''),
(534, 108, 104, 'X', 1, 1, '', '', '', ''),
(537, 105, 106, 'H', 12, 12, '', '', '', ''),
(541, 204, 108, 'X', 1, 1, '', '', '', ''),
(543, 49, 204, 'X', 0, 1, '', '', '', ''),
(544, 208, 82, 'H', 0, 1, '', '', '', ''),
(546, 106, 205, 'X', 0, 1, '', '', '', ''),
(547, 107, 205, 'F', 0, 1, '', '', '', ''),
(551, 106, 77, 'X', 0, 1, '', '', '', ''),
(554, 106, 95, 'X', 10, 10, '', '', '', ''),
(555, 108, 95, 'X', 6, 6, '', '', '', ''),
(556, 107, 95, 'X', 4, 4, '', '', '', ''),
(557, 111, 95, 'X', 3, 3, '', '', '', ''),
(558, 110, 95, 'X', 3, 3, '', '', '', ''),
(559, 201, 95, 'X', 5, 5, '', '', '', ''),
(561, 80, 95, 'X', 1, 1, '', '', '', ''),
(562, 85, 95, 'X', 2, 2, '', '', '', ''),
(563, 78, 95, 'X', 2, 2, '', '', '', ''),
(565, 94, 95, 'X', 1, 1, '', '', '', ''),
(566, 48, 95, 'X', 3, 3, '', '', '', ''),
(567, 102, 95, 'X', 1, 1, '', '', '', ''),
(568, 95, 106, 'X', 10, 10, '', '', '', ''),
(569, 95, 108, 'X', 6, 6, '', '', '', ''),
(570, 95, 107, 'X', 4, 4, '', '', '', ''),
(571, 95, 111, 'X', 3, 3, '', '', '', ''),
(572, 95, 110, 'X', 3, 3, '', '', '', ''),
(573, 95, 48, 'X', 3, 3, '', '', '', ''),
(574, 95, 102, 'X', 1, 1, '', '', '', ''),
(575, 95, 201, 'X', 5, 5, '', '', '', ''),
(577, 95, 78, 'X', 2, 2, '', '', '', ''),
(578, 95, 80, 'X', 1, 1, '', '', '', ''),
(579, 95, 85, 'X', 2, 2, '', '', '', ''),
(581, 95, 94, 'X', 1, 1, '', '', '', ''),
(583, 133, 139, 'X', 0, 1, '', '', '', ''),
(584, 139, 133, 'X', 0, 0, '', '', '', ''),
(587, 93, 107, 'X', 0, 1, '', '', '', ''),
(592, 91, 110, 'X', 1, 1, '', '', '', ''),
(595, 77, 106, 'X', 0, 1, '', '', '', ''),
(598, 76, 91, 'H', 1, 1, '', '', '', ''),
(602, 73, 107, 'X', 0, 1, '', '', '', ''),
(604, 71, 140, 'T', 6, 6, '', '', '', ''),
(606, 71, 124, 'T', 2, 2, '', '', '', ''),
(607, 71, 106, 'T', 4, 4, '', '', '', ''),
(608, 71, 107, 'T', 2, 2, '', '', '', ''),
(610, 71, 86, 'T', 0, 1, '', '', '', ''),
(611, 71, 107, 'X', 1, 1, '', '', '', ''),
(613, 71, 106, 'X', 2, 2, '', '', '', ''),
(614, 71, 109, 'X', 1, 1, '', '', '', ''),
(615, 71, 108, 'X', 1, 1, '', '', '', ''),
(617, 70, 111, 'X', 1, 1, '', '', '', ''),
(619, 69, 50, 'X', 1, 1, '', '', '', ''),
(623, 69, 107, 'X', 2, 4, '', '', '', ''),
(630, 66, 84, 'X', 0, 1, '', '', '', ''),
(635, 107, 128, 'G', 0, 1, '', '', '', ''),
(636, 128, 107, 'X', 0, 1, '', '', '', ''),
(639, 140, 91, 'T', 1, 1, '', '', '', ''),
(640, 140, 106, 'T', 2, 2, '', '', '', ''),
(641, 140, 107, 'T', 2, 2, '', '', '', ''),
(642, 140, 109, 'T', 1, 1, '', '', '', ''),
(643, 140, 106, 'X', 1, 2, '', '', '', ''),
(644, 106, 81, 'X', 0, 1, '', '', '', ''),
(645, 108, 81, 'X', 0, 1, '', '', '', ''),
(646, 106, 81, 'G', 0, 1, '', '', '', ''),
(647, 81, 109, 'X', 0, 1, '', '', '', ''),
(648, 81, 107, 'X', 0, 1, '', '', '', ''),
(651, 83, 107, 'X', 1, 1, '', '', '', ''),
(653, 106, 84, 'X', 0, 1, '', '', '', ''),
(654, 111, 84, 'X', 0, 1, '', '', '', ''),
(655, 108, 84, 'X', 0, 1, '', '', '', ''),
(662, 84, 106, 'X', 0, 1, '', '', '', ''),
(663, 84, 107, 'X', 0, 1, '', '', '', ''),
(665, 87, 107, 'X', 0, 1, '', '', '', ''),
(667, 108, 87, 'X', 0, 1, '', '', '', ''),
(668, 109, 87, 'X', 0, 1, '', '', '', ''),
(669, 111, 49, 'X', 0, 1, '', '', '', ''),
(670, 109, 49, 'G', 1, 1, '', '', '', ''),
(671, 109, 49, 'F', 1, 1, '', '', '', ''),
(672, 49, 106, 'X', 1, 1, '', '', '', ''),
(673, 49, 107, 'X', 1, 2, '', '', '', ''),
(677, 52, 106, 'G', 0, 1, '', '', '', ''),
(678, 59, 111, 'X', 1, 1, '', '', '', ''),
(679, 109, 60, 'X', 0, 1, '', '', '', ''),
(682, 106, 60, 'X', 0, 1, '', '', '', ''),
(683, 60, 109, 'X', 0, 1, '', '', '', ''),
(684, 104, 206, 'X', 0, 1, '', '', '', ''),
(685, 108, 206, 'X', 0, 1, '', '', '', ''),
(687, 106, 207, 'LO', 4, 4, '', '', '', ''),
(689, 206, 106, 'X', 1, 1, '', '', '', ''),
(690, 206, 107, 'X', 1, 1, '', '', '', ''),
(691, 206, 108, 'X', 1, 1, '', '', '', ''),
(693, 206, 111, 'X', 1, 1, '', '', '', ''),
(699, 206, 106, 'LO', 15, 15, '', '', '', ''),
(700, 206, 107, 'LO', 13, 13, '', '', '', ''),
(701, 206, 109, 'LO', 1, 2, '', '', '', ''),
(702, 206, 108, 'LO', 6, 6, '', '', '', ''),
(703, 208, 106, 'H', 0, 1, '', '', '', ''),
(705, 110, 63, 'T', 1, 1, '', '', '', ''),
(706, 65, 106, 'X', 0, 1, '', '', '', ''),
(709, 106, 65, 'X', 0, 1, '', '', '', ''),
(710, 110, 65, 'X', 0, 1, '', '', '', ''),
(714, 95, 109, 'X', 3, 3, '', '', '', ''),
(740, 109, 97, 'X', 1, 3, '0', '0', '0', '0'),
(760, 108, 96, 'R', 1, 4, '6', '2', '0', '0'),
(717, 110, 92, 'X', 1, 1, '', '', '', ''),
(720, 109, 203, 'X', 0, 1, '', '', '', ''),
(721, 101, 106, 'X', 0, 1, '', '', '', ''),
(723, 104, 107, 'X', 0, 1, '', '', '', ''),
(725, 68, 106, 'X', 2, 2, '', '', '', ''),
(727, 71, 75, 'T', 2, 2, '', '', '', ''),
(728, 74, 106, 'X', 1, 1, '', '', '', ''),
(729, 89, 106, 'X', 1, 1, '', '', '', ''),
(732, 59, 106, 'G', 0, 1, '', '', '', ''),
(734, 109, 207, 'H', 0, 1, '', '', '', ''),
(736, 106, 131, 'LO', 0, 0, '', '', '', ''),
(739, 106, 57, 'T', 2, 2, '', '', '', ''),
(741, 108, 146, 'X', 0, 1, '', '', '', ''),
(742, 106, 204, 'X', 1, 1, '', '', '', ''),
(743, 108, 205, 'X', 0, 1, '', '', '', ''),
(744, 71, 106, 'LO', 2, 5, '', '', '', ''),
(745, 109, 70, 'X', 1, 1, '', '', '', ''),
(747, 132, 106, 'H', 0, 0, '', '', '', ''),
(748, 76, 107, 'H', 3, 3, '', '', '', ''),
(750, 106, 74, 'X', 1, 1, '', '', '', ''),
(751, 106, 87, 'X', 0, 1, '', '', '', ''),
(753, 111, 88, 'X', 0, 1, '', '', '', ''),
(754, 206, 79, 'X', 0, 1, '', '', '', ''),
(755, 63, 79, 'X', 0, 1, '', '', '', ''),
(756, 109, 79, 'X', 0, 1, '', '', '', ''),
(759, 107, 106, 'H', 11, 18, '', '', '', ''),
(553, 111, 96, 'R', 13, 15, '5', '7', '12', '6'),
(552, 109, 96, 'R', 2, 3, '1', '4', '7', '3'),
(83, 111, 56, 'X', 0, 1, '0', '0', '0', '0'),
(87, 106, 59, 'X', 1, 1, '0', '', '', ''),
(101, 110, 67, 'R', 1, 2, '0', '1', '2', '1'),
(108, 110, 69, 'X', 8, 12, '-3', '1', '4', '1'),
(737, 110, 55, 'X', 1, 1, '', '1', '1', ''),
(738, 109, 55, 'X', 0, 1, '', '1', '1', ''),
(719, 107, 57, 'H', 2, 2, '', '-1', '-1', ''),
(596, 76, 79, 'H', 0, 2, '2', '-1', '1', '2'),
(622, 69, 106, 'X', 8, 12, '-4', '0', '3', '1'),
(600, 76, 106, 'H', 14, 14, '5', '-2', '1', '2'),
(686, 109, 62, 'H', 12, 13, '6', '1', '0', '3'),
(726, 76, 109, 'H', 3, 3, '2', '0', '0', '1'),
(621, 69, 109, 'X', 0, 2, '0', '1', '2', '0'),
(757, 107, 109, 'H', 1, 5, '8', '2', '1', '5'),
(758, 107, 108, 'H', 6, 10, '10', '2', '4', '7'),
(749, 76, 108, 'H', 2, 2, '2', '0', '1', '1'),
(624, 69, 108, 'X', 1, 2, '0', '1', '2', '1'),
(627, 107, 67, 'R', 1, 1, '0', '1', '2', '1'),
(626, 109, 67, 'R', 1, 2, '0', '1', '2', '1'),
(599, 109, 103, 'H', 2, 2, '', '', '', ''),
(112, 107, 73, 'X', 1, 1, '2', '0', '1', '1'),
(528, 110, 96, 'R', 8, 15, '3', '9', '14', '4'),
(159, 107, 96, 'R', 0, 5, '0', '5', '11', '5');

-- --------------------------------------------------------

--
-- Table structure for table `cartypes`
--

CREATE TABLE `cartypes` (
  `CarCode` varchar(2) DEFAULT NULL,
  `CarType` varchar(14) DEFAULT NULL,
  `TypeOrder` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cartypes`
--

INSERT INTO `cartypes` (`CarCode`, `CarType`, `TypeOrder`) VALUES
('F', 'Flatcar', 2),
('G', 'Gondola', 3),
('H', 'Hopper', 6),
('K', 'Stockcar', 8),
('LO', 'Covered Hopper', 7),
('R', 'Reefer', 5),
('T', 'Tankcar', 4),
('X', 'Boxcar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `Abbrevation` varchar(2) DEFAULT NULL,
  `Color` varchar(9) DEFAULT NULL,
  `BackColorNumber` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`Abbrevation`, `Color`, `BackColorNumber`) VALUES
('BK', 'Black', 0),
('BL', 'Blue', 16744448),
('BR', 'Brown', 73789),
('DB', 'Dark Blue', 16711680),
('GR', 'Green', 32768),
('GY', 'Gray', 8421504),
('OR', 'Orange', 33023),
('PK', 'Pink', 12615935),
('RD', 'Red', 255),
('TN', 'Tan', 32896),
('WH', 'White', 16777215),
('YW', 'Yellow', 65535);

-- --------------------------------------------------------

--
-- Table structure for table `currentcarorders`
--

CREATE TABLE `currentcarorders` (
  `ID` varchar(10) DEFAULT NULL,
  `Origin` int(3) DEFAULT NULL,
  `Destination` int(3) DEFAULT NULL,
  `CarType` varchar(2) DEFAULT NULL,
  `Qty` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `ID` int(2) DEFAULT NULL,
  `Name` varchar(16) DEFAULT NULL,
  `Color` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`ID`, `Name`, `Color`) VALUES
(1, 'Pittsburgh', 'GY'),
(2, 'Gilberton', 'DB'),
(3, 'Gladstone Branch', 'PK'),
(4, 'Trenton Northern', 'GR'),
(5, 'Rahway River', 'YW'),
(6, 'West Staging', 'WH'),
(7, 'Summit', 'BR'),
(8, 'Hoboken', 'TN'),
(9, 'East Staging', 'BK'),
(10, 'MC', 'RD');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `ID` int(3) DEFAULT NULL,
  `Milepost` int(4) DEFAULT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Town` int(2) DEFAULT NULL,
  `District` int(1) DEFAULT NULL,
  `IndustryColor` varchar(2) DEFAULT NULL,
  `Railroad` int(1) DEFAULT NULL,
  `Car Capacity` int(3) DEFAULT NULL,
  `Photo` varchar(74) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`ID`, `Milepost`, `Name`, `Town`, `District`, `IndustryColor`, `Railroad`, `Car Capacity`, `Photo`) VALUES
(146, 3201, 'Creamery (Inbound)', 5, 4, 'RD', 2, 16, ''),
(207, 3207, 'Inbound Sand', 7, 4, 'BR', 2, 0, ''),
(212, 4405, 'TN Interchange', 16, 3, 'GY', 1, 0, ''),
(213, 2111, 'Yardmaster Request', 32, 1, 'GY', 1, 0, ''),
(214, 2412, 'REA', 8, 2, 'RD', 1, 0, ''),
(216, 3101, 'Stores', 1, 4, 'BR', 2, 1, ''),
(218, 3204, 'LCL', 5, 4, 'YW', 2, 0, ''),
(48, 3102, 'LCL', 1, 4, 'YW', 2, 4, ''),
(49, 3106, 'Wire Mill', 2, 4, 'BL', 2, 4, ''),
(58, 3310, 'LCL', 4, 4, 'YW', 2, 2, ''),
(64, 3303, 'LCL', 6, 4, 'YW', 2, 2, ''),
(73, 4212, 'Preuss Panel', 12, 7, 'BL', 1, 3, ''),
(78, 4208, 'LCL', 13, 7, 'YW', 1, 2, ''),
(82, 4308, 'MW Tracks', 14, 3, 'BR', 1, 2, ''),
(94, 2210, 'LCL', 18, 1, 'YW', 1, 1, ''),
(95, 2105, 'LCL', 19, 1, 'YW', 1, 24, ''),
(96, 2102, 'Produce', 19, 1, 'GR', 1, 20, ''),
(102, 3404, 'LCL', 20, 5, 'YW', 3, 1, ''),
(103, 3402, 'Preuss Panel', 20, 5, 'BK', 3, 2, ''),
(105, 3408, 'Zeano Mine', 28, 5, 'GR', 3, 5, ''),
(106, 5401, 'Hoboken Staging', 21, 8, 'TN', 1, 255, ''),
(107, 5413, 'Reading Staging', 25, 9, 'BK', 5, 255, ''),
(108, 5407, 'New England Staging', 26, 9, 'BK', 6, 255, ''),
(110, 1407, 'St. Louis Staging', 24, 6, 'WH', 6, 255, ''),
(111, 1410, 'Chicago Staging', 23, 6, 'WH', 6, 255, ''),
(74, 4211, 'Team Track', 12, 7, 'OR', 1, 2, ''),
(62, 3213, 'Inbound Coal', 7, 4, 'BK', 2, 12, ''),
(206, 3215, 'Cement Loading', 7, 4, 'BL', 2, 0, ''),
(215, 2415, 'Depot Tracks', 8, 2, 'BL', 1, 0, ''),
(109, 1401, 'Mon Jct. Staging', 22, 6, 'WH', 4, 255, ''),
(217, 3115, 'Yardmaster Request', 3, 4, 'GR', 2, 0, ''),
(51, 3112, 'Freight House', 3, 4, 'YW', 2, 3, ''),
(52, 3110, 'Stores', 3, 4, 'BR', 2, 2, ''),
(70, 4108, 'Coats & Clark', 9, 2, 'WH', 1, 5, ''),
(69, 4107, 'Cargill', 9, 2, 'GY', 1, 4, ''),
(68, 4103, 'Hershey', 9, 2, 'BR', 1, 6, '#hershey.JPG#'),
(66, 4106, 'Furniture', 9, 2, 'BL', 1, 5, ''),
(140, 4307, 'Dupuy Asphalt', 14, 3, 'BK', 1, 2, ''),
(81, 4310, 'Team Track', 14, 3, 'OR', 1, 4, ''),
(80, 4311, 'LCL', 14, 3, 'YW', 1, 4, ''),
(83, 4312, 'D\'Oily Card', 14, 3, 'GR', 1, 3, ''),
(79, 4309, 'Hill Hardware', 14, 3, 'RD', 1, 4, ''),
(85, 4404, 'LCL', 16, 3, 'YW', 1, 2, ''),
(84, 4403, 'Team Track', 16, 3, 'OR', 1, 4, ''),
(98, 2308, 'REA', 27, 1, 'RD', 1, 8, ''),
(60, 3203, 'Team Track', 5, 4, 'OR', 2, 3, ''),
(59, 3205, 'Noco Tool and Die Company', 5, 4, 'GR', 2, 4, ''),
(71, 4101, 'Petro Chemical', 9, 2, 'BK', 1, 10, ''),
(116, 2307, 'Pullman Commissary', 27, 1, 'BR', 1, 5, ''),
(117, 2313, 'Depot Tracks', 27, 1, 'BL', 1, 15, ''),
(120, 3113, 'Power Plant', 3, 4, 'BK', 2, 32, ''),
(50, 3105, 'Feed Mill', 2, 4, 'RD', 2, 2, 'Pictures\\Agway Feed and Grain.bmp#Pictures/Agway%20Feed%20and%20Grain.bmp#'),
(208, 3209, 'Pete\'s Stone', 7, 4, 'GY', 2, 0, ''),
(125, 4115, 'Transfer LCL', 9, 2, 'YW', 1, 3, ''),
(72, 4104, 'Franklin Meats', 9, 2, 'RD', 1, 5, ''),
(67, 4105, 'Packers Co-Op', 9, 2, 'GR', 1, 4, ''),
(128, 4109, 'Team Track', 9, 2, 'OR', 1, 4, ''),
(201, 4110, 'Local LCL', 8, 2, 'YW', 1, 0, ''),
(126, 4111, 'Power House Coal', 8, 2, 'BK', 1, 3, ''),
(129, 4112, 'Power House Ash', 8, 2, 'GY', 1, 3, ''),
(209, 4113, 'Yarmaster Request', 31, 2, 'DB', 1, 100, ''),
(130, 4201, 'Fuel', 11, 2, 'BK', 1, 6, ''),
(131, 4202, 'Sand', 11, 2, 'BR', 1, 2, ''),
(133, 4203, 'Stores', 11, 2, 'RD', 1, 1, ''),
(132, 4204, 'Ash Loading', 11, 2, 'GY', 1, 1, ''),
(76, 4205, 'Coal Mine', 12, 7, 'GR', 1, 24, ''),
(77, 4207, 'Team Track', 13, 7, 'OR', 1, 1, ''),
(75, 4210, 'Oil', 12, 7, 'BK', 1, 3, ''),
(89, 4302, 'J & J Plumbing', 17, 3, 'RD', 1, 3, ''),
(87, 4303, 'Team Track', 17, 3, 'OR', 1, 4, ''),
(210, 4304, 'LCL', 17, 3, 'YW', 1, 0, ''),
(88, 4305, 'Lumber Company', 17, 3, 'GR', 1, 2, ''),
(211, 4306, 'Creamery', 17, 3, 'BL', 1, 0, ''),
(86, 4402, 'Union Baking', 16, 3, 'RD', 1, 2, ''),
(63, 3208, 'H N R Block', 7, 4, 'RD', 2, 4, ''),
(202, 3301, 'Stores', 6, 4, 'BR', 2, 0, ''),
(65, 3302, 'Team Track', 6, 4, 'OR', 2, 2, ''),
(97, 2101, 'Preuss Panel', 19, 1, 'RD', 1, 2, ''),
(135, 2103, 'Icing Track', 19, 1, 'WH', 1, 8, ''),
(124, 2107, 'Fuel', 30, 1, 'BK', 1, 3, ''),
(137, 2108, 'Sand', 30, 1, 'BR', 1, 1, ''),
(139, 2109, 'Stores', 30, 1, 'RD', 1, 1, ''),
(138, 2110, 'Ash Loading', 30, 1, 'GY', 1, 1, ''),
(118, 2203, 'Transcon Petroleum', 18, 1, 'BK', 1, 8, ''),
(91, 2207, 'Stieffel Roofing', 15, 1, 'BR', 1, 2, ''),
(92, 2208, 'Penn Electric', 18, 1, 'RD', 1, 2, ''),
(93, 2209, 'Team Track', 18, 1, 'OR', 1, 1, ''),
(134, 2211, 'Delco Battery [Ship]', 18, 1, 'GR', 1, 1, ''),
(121, 2212, 'Delco Battery [Receive]', 18, 1, 'BL', 1, 2, ''),
(57, 3307, 'Fuel Dealer', 4, 4, 'BK', 2, 5, ''),
(56, 3309, 'Team Track', 4, 4, 'OR', 2, 2, ''),
(55, 3308, 'Feed Dealer', 4, 4, 'RD', 2, 2, ''),
(203, 3403, 'Stores', 20, 5, 'BR', 3, 0, ''),
(204, 3405, 'Heller Electric', 20, 5, 'BL', 3, 0, ''),
(101, 3407, 'Miele Iron Works', 28, 5, 'RD', 3, 2, ''),
(205, 3411, 'Team Track', 29, 5, 'OR', 3, 0, ''),
(104, 3412, 'Pulp\'s Paper', 29, 5, 'GY', 3, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `railroads`
--

CREATE TABLE `railroads` (
  `RailroadID` int(1) DEFAULT NULL,
  `RailroadName` varchar(23) DEFAULT NULL,
  `RailroadAbbreviation` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `railroads`
--

INSERT INTO `railroads` (`RailroadID`, `RailroadName`, `RailroadAbbreviation`) VALUES
(1, 'Hudson, Delaware & Ohio', 'HD&O'),
(2, 'Trenton Northern', 'TN'),
(3, 'Rahway River', 'RR'),
(4, 'Baltimore and Ohio', 'B&O'),
(5, 'Reading', 'Reading'),
(6, 'Interchange', 'Interchange');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `ID` int(2) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Color` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`ID`, `Name`, `Color`) VALUES
(1, 'Trenton', 'BK'),
(2, 'Harbourton', 'BL'),
(3, 'Ringoes', 'GR'),
(4, 'Bernardsville TN', 'WH'),
(5, 'Allentown', 'YW'),
(6, 'Northampton', 'BR'),
(7, 'Cattasaqua', 'RD'),
(8, 'Gilberton Passenger', 'BL'),
(11, 'Gilberton Engine', 'GY'),
(12, 'Ashland', 'RD'),
(13, 'Summit', 'YW'),
(14, 'Murray Hill', 'BR'),
(15, 'Jim Thorpe', 'YW'),
(16, 'Bernardsville HD&O', 'RD'),
(17, 'Gladstone', 'OR'),
(18, 'Bellefonte', 'YW'),
(19, 'Pittsburgh Freight', 'GR'),
(20, 'Kenilworth', 'BR'),
(21, 'Hoboken', 'TN'),
(22, 'Mon Jct.', 'WH'),
(23, 'Chicago', 'BL'),
(24, 'St. Louis', 'RD'),
(25, 'Reading', 'RD'),
(26, 'New England', 'BK'),
(27, 'Pittsburgh Passenger', 'BL'),
(28, 'Union', 'RD'),
(29, 'Springfield', 'OR'),
(30, 'Pittsburgh Engine', 'GY'),
(31, 'Gilberton', 'BL'),
(32, 'Pittsburgh', 'GY'),
(9, 'Gilberton Freight', 'GR');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
