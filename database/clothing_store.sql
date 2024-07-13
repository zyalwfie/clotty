-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 12:40 PM
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
-- Database: `clothing_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_c`
--

CREATE TABLE `category_c` (
  `ctgry_code_c` char(5) NOT NULL,
  `kind` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_c`
--

INSERT INTO `category_c` (`ctgry_code_c`, `kind`) VALUES
('C0001', 'Jacket'),
('C0002', 'Sweater'),
('C0003', 'Hoodie'),
('C0004', 'Blazer'),
('C0005', 'Coat'),
('C0006', 'Vest'),
('C0007', 'Shirt'),
('C0008', 'T-Shirt'),
('C0009', 'Polo Shirt'),
('C0010', 'Jersey'),
('C0011', 'Tuxedo');

-- --------------------------------------------------------

--
-- Table structure for table `category_s`
--

CREATE TABLE `category_s` (
  `ctgry_code_s` char(5) NOT NULL,
  `kind` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_s`
--

INSERT INTO `category_s` (`ctgry_code_s`, `kind`) VALUES
('S0001', 'Oxford'),
('S0002', 'Derby'),
('S0003', 'Blucher'),
('S0004', 'Chelsea'),
('S0005', 'Loafers'),
('S0006', 'Mokassin'),
('S0007', 'Boat'),
('S0008', 'Kets'),
('S0009', 'Trainers'),
('S0010', 'Chukka'),
('S0011', 'Dessert'),
('S0012', 'Monk');

-- --------------------------------------------------------

--
-- Table structure for table `category_t`
--

CREATE TABLE `category_t` (
  `ctgry_code_t` char(5) NOT NULL,
  `kind` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_t`
--

INSERT INTO `category_t` (`ctgry_code_t`, `kind`) VALUES
('T0001', 'Formal'),
('T0002', 'Cargo'),
('T0003', 'Jeans'),
('T0004', 'Jogger'),
('T0005', 'Chino'),
('T0006', 'Corduroy');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `code_c` char(5) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `ctgry_code_c` char(5) NOT NULL,
  `size` varchar(3) NOT NULL,
  `about` text NOT NULL,
  `picture` text NOT NULL,
  `price` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`code_c`, `brand`, `ctgry_code_c`, `size`, `about`, `picture`, `price`) VALUES
('C0001', 'Marmot', 'C0001', 'XL', 'Quality is important', 'jacketmarmot.png', 'IDR 499,000.00'),
('C0002', 'Mark of Legency', 'C0002', 'L', 'Soft and warm', 'markofelegencysweater.png', 'IDR 150,000.00'),
('C0003', 'Mockup', 'C0010', 'M', 'Best seller', 'jerseymockup.png', 'IDR 99,000.00'),
('C0004', 'Harriton Will', 'C0007', 'L', 'Made by master', 'harritontwillshirt.png', 'IDR 275,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `phone_number` char(12) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `gender`, `phone_number`, `email`) VALUES
('Tiara Andini', 'Female', '081366789899', 'tiaraand@gmail.com'),
('Hidayatullah', 'Male', '082288220309', 'dayat@gmail.com'),
('Muhammad Fahrul', 'Male', '087713145566', 'muhfahrul@gmail.com'),
('Zulkarnaen', 'Male', '087721334544', 'zulkarnaen@gmail.com'),
('Putri Diah', 'Female', '087945784322', 'putridiah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `code_s` char(5) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `ctgry_code_s` char(5) NOT NULL,
  `size` varchar(3) NOT NULL,
  `about` text NOT NULL,
  `picture` text NOT NULL,
  `price` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`code_s`, `brand`, `ctgry_code_s`, `size`, `about`, `picture`, `price`) VALUES
('S0001', 'Nike', 'S0009', '40', 'Suitable for sport', 'niketrainers.png', 'IDR 499,000.00'),
('S0002', 'Azcost', 'S0012', '41', 'From animal to special', 'azcostmonk.png', 'IDR 350,000.00'),
('S0003', 'Adidas', 'S0002', '40', 'Sporty and stylish', 'derby adidas.png', 'IDR 750,000.00'),
('S0004', 'Eiger', 'S0007', '39', 'Softy and warmy', 'eigerboat.png', 'IDR 150,000.00'),
('S0005', 'OTT', 'S0008', '38', 'Stylish for man and woman', 'ottkets.png', 'IDR 300,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_c`
--

CREATE TABLE `transaction_c` (
  `number` char(5) NOT NULL,
  `date` date NOT NULL,
  `phone_number` char(12) NOT NULL,
  `code_c` char(5) NOT NULL,
  `payment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_c`
--

INSERT INTO `transaction_c` (`number`, `date`, `phone_number`, `code_c`, `payment`) VALUES
('TC001', '2023-01-29', '082288220309', 'C0001', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_s`
--

CREATE TABLE `transaction_s` (
  `number` char(5) NOT NULL,
  `date` date NOT NULL,
  `phone_number` char(12) NOT NULL,
  `code_s` char(5) NOT NULL,
  `payment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_s`
--

INSERT INTO `transaction_s` (`number`, `date`, `phone_number`, `code_s`, `payment`) VALUES
('TS001', '2023-01-29', '087713145566', 'S0003', 'Paypal'),
('TS002', '2023-01-28', '087713145566', 'S0002', 'Cash'),
('TS003', '2023-01-29', '082288220309', 'S0001', 'Debit Card'),
('TS004', '2023-01-29', '087713145566', 'S0002', 'Debit Card');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_t`
--

CREATE TABLE `transaction_t` (
  `number` char(5) NOT NULL,
  `date` date NOT NULL,
  `phone_number` char(12) NOT NULL,
  `code_t` char(5) NOT NULL,
  `payment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_t`
--

INSERT INTO `transaction_t` (`number`, `date`, `phone_number`, `code_t`, `payment`) VALUES
('TT001', '2023-01-29', '087945784322', 'T0002', 'Cash'),
('TT002', '2023-01-29', '087721334544', 'T0001', 'Debit Card');

-- --------------------------------------------------------

--
-- Table structure for table `trousers`
--

CREATE TABLE `trousers` (
  `code_t` char(5) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `ctgry_code_t` char(5) NOT NULL,
  `size` varchar(3) NOT NULL,
  `about` text NOT NULL,
  `picture` text NOT NULL,
  `price` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trousers`
--

INSERT INTO `trousers` (`code_t`, `brand`, `ctgry_code_t`, `size`, `about`, `picture`, `price`) VALUES
('T0001', 'Trade Old', 'T0005', 'M', 'Slimfit at anywhere', 'chinotradeold.png', 'IDR 389,000.00'),
('T0002', 'Erigo', 'T0002', 'S', 'Suitable for anywhere', 'erigocargo.png', 'IDR 375,000.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin1', 'e00cf25ad42683b3df678c61f42c6bda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_c`
--
ALTER TABLE `category_c`
  ADD PRIMARY KEY (`ctgry_code_c`);

--
-- Indexes for table `category_s`
--
ALTER TABLE `category_s`
  ADD PRIMARY KEY (`ctgry_code_s`);

--
-- Indexes for table `category_t`
--
ALTER TABLE `category_t`
  ADD PRIMARY KEY (`ctgry_code_t`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`code_c`),
  ADD KEY `ctgry_code_c` (`ctgry_code_c`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`phone_number`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`code_s`),
  ADD KEY `ctgry_code_s` (`ctgry_code_s`);

--
-- Indexes for table `transaction_c`
--
ALTER TABLE `transaction_c`
  ADD PRIMARY KEY (`number`),
  ADD KEY `phone_number` (`phone_number`,`code_c`),
  ADD KEY `code_c` (`code_c`);

--
-- Indexes for table `transaction_s`
--
ALTER TABLE `transaction_s`
  ADD PRIMARY KEY (`number`),
  ADD KEY `phone_number` (`code_s`),
  ADD KEY `phone_number_2` (`phone_number`);

--
-- Indexes for table `transaction_t`
--
ALTER TABLE `transaction_t`
  ADD PRIMARY KEY (`number`),
  ADD KEY `phone_number` (`phone_number`),
  ADD KEY `code_c` (`code_t`);

--
-- Indexes for table `trousers`
--
ALTER TABLE `trousers`
  ADD PRIMARY KEY (`code_t`),
  ADD KEY `ctgry_code_t` (`ctgry_code_t`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `ctgry_code_c` FOREIGN KEY (`ctgry_code_c`) REFERENCES `category_c` (`ctgry_code_c`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `shoes_ibfk_1` FOREIGN KEY (`ctgry_code_s`) REFERENCES `category_s` (`ctgry_code_s`);

--
-- Constraints for table `transaction_c`
--
ALTER TABLE `transaction_c`
  ADD CONSTRAINT `phone_number` FOREIGN KEY (`phone_number`) REFERENCES `customer` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_c_ibfk_1` FOREIGN KEY (`code_c`) REFERENCES `clothes` (`code_c`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_s`
--
ALTER TABLE `transaction_s`
  ADD CONSTRAINT `transaction_s_ibfk_1` FOREIGN KEY (`code_s`) REFERENCES `shoes` (`code_s`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_s_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `customer` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_t`
--
ALTER TABLE `transaction_t`
  ADD CONSTRAINT `transaction_t_ibfk_1` FOREIGN KEY (`code_t`) REFERENCES `trousers` (`code_t`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_t_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `customer` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trousers`
--
ALTER TABLE `trousers`
  ADD CONSTRAINT `trousers_ibfk_1` FOREIGN KEY (`ctgry_code_t`) REFERENCES `category_t` (`ctgry_code_t`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
