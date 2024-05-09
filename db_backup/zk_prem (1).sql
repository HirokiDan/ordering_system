-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 06:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zk_prem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `created_at`) VALUES
(24, 'Flavored Variants', 'Flavored Variants', 'Menu/At Home Coffee', 0, 1, '1701270568.png', '2022-11-04 13:54:55'),
(33, 'Classic Variants ', 'Classic Variants', 'Menu/Classic Coffee At Home', 0, 1, '1701270575.png', '2023-01-23 04:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` mediumtext NOT NULL,
  `notes` varchar(255) NOT NULL,
  `total_price` int(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `address`, `notes`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(44, 'ZKCOFFEE6244', 10, 'DFASFA', 'admin@gmail.com', '124', 'SAFFASFAFA', '214', 80, 'COD', '', 1, NULL, '2023-11-16 13:12:51'),
(45, 'ZKCOFFEE698411', 13, 'fasfa', 'user@gmail.com', '12411', 'afasfa12fa', '1241', 160, 'COD', '', 0, NULL, '2023-11-27 17:29:05'),
(46, 'ZKCOFFEE3103124', 13, 'fasfas', 'user@gmail.com', '123124', 'fasfasfasf', '0', 60, 'COD', '', 0, NULL, '2023-11-29 15:35:32'),
(47, 'ZKCOFFEE693fa241', 13, 'fasf', 'asfasf@gmail.com', 'asfa241', '142414', '124124', 20, 'COD', '', 0, NULL, '2023-11-29 16:52:03'),
(48, 'ZKCOFFEE20224852928', 13, 'Mang Jose', 'mangjose@gmail.com', '0924852928', '85 Tangera Street, Malate, Quezon City', ':))', 20, 'COD', '', 0, NULL, '2023-12-03 08:58:58'),
(49, 'ZKCOFFEE482fa', 13, 'asfaf', 'asfasf@gmail.com', 'asfa', 'afsaf', 'fasf', 100, 'COD', '', 0, NULL, '2024-04-04 04:13:13'),
(50, 'ZKCOFFEE16818748241', 27, 'Mang Kanor', 'xmenjohn21@gmail.com', '0918748241', '124142', '1244', 60, 'COD', '', 0, NULL, '2024-05-02 10:35:43'),
(51, 'ZKCOFFEE888sfas', 19, 'fasfas', 'fasfasfasf@gmail.com', 'fasfas', '12412414124', '1241241', 80, 'COD', '', 0, NULL, '2024-05-02 14:34:30'),
(52, 'ZKCOFFEE49018748241', 9, 'John Miguel Ofalla', 'admin@gmail.com', '0918748241', '1412412412', 'wala', 20, 'COD', '', 0, NULL, '2024-05-02 14:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE `tbl_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) NOT NULL,
  `prod_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order_items`
--

INSERT INTO `tbl_order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(13, 26, 24, 2, 22, '2023-01-14 03:40:22'),
(14, 27, 24, 1, 22, '2023-01-20 13:41:02'),
(15, 28, 24, 1, 22, '2023-01-20 13:41:37'),
(16, 29, 24, 1, 22, '2023-01-20 13:43:26'),
(17, 30, 24, 3, 22, '2023-01-20 13:51:41'),
(18, 31, 24, 3, 22, '2023-01-20 13:54:53'),
(19, 32, 24, 4, 22, '2023-01-20 14:07:11'),
(20, 33, 24, 1, 22, '2023-01-23 04:19:29'),
(21, 34, 24, 3, 22, '2023-01-23 04:29:57'),
(22, 35, 24, 2, 22, '2023-01-24 11:50:24'),
(23, 36, 24, 3, 75, '2023-01-25 04:16:22'),
(24, 37, 24, 1, 75, '2023-01-25 05:55:20'),
(25, 38, 34, 1, 350, '2023-01-25 07:02:13'),
(26, 39, 33, 3, 40, '2023-01-25 07:02:56'),
(27, 40, 34, 3, 350, '2023-01-25 07:08:08'),
(28, 41, 24, 22, 20, '2023-10-22 12:21:51'),
(29, 42, 24, 1, 20, '2023-10-22 14:09:55'),
(30, 42, 31, 1, 20, '2023-10-22 14:09:55'),
(31, 43, 31, 3, 20, '2023-11-16 13:09:13'),
(32, 44, 31, 4, 20, '2023-11-16 13:12:51'),
(33, 45, 24, 4, 20, '2023-11-27 17:29:05'),
(34, 45, 32, 4, 20, '2023-11-27 17:29:05'),
(35, 46, 35, 1, 20, '2023-11-29 15:35:32'),
(36, 46, 33, 1, 20, '2023-11-29 15:35:32'),
(37, 46, 32, 1, 20, '2023-11-29 15:35:32'),
(38, 47, 35, 1, 20, '2023-11-29 16:52:03'),
(39, 48, 34, 1, 20, '2023-12-03 08:58:58'),
(40, 49, 24, 2, 20, '2024-04-04 04:13:13'),
(41, 49, 32, 3, 20, '2024-04-04 04:13:13'),
(42, 50, 33, 3, 20, '2024-05-02 10:35:43'),
(43, 51, 35, 4, 20, '2024-05-02 14:34:30'),
(44, 52, 32, 1, 20, '2024-05-02 14:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `category_id`, `name`, `slug`, `description`, `price`, `image`, `qty`, `status`, `trending`) VALUES
(24, 24, 'Hazelnut', 'Hazel', 'Savor the comforting warmth and irresistible aroma of our Hazelnut Coffee. This delightful blend combines the smooth richness of coffee with the sweet, nutty essence of hazelnuts, creating a luscious and indulgent experience in every cup.', 20, '1701269543.png', 93, 0, 1),
(31, 33, 'Sagada Dark', 'Sagada', 'Savor the bold allure of Sagada Dark coffee, a robust blend that captivates with deep, earthy undertones and a distinct richness. Grown amidst the picturesque landscapes of Sagada, each cup embodies the essence of artisanal craftsmanship, delivering a truly unforgettable and indulgent coffee experience.', 20, '1701268980.png', 192, 0, 1),
(32, 33, 'Arabica Blend', 'Arabica', 'Indulge in the exquisite harmony of our Arabica Blend. Sourced from the Cordilleras, this blend boasts a smooth, medium bodied profile with bright acidity and subtle floral notes.', 20, '1701269566.png', 191, 0, 1),
(33, 24, 'Caramel', 'Cara', 'Satisfy your sweet cravings with our irresistible Caramel Coffee. Indulge in the perfect blend of rich Arabica coffee and luscious caramel, creating a deliciously smooth and decadent cup that is sure to add a touch of sweetness to your day.', 20, '1701269573.png', 193, 0, 1),
(34, 24, 'Mocha', 'Moc', 'Savor the decadent fusion of rich espresso and velvety chocolate in our Mocha coffee. This indulgent blend delivers a perfect balance of bittersweet cocoa and robust coffee, creating a luscious, irresistible treat for your palate.', 20, '1701269583.png', 195, 0, 1),
(35, 33, 'Italian Espresso', 'Italy', 'Experience the bold and robust essence of Italian Espresso coffee, a true embodiment of the Italian coffee culture. Savor the intense, full-bodied flavor with a lingering crema, delivering a moment of pure indulgence in every shot.', 20, '1701269734.png', 94, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `otp` varchar(6) NOT NULL,
  `otp_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `otp`, `otp_timestamp`) VALUES
(9, 'CJS', 'admin@gmail.com', 222, '123', 1, '0', '2024-05-02 05:20:55'),
(13, 'Borgs', 'user@gmail.com', 1244, '1', 0, '0', '2024-05-02 05:20:55'),
(18, 'Mang Kanor', 'xmenjohn21@gmail.com', 21424, '1234', 0, '0', '2024-05-02 05:20:55'),
(19, 'Christian Bautista', 'johnmarkbelas72@gmail.com', 1241241, '123', 0, '566331', '2024-05-09 02:44:56'),
(27, 'Christopher', 'xmenjohn21@gmail.com', 918748241, 'Xmntope@24', 0, '899312', '2024-05-02 10:34:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
