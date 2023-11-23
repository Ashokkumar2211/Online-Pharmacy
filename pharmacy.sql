-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 20, 2023 at 05:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `Email`) VALUES
(1, 'admin', 'admin', 'admin@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `contact`, `address`, `age`) VALUES
(5, 'cat', 'catherine@gmail.com', '$2y$10$n5LwN6HnV99s7Ml.iq8speHIhCBxiaZThgZQRKCPYqY7XtsFWh9XG', '12345', NULL, NULL),
(6, 'ashok', 'ashok@gmail.com', '$2y$10$kg6qYg.4sk5eg5uLaVSSMuyKjNN2u5O4e4NSzZ45FyYRBqUxbHvaC', '1234', '893A Nadugani ,Gudalur,tamilnadu,643211', NULL),
(8, 'Jishnu', 'jishnuvino@gmail.com', '$2y$10$1sTAsDlFht8omsDe9cQ/our3Q9pVQfmNvXreC1s9CND40Pu.fq5Um', '9360232120', NULL, NULL),
(11, 'magesh', 'magesh@gmail.com', '$2y$10$ozBpA5dx4sp1qwc7SPKGXe/PRs1BjrRfyoHH11UBfmNy1ve/6zvlm', '+916381212316', NULL, NULL),
(12, 'yousuf', 'yousuf123@gmail.com', '$2y$10$.beFbgLnqo7BCTZ6VN8EIejF3Kz6IZ7JOyr4cvZ/fwQ8OTik8XguW', '9345589433', NULL, NULL),
(13, 'midhlaj', 'mohammedmidhlajkm@gmail.com', '$2y$10$uGFiTI2a3Dn1YcWt2GEyf.KZzpg7FGruwrurL3f/kOZwBXm2Mo4eW', '6374113667', NULL, NULL),
(15, 'Amjad', 'amj@gmail.com', '$2y$10$T1pU2XDONHvlyersA1K1Du1e7/LFa7XA871/EDlEP4Li3/eUvN.P2', '7909149861', NULL, NULL),
(17, 'Ariya', 'vargheseariya@gmail.com', '$2y$10$RVcKsaI64d4xDFWsWwlmH.VW3dPgGVjApxqdyqz78verPbviWmZmi', '7092445588', 'near lotus hospital,erode', NULL),
(18, 'Kabilan', 'kabilankabi1119@gmail.com', '$2y$10$sK6B9zJ81P0ypnIJQPvrSOLaqkEhTsm1gDGNB0VLr6FdP5cJpF5bi', '9789625194', '1/248 keel theru , thirupampuram.', NULL),
(20, 'subhan', 'subhanji@gmail.com', '$2y$10$M5iQPmdRT8ufOMwxjyHyNuonOU0rE3KWm2DR9FBzyONTY681OUenS', '9360114488', 'asath street,kayilpatnam .', 2),
(21, 'subhan', 'subhan@gmail.com', '$2y$10$Z4QguEN1y5LRuKknKZH2j.iqHYDjEcTsyUy1S2WvlDBEhehfK.fzu', '123456789', 'shkdcd', 5),
(22, 'sadkjba', 'ashok12@gmail.com', '$2y$10$.RrGlcXBbd7o2t7yr5DomOdoXaef0HOzu2y11y8aIXpA4z5FyxBg2', '31432423', 'fdksmdflks', 18),
(23, '', '', '$2y$10$z6jXaQ5ycYnWcvaxfQ0a2es1W0XB8A8qRPdHNUSv76/U84WLBH2Lu', '0', '', 0),
(24, 'ashok', 'ashokrini3010@gmail.com', '$2y$10$5RioK.XbPgrqITtssjV1iOMLeXNhNGc/Vs5.qkLe5ofDAiCRuoI.C', '9786264560', 'KEEL THERU', 11),
(25, 'ashok', 'ashokrini3010@gmail.com', '$2y$10$WJMwIBrbz/5GgvU2QMM4fuI4CJ3kJ1kZW1A9dxVcgivDJlXO/rbf.', '9786264560', 'KEEL THERU', 11),
(26, 'suaib', 'ahamed3@gmail.com', '$2y$10$TB4g0BqRAvUrOAzhlv3kXeTyCmLyqUphgXF1BTFaoZVOajGJPhiLe', '9876543210', '12 a sgfdudkjfhgx', 18),
(27, 'suaib', 'suaib2004@gmail.com', '$2y$10$8hU50qgKlY6GuH38uXJbEujbxiSF7Lv7JvInRAD8nyFwp7.h2QO/G', '9876543210', '12 s sgsn ssgjs', 19),
(28, 'aja', 'sdjka@gmail.com', '$2y$10$DGtsxCZU/X3kTdshLjqfEu1nws3AADLkVgaxBC6c6IcQfLz8jqU1a', '99878646', '54, sadl, 455441', 21),
(29, 'ash', 'sweety@gmail.com', '$2y$10$H/hjRTLBZdN8KKIhbC9Kl.g/sROjtAdYl1b2t9mnwczeFMdNBIeU6', '9786264560', '2255, madu, 645555, 19, 29', 21),
(30, 'com', 'bit@gmail.com', '$2y$10$/jt0Ab.PD0knIUcncZC1He9PTXvp1wnt7.tXYqWwKm7H5odNg6czC', '9786264560', '22aaaa55, madu, 645555, 32, 11', 21),
(31, 'POooja', 'poojaashok@gmail.com', '$2y$10$cjOR1n6LPk4iIgA09KORruq0jn.4RHN.OmW1jqb4mClFbYu5Kwhnm', '9342028638', '12, KOZHIPALAM, 6432112, 32, 31', 21),
(32, 'yusuf', 'yusuflavde@gmail.com', '$2y$10$GHSaQxzhE8HIwZHus2eQqe7aISE.iOe5pnNiPpM5w0A513M8l02Qm', '9345589433', '893, NADUGANI, 643211, 19, 1', 22),
(34, 'AS', 'SAw@FMAIL.CON', '$2y$10$Dy7INJonCvNu1KLIe16RQuYXwWourv.VFCau7g8Ic7r60qXJBKaBq', '9786264560', '7, DHAK, 545454, 14, 1', 11),
(35, 'abdul', 'abdul@gmail.com', '$2y$10$EyxI/T4urwhdAe.aYd5XTuqpMX.p2596BkUoHNxTfGmXvsRHEhTuG', '6123456789', '32, dlfsm, 324234, Kerala, ', 23),
(36, 'subhan', 'subhna@gmail.com', '$2y$10$g3ykIxVQ2PVJJahKx2Wf0eBYPuYrxg7pyzfOCEq6vlNB4ep8RLcP6', '6324234234', '32, dfsfsdf, 32423, 17, 0', 21),
(37, 'subhanas', 'subhn@gmail.com', '$2y$10$/V/rdIkIxdcCzq5Jl424guzy/jNfRHP0UNCtTT2JzWoKxxvTkYwTu', '6324234234', '32, dfsfsdf, 32423, 20, 16', 21),
(38, 'abdul', 'sdfdf2@gmail,com', '$2y$10$zOTvSTrzX32jwuiBh0pre.aadm6LevpcLJ5wVeSuwQcV0l9TKdQMK', '6234243242', '234, DFS, 213, 16, 18', 21),
(39, 'VDFV', 'SA@gmail.com', '$2y$10$cpMuVzP22U59Z.d4T1TtCePSvM5BaV/.tuaHYwIwRTVKUIs3xQYqi', '6345243432', '3232, fdsf, 3242322, 18, 19', 12),
(40, 'adbuk', 'klksa@gmail.com', '$2y$10$rTSLD9uZ2wpienaXVxXsCetmmqoaiYZwIBNh6M6jyVWl9541yFmgG', '6231213223', '2121, sds, 3243, 17, 18', 23),
(41, 'sdfsd', 'sdfsd@gmail.com', '$2y$10$Iz44mCaXHQN12Qdzh3ppJu7LXyzXrkTMugT8Ba8HU6BQeU0zacEw2', '6324243443', '342, dsfdf, 32424, 18, 18', 324);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'payment successful',
  `shipping_address` text NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_email` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT 'payment successful',
  `order_status` varchar(255) DEFAULT 'order placed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_method`, `shipping_address`, `contact_number`, `total_amount`, `order_date`, `user_email`, `payment_status`, `order_status`) VALUES
(71, 'paypal', '893A Nadugani ,Gudalur,tamilnadu,643211', '+91 93455 89433', 365.00, '2023-10-25 06:50:25', 'ashok@gmail.com', 'payment successful', 'order placed'),
(72, 'creditCard', '893A Nadugani ,Gudalur,tamilnadu,643211', '+91 97862 64560', 89.00, '2023-10-25 06:56:08', 'ashok@gmail.com', 'payment successful', 'order placed');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_mrp` decimal(10,2) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_name`, `product_mrp`, `user_email`) VALUES
(82, 71, 'Alcohol-Free Hand Sanitizer', 89.00, 'ashok@gmail.com'),
(83, 71, 'Adhesive Bandages', 69.00, 'ashok@gmail.com'),
(84, 72, 'Alcohol-Free Hand Sanitizer', 89.00, 'ashok@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `shipping_address` text NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prescription_path` varchar(255) NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `name`, `email`, `prescription_path`, `submission_date`) VALUES
(7, 'Gayathri', 'GayathriAk@gmail.com', 'uploads/sample2.jpeg', '2023-10-04 12:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `MRP` varchar(20) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_special_offer` tinyint(1) DEFAULT 1,
  `is_fast_selling` tinyint(1) DEFAULT 1,
  `adult` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `MRP`, `category`, `image`, `is_special_offer`, `is_fast_selling`, `adult`) VALUES
(7, 'Paracetamol Tablets', 'Effective for reducing fever and relieving mild to moderate pain.', ' 199', 'Pain Relief', 'images/photo1.jpg', NULL, 1, NULL),
(8, 'Ibuprofen Capsules', 'Non-prescription pain relief for headaches, muscle aches, and more.', ' 249', 'Pain Relief', 'images/photo2.jpg', NULL, 1, NULL),
(9, 'Aspirin Tablets', 'Classic pain reliever for minor aches and pains.', ' 149', 'Pain Relief', 'images/photo3.jpg', 1, 1, NULL),
(10, 'Diclofenac Gel', 'Topical gel for localized pain relief, including arthritis.', ' 349', 'Pain Relief', 'images/photo4.jpg', NULL, 0, NULL),
(11, 'Calcium Supplements', 'Supports bone health and muscle function.', ' 269', 'Vitamins and Supplements', 'images/photo5.jpg', NULL, 1, NULL),
(12, 'Vitamin D3 Drops', 'Essential for strong bones and a healthy immune system.', ' 199', 'Vitamins and Supplements', 'images/photo6.jpg', NULL, 0, NULL),
(13, 'Probiotic Capsules', 'Promotes gut health and digestive balance.', ' 299', 'Vitamins and Supplements', 'images/photo7.jpg', 1, 1, NULL),
(14, 'Vitamin B Complex', 'Boosts energy and supports overall health.', ' 249', 'Vitamins and Supplements', 'images/photo8.jpg', NULL, 1, NULL),
(15, 'Cough Syrup', 'Relieves coughs and soothes sore throats.', ' 169', 'Cold and Flu Relief', 'images/photo9.jpg', NULL, 1, NULL),
(16, 'Nasal Saline Spray', 'Provides gentle relief for dry or stuffy noses.', ' 119', 'Cold and Flu Relief', 'images/photo10.jpg', 1, 1, NULL),
(17, 'Antibacterial Hand Gel', 'Kills germs and bacteria without water.', ' 99', 'Cold and Flu Relief', 'images/photo11.jpg', NULL, 0, NULL),
(18, 'Emergency First Aid Kit', 'Essential supplies for unexpected injuries.', ' 899', 'First Aid Supplies', 'images/photo12.jpg', NULL, 0, NULL),
(19, 'Digital Thermometer', 'Quick and accurate temperature readings.', ' 1199', 'First Aid Supplies', 'images/photo13.jpg', NULL, 0, NULL),
(20, 'Adhesive Bandages', 'Waterproof bandages for minor cuts and scrapes.', ' 69', 'First Aid Supplies', 'images/photo14.jpg', NULL, 0, NULL),
(21, 'Hydrocortisone Cream', 'Relieves itching and skin irritations.', ' 149', 'First Aid Supplies', 'images/photo15.jpg', NULL, 0, NULL),
(22, 'Migraine Relief Tablets', 'Specially formulated for fast relief from migraine headaches.', ' 349', 'Pain Relief', 'images/photo16.jpg', NULL, 0, NULL),
(23, 'Heat Pain Patch', 'Provides long-lasting heat therapy for muscle pain and stiffness.', ' 199', 'Pain Relief', 'images/photo17.jpg', NULL, 1, NULL),
(24, 'Glucosamine Chondroitin Supplements', 'Supports joint health and reduces arthritis discomfort.', ' 449', 'Pain Relief', 'images/photo18.jpg', 1, 1, NULL),
(25, 'Anti-Inflammatory Cream', 'Reduces inflammation and swelling due to injuries.', ' 299', 'Pain Relief', 'images/photo19.jpg', NULL, 0, NULL),
(26, 'Vitamin E Capsules', 'Promotes skin health and antioxidant protection.', ' 149', 'Vitamins and Supplements', 'images/photo20.jpg', NULL, 0, NULL),
(27, 'Protein Powder', 'Provides a source of protein for muscle recovery and growth.', ' 2500', 'Vitamins and Supplements', 'images/photo21.jpg', NULL, 0, NULL),
(28, 'Vitamin A Supplements', 'Supports eye health and the immune system.', ' 129', 'Vitamins and Supplements', 'images/photo22.jpg', NULL, 0, NULL),
(29, 'Decongestant Tablets', 'Relieves sinus congestion and pressure.', ' 109', 'Cold and Flu Relief', 'images/photo23.jpg', NULL, 0, NULL),
(30, 'Vaporizing Rub', 'Soothes chest and throat discomfort due to colds.', ' 99', 'Cold and Flu Relief', 'images/photo24.jpg', NULL, 0, NULL),
(31, 'Emergency First Aid Manual', 'Comprehensive guide for handling injuries and emergencies.', ' 199', 'First Aid Supplies', 'images/photo25.jpg', NULL, 0, NULL),
(32, 'Alcohol-Free Hand Sanitizer', 'Kills germs without drying the skin.', ' 89', 'First Aid Supplies', 'images/photo26.jpg', NULL, 0, NULL),
(33, 'Burn Cream', 'Cools and soothes minor burns and sunburns.', ' 99', 'First Aid Supplies', 'images/photo27.jpg', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `name`, `rating`, `comment`, `created_at`) VALUES
(1, 33, 'ashok', 4, 'very good', '2023-10-03 12:28:02'),
(8, 7, 'Amit Sharma', 5, 'Great product!', '2023-10-04 05:35:58'),
(9, 8, 'Priya Gupta', 4, 'Good for pain relief.', '2023-10-04 05:35:58'),
(10, 9, 'Rajesh Patel', 3, 'Average product.', '2023-10-04 05:35:58'),
(11, 10, 'Neha Verma', 5, 'Works like a charm.', '2023-10-04 05:35:58'),
(12, 11, 'Anil Yadav', 4, 'Helped with bone health.', '2023-10-04 05:35:58'),
(13, 12, 'Meera Singh', 5, 'Easy to use and effective.', '2023-10-04 05:35:58'),
(14, 13, 'Ramesh Joshi', 3, 'Not bad, but not great.', '2023-10-04 05:35:58'),
(15, 14, 'Sunita Sharma', 4, 'Satisfied with the results.', '2023-10-04 05:35:58'),
(16, 15, 'Kiran Malhotra', 5, 'Relieved my cough.', '2023-10-04 05:35:58'),
(17, 16, 'Deepak Kumar', 4, 'Good for muscle pain.', '2023-10-04 05:35:58'),
(18, 17, 'Nisha Kapoor', 3, 'Average hand gel.', '2023-10-04 05:35:58'),
(19, 18, 'Sanjay Gupta', 5, 'Great first aid kit!', '2023-10-04 05:35:58'),
(20, 19, 'Pooja Singh', 4, 'Accurate thermometer.', '2023-10-04 05:35:58'),
(21, 20, 'Rajeev Verma', 5, 'Sticky bandages but effective.', '2023-10-04 05:35:58'),
(22, 21, 'Reena Sharma', 3, 'Helped with itching.', '2023-10-04 05:35:58'),
(23, 22, 'Vivek Patel', 4, 'Effective for migraines.', '2023-10-04 05:35:58'),
(24, 23, 'Sarika Reddy', 5, 'Soothes muscle pain.', '2023-10-04 05:35:58'),
(25, 24, 'Manoj Kumar', 4, 'Good for joint health.', '2023-10-04 05:35:58'),
(26, 25, 'Ananya Choudhary', 3, 'Reduced inflammation.', '2023-10-04 05:35:58'),
(27, 26, 'Prakash Reddy', 5, 'Improved skin health.', '2023-10-04 05:35:58'),
(28, 27, 'Sneha Gupta', 4, 'Good protein source.', '2023-10-04 05:35:58'),
(29, 28, 'Rajat Singh', 5, 'Improved eye health.', '2023-10-04 05:35:58'),
(30, 29, 'Aishwarya Mishra', 4, 'Relieved sinus congestion.', '2023-10-04 05:35:58'),
(31, 30, 'Vijay Yadav', 3, 'Soothing rub.', '2023-10-04 05:35:58'),
(32, 31, 'Shalini Sharma', 5, 'Comprehensive first aid guide.', '2023-10-04 05:35:58'),
(33, 32, 'Nitin Kapoor', 4, 'Effective hand sanitizer.', '2023-10-04 05:35:58'),
(34, 33, 'Anjali Verma', 5, 'Cooled minor burns.', '2023-10-04 05:35:58'),
(44, 32, 'kumdha', 3, '122', '2023-10-13 05:07:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_product` (`product_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `login` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
