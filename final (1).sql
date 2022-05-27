-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 02:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` mediumint(45) DEFAULT NULL,
  `CCNumber` varchar(16) DEFAULT NULL,
  `Balance` double DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `UserName`, `Email`, `Password`, `CCNumber`, `Balance`) VALUES
(6, 'amer', 'amer@gmail.com', 123456, '1234567890123456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Quantity` tinyint(4) DEFAULT 1,
  `ProductID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Price` double(5,2) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Video` varchar(45) DEFAULT NULL,
  `Platform` enum('Windows','Linux') DEFAULT NULL,
  `Cover` varchar(55) DEFAULT NULL,
  `Image1` varchar(55) DEFAULT NULL,
  `Image2` varchar(55) DEFAULT NULL,
  `Image3` varchar(55) DEFAULT NULL,
  `Image4` varchar(55) DEFAULT NULL,
  `ExeFile` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `Title`, `Price`, `Description`, `Video`, `Platform`, `Cover`, `Image1`, `Image2`, `Image3`, `Image4`, `ExeFile`) VALUES
(1, 'Librax', 7.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It It has survived not only five centuries, but also the leap into electronic typesetting,', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8', NULL, 'resources/images/Librax/5-Librax.jpg', 'resources/images/Librax/1-Librax.jpg', 'resources/images/Librax/2-Librax.jpg', 'resources/images/Librax/3-Librax.jpg', 'resources/images/Librax/4-Librax.jpg', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8'),
(2, 'Oflox', 5.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It It has survived not only five centuries, but also the leap into electronic typesetting,', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8', NULL, 'resources/images/Oflox/1-Oflox.jpg', 'resources/images/Oflox/2-Oflox.jpg', 'resources/images/Oflox/3-Oflox.jpg', 'resources/images/Oflox/4-Oflox.jpg', 'resources/images/Oflox/5-Oflox.jpg', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8'),
(3, 'Otrivin', 6.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It It has survived not only five centuries, but also the leap into electronic typesetting,', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8', NULL, 'resources/images/Otrivin/1-Otrivin.jpg', 'resources/images/Otrivin/2-Otrivin.jpg', 'resources/images/Otrivin/3-Otrivin.jpg', 'resources/images/Otrivin/4-Otrivin.jpg', 'resources/images/Otrivin/5-Otrivin.jpg', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8'),
(4, 'Paracetamol', 4.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It It has survived not only five centuries, but also the leap into electronic typesetting,', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8', NULL, 'resources/images/Paracetamol/1-Paracetamol.jpg', 'resources/images/Paracetamol/2-Paracetamol.jpg', 'resources/images/Paracetamol/3-Paracetamol.jpg', 'resources/images/Paracetamol/4-Paracetamol.jpg', 'resources/images/Paracetamol/5-Paracetamol.jpg', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8'),
(5, 'RELAXON', 8.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It It has survived not only five centuries, but also the leap into electronic typesetting,', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8', NULL, 'resources/images/RELAXON/1-RELAXON.jpg', 'resources/images/RELAXON/2-RELAXON.jpg', 'resources/images/RELAXON/3-RELAXON.jpg', 'resources/images/RELAXON/4-RELAXON.jpg', 'resources/images/RELAXON/5-RELAXON.jpg', 'https://www.youtube.com/watch?v=1UgdEH0cUQ8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
