-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 04:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmotors`
--

-- --------------------------------------------------------

--
-- Table structure for table `carclassification`
--

CREATE TABLE `carclassification` (
  `classificationId` int(11) NOT NULL,
  `classificationName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `carclassification`
--

INSERT INTO `carclassification` (`classificationId`, `classificationName`) VALUES
(1, 'SUV'),
(2, 'Classic'),
(3, 'Sports'),
(4, 'Trucks'),
(5, 'Used');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientId` int(10) UNSIGNED NOT NULL,
  `clientFirstname` varchar(15) NOT NULL,
  `clientLastname` varchar(25) NOT NULL,
  `clientEmail` varchar(40) NOT NULL,
  `clientPassword` varchar(255) NOT NULL,
  `clientLevel` enum('1','2','3') NOT NULL DEFAULT '1',
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientId`, `clientFirstname`, `clientLastname`, `clientEmail`, `clientPassword`, `clientLevel`, `comment`) VALUES
(1, 'Felipe', 'Belisario', 'felipe@fsbelisario.com.br', '$2y$10$TNQgC4Hj9fn2SIf6wwTc9.TaG7OT/G.yaJ6KQNm1KGESrVwAXiOTS', '1', NULL),
(2, 'Felipe', 'Belisario', 'admin@cse340.net', '$2y$10$J/6XvmlCAc1rYSBCDoTpJ.ntte2K3pcdlBI/dwWYrJ31Re20mG9Iu', '3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `imgId` int(10) UNSIGNED NOT NULL,
  `invId` int(10) UNSIGNED NOT NULL,
  `imgName` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `imgPath` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `imgDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `imgPrimary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`imgId`, `invId`, `imgName`, `imgPath`, `imgDate`, `imgPrimary`) VALUES
(3, 1, 'wrangler.jpg', '/phpmotors/images/vehicles/wrangler.jpg', '2023-03-19 21:40:18', 0),
(4, 1, 'wrangler-tn.jpg', '/phpmotors/images/vehicles/wrangler-tn.jpg', '2023-03-19 21:40:18', 0),
(5, 1, 'jeep-wrangler2.jpeg', '/phpmotors/images/vehicles/jeep-wrangler2.jpeg', '2023-03-19 21:40:42', 1),
(6, 1, 'jeep-wrangler2-tn.jpeg', '/phpmotors/images/vehicles/jeep-wrangler2-tn.jpeg', '2023-03-19 21:40:42', 1),
(7, 2, 'ford-modelt.jpg', '/phpmotors/images/vehicles/ford-modelt.jpg', '2023-03-19 21:41:18', 1),
(8, 2, 'ford-modelt-tn.jpg', '/phpmotors/images/vehicles/ford-modelt-tn.jpg', '2023-03-19 21:41:18', 1),
(9, 3, 'lambo-Adve.jpg', '/phpmotors/images/vehicles/lambo-Adve.jpg', '2023-03-19 21:42:03', 1),
(10, 3, 'lambo-Adve-tn.jpg', '/phpmotors/images/vehicles/lambo-Adve-tn.jpg', '2023-03-19 21:42:03', 1),
(11, 4, 'monster.jpg', '/phpmotors/images/vehicles/monster.jpg', '2023-03-19 21:42:38', 1),
(12, 4, 'monster-tn.jpg', '/phpmotors/images/vehicles/monster-tn.jpg', '2023-03-19 21:42:38', 1),
(13, 5, 'ms.jpg', '/phpmotors/images/vehicles/ms.jpg', '2023-03-19 21:43:38', 1),
(14, 5, 'ms-tn.jpg', '/phpmotors/images/vehicles/ms-tn.jpg', '2023-03-19 21:43:38', 1),
(15, 6, 'bat.jpg', '/phpmotors/images/vehicles/bat.jpg', '2023-03-19 21:43:58', 1),
(16, 6, 'bat-tn.jpg', '/phpmotors/images/vehicles/bat-tn.jpg', '2023-03-19 21:43:58', 1),
(17, 7, 'mm.jpg', '/phpmotors/images/vehicles/mm.jpg', '2023-03-19 21:44:20', 1),
(18, 7, 'mm-tn.jpg', '/phpmotors/images/vehicles/mm-tn.jpg', '2023-03-19 21:44:20', 1),
(19, 8, 'fire-truck.jpg', '/phpmotors/images/vehicles/fire-truck.jpg', '2023-03-19 21:44:49', 1),
(20, 8, 'fire-truck-tn.jpg', '/phpmotors/images/vehicles/fire-truck-tn.jpg', '2023-03-19 21:44:49', 1),
(21, 9, 'crown-vic.jpg', '/phpmotors/images/vehicles/crown-vic.jpg', '2023-03-19 21:45:08', 1),
(22, 9, 'crown-vic-tn.jpg', '/phpmotors/images/vehicles/crown-vic-tn.jpg', '2023-03-19 21:45:08', 1),
(23, 10, 'camaro.jpg', '/phpmotors/images/vehicles/camaro.jpg', '2023-03-19 21:45:50', 1),
(24, 10, 'camaro-tn.jpg', '/phpmotors/images/vehicles/camaro-tn.jpg', '2023-03-19 21:45:50', 1),
(25, 11, 'escalade.jpg', '/phpmotors/images/vehicles/escalade.jpg', '2023-03-19 21:46:17', 1),
(26, 11, 'escalade-tn.jpg', '/phpmotors/images/vehicles/escalade-tn.jpg', '2023-03-19 21:46:17', 1),
(27, 12, 'hummer.jpg', '/phpmotors/images/vehicles/hummer.jpg', '2023-03-19 21:46:32', 1),
(28, 12, 'hummer-tn.jpg', '/phpmotors/images/vehicles/hummer-tn.jpg', '2023-03-19 21:46:32', 1),
(29, 13, 'aerocar.jpg', '/phpmotors/images/vehicles/aerocar.jpg', '2023-03-19 21:46:54', 1),
(30, 13, 'aerocar-tn.jpg', '/phpmotors/images/vehicles/aerocar-tn.jpg', '2023-03-19 21:46:54', 1),
(31, 14, 'fbi.jpg', '/phpmotors/images/vehicles/fbi.jpg', '2023-03-19 21:47:10', 1),
(32, 14, 'fbi-tn.jpg', '/phpmotors/images/vehicles/fbi-tn.jpg', '2023-03-19 21:47:10', 1),
(33, 24, 'delorean.jpg', '/phpmotors/images/vehicles/delorean.jpg', '2023-03-19 21:47:27', 1),
(34, 24, 'delorean-tn.jpg', '/phpmotors/images/vehicles/delorean-tn.jpg', '2023-03-19 21:47:27', 1),
(35, 25, 'no-image.png', '/phpmotors/images/vehicles/no-image.png', '2023-03-19 21:52:10', 1),
(36, 25, 'no-image-tn.png', '/phpmotors/images/vehicles/no-image-tn.png', '2023-03-19 21:52:10', 1),
(37, 10, 'camaro2.jpg', '/phpmotors/images/vehicles/camaro2.jpg', '2023-03-19 21:53:15', 0),
(38, 10, 'camaro2-tn.jpg', '/phpmotors/images/vehicles/camaro2-tn.jpg', '2023-03-19 21:53:15', 0),
(39, 11, 'Cadillac Escalade2.jpg', '/phpmotors/images/vehicles/Cadillac Escalade2.jpg', '2023-03-19 21:53:31', 0),
(40, 11, 'Cadillac Escalade2-tn.jpg', '/phpmotors/images/vehicles/Cadillac Escalade2-tn.jpg', '2023-03-19 21:53:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `invId` int(10) UNSIGNED NOT NULL,
  `invMake` varchar(30) NOT NULL,
  `invModel` varchar(30) NOT NULL,
  `invDescription` text NOT NULL,
  `invImage` varchar(50) NOT NULL,
  `invThumbnail` varchar(50) NOT NULL,
  `invPrice` decimal(10,0) NOT NULL,
  `invStock` smallint(6) NOT NULL,
  `invColor` varchar(20) NOT NULL,
  `classificationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`invId`, `invMake`, `invModel`, `invDescription`, `invImage`, `invThumbnail`, `invPrice`, `invStock`, `invColor`, `classificationId`) VALUES
(1, 'Jeep ', 'Wrangler', 'The Jeep Wrangler is small and compact with enough power to get you where you want to go. It is great for everyday driving as well as off-roading whether that be on the rocks or in the mud!', '/phpmotors/images/vehicles/jeep-wrangler.jpg', '/phpmotors/images/vehicles/jeep-wrangler-tn.jpg', '28045', 4, 'Orange', 1),
(2, 'Ford', 'Model T', 'The Ford Model T can be a bit tricky to drive. It was the first car to be put into production. You can get it in any color you want if it is black.', '/phpmotors/images/vehicles/ford-modelt.jpg', '/phpmotors/images/vehicles/ford-modelt-tn.jpg', '30000', 2, 'Black', 2),
(3, 'Lamborghini', 'Adventador', 'This V-12 engine packs a punch in this sporty car. Make sure you wear your seatbelt and obey all traffic laws.', '/phpmotors/images/lambo-Adve.jpg', '/phpmotors/images/lambo-Adve-tn.jpg', '417650', 1, 'Blue', 3),
(4, 'Monster', 'Truck', 'Most trucks are for working, this one is for fun. This beast comes with 60 inch tires giving you the traction needed to jump and roll in the mud.', '/phpmotors/images/monster.jpg', '/phpmotors/images/monster-tn.jpg', '150000', 3, 'purple', 4),
(5, 'Mechanic', 'Special', 'Not sure where this car came from. However, with a little tender loving care it will run as good a new.', '/phpmotors/images/ms.jpg', '/phpmotors/images/ms-tn.jpg', '100', 1, 'Rust', 5),
(6, 'Batmobile', 'Custom', 'Ever want to be a superhero? Now you can with the bat mobile. This car allows you to switch to bike mode allowing for easy maneuvering through traffic during rush hour.', '/phpmotors/images/bat.jpg', '/phpmotors/images/bat-tn.jpg', '65000', 1, 'Black', 3),
(7, 'Mystery', 'Machine', 'Scooby and the gang always found luck in solving their mysteries because of their 4 wheel drive Mystery Machine. This Van will help you do whatever job you are required to with a success rate of 100%.', '/phpmotors/images/mm.jpg', '/phpmotors/images/mm-tn.jpg', '10000', 12, 'Green', 1),
(8, 'Spartan', 'Fire Truck', 'Emergencies happen often. Be prepared with this Spartan fire truck. Comes complete with 1000 ft. of hose and a 1000-gallon tank.', '/phpmotors/images/fire-truck.jpg', '/phpmotors/images/fire-truck-tn.jpg', '50000', 1, 'Red', 4),
(9, 'Ford', 'Crown Victoria', 'After the police force updated their fleet these cars are now available to the public! These cars come equipped with the siren which is convenient for college students running late to class.', '/phpmotors/images/crown-vic.jpg', '/phpmotors/images/crown-vic-tn.jpg', '10000', 5, 'White', 5),
(10, 'Chevy', 'Camaro', 'If you want to look cool this is the car you need! This car has great performance at an affordable price. Own it today!', '/phpmotors/images/camaro.jpg', '/phpmotors/images/camaro-tn.jpg', '25000', 10, 'Silver', 3),
(11, 'Cadillac', 'Escalade', 'This styling car is great for any occasion from going to the beach to meeting the president. The luxurious inside makes this car a home away from home.', '/phpmotors/images/escalade.jpg', '/phpmotors/images/escalade-tn.jpg', '75195', 4, 'Black', 1),
(12, 'GM', 'Hummer', 'Do you have 6 kids and like to go off-roading? The Hummer gives you the small interiors with an engine to get you out of any muddy or rocky situation.', '/phpmotors/images/hummer.jpg', '/phpmotors/images/hummer-tn.jpg', '58800', 5, 'Yellow', 5),
(13, 'Aerocar International', 'Aerocar', 'Are you sick of rush hour traffic? This car converts into an airplane to get you where you are going fast. Only 6 of these were made, get this one while it lasts!', '/phpmotors/images/aerocar.jpg', '/phpmotors/images/aerocar-tn.jpg', '1000000', 1, 'Red', 2),
(14, 'FBI', 'Surveillance Van', 'Do you like police shows? You will feel right at home driving this van. Comes complete with surveillance equipment for an extra fee of $2,000 a month. ', '/phpmotors/images/fbi.jpg', '/phpmotors/images/fbi-tn.jpg', '20000', 1, 'Green', 1),
(24, 'DMC', 'DeLorean', 'DMC DeLorean =) ', '/phpmotors/images/delorean.jpg', '/phpmotors/images/fbi-tn.jpg', '20000', 1, 'Green', 2),
(25, 'Dog', 'Car', 'Dog Car', '', '', '1200', 2, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewId` int(10) UNSIGNED NOT NULL,
  `reviewText` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `invId` int(10) UNSIGNED NOT NULL,
  `clientId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewId`, `reviewText`, `reviewDate`, `invId`, `clientId`) VALUES
(9, 'This is a review', '2023-04-06 01:52:17', 6, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carclassification`
--
ALTER TABLE `carclassification`
  ADD PRIMARY KEY (`classificationId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientId`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`imgId`),
  ADD KEY `invId` (`invId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invId`),
  ADD KEY `classificationId` (`classificationId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `invId` (`invId`),
  ADD KEY `clientId` (`clientId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carclassification`
--
ALTER TABLE `carclassification`
  MODIFY `classificationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `imgId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_inv_images` FOREIGN KEY (`invId`) REFERENCES `inventory` (`invId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`classificationId`) REFERENCES `carclassification` (`classificationId`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK_reviews_clients` FOREIGN KEY (`clientId`) REFERENCES `clients` (`clientId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_reviews_inventory` FOREIGN KEY (`invId`) REFERENCES `inventory` (`invId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
