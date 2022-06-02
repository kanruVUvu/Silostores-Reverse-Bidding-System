-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 11, 2022 at 05:59 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u908947830_bidding_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `bid_amount` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=bid,2=confirmed,3=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `product_id`, `bid_amount`, `status`, `date_created`) VALUES
(2, 5, 1, 7500, 1, '2020-10-27 14:18:50'),
(4, 5, 3, 155000, 1, '2020-10-27 16:37:29'),
(5, 1, 4, 1000, 1, '2021-12-26 16:15:46'),
(6, 7, 13, 400, 1, '2022-02-03 08:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(9, 'Desk Stationery'),
(10, 'Pencil'),
(11, 'Pens'),
(12, 'Chalk'),
(13, 'Note Books'),
(14, 'Boards'),
(15, 'Markers and Sketchpens');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `start_bid` float NOT NULL,
  `regular_price` float NOT NULL,
  `bid_end_datetime` datetime NOT NULL,
  `img_fname` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `start_bid`, `regular_price`, `bid_end_datetime`, `img_fname`, `date_created`) VALUES
(13, 9, 'A4 Paper', 'A4 size paper , Suitable for school assignment and office work , Pure white, Extra Durable', 1000, 20, '2022-02-28 19:27:00', '13.png', '2022-01-03 13:58:21'),
(14, 10, 'APSARA ABSOLUTE PENCILS VALUE PACK – PACK OF 20', 'Wooden pencil, No. 1 recommended stationary by teachers for children, Designed to aid legibility', 1000, 20, '2022-03-01 22:00:00', '14.png', '2022-01-03 13:59:38'),
(15, 11, 'CELLO ASPRO MAVRO BALL PEN SET OF 50', '0.7mm tip gives smooth writing experience, Lightweight body makes it ideal for longer writing duration, The stylish matte look of the ball pen makes it ideal for office and school use, Aspro is white in colour and Mavro has a smart black body, There are 50 pens in this pack that come in a rotational pen stand', 2000, 100, '2022-03-31 19:32:00', '15.png', '2022-01-03 14:02:39'),
(16, 12, 'Chalk', 'White dustless chalks, No. 1 recommended stationary by teachers for children, Designed to aid legibility', 2500, 500, '2022-03-31 19:33:00', '16.png', '2022-01-03 14:03:56'),
(17, 13, 'CLASSMATE ORIGAMI NOTEBOOKS', '2 colorful tear-off origami sheets with instructions inside. Models included in this combo: Flighter Jet, Lion, Crab & Fox. Pack of 4 origami notebooks – unruled, 172 pages, 240 mm x 180 mm, soft cover, center-staple. Classmate uses and elemental chlorine free paper. Enable learning through the art of origami with Classmate.', 4000, 500, '2022-03-31 23:00:00', '17.png', '2022-01-03 14:05:53'),
(18, 9, 'Stapler', 'Stapler holds up to 200 staples and offers a 10-sheet stapling capacity. Can be opened for tacking info to a bulletin board. A great choice for shared workspaces. Full rubber base keeps stapler securely in place during use – no skidding or slipping. Includes a convenient staple remover at the end. Color: black. 1 year limited warranty', 5000, 1000, '2022-03-30 23:00:00', '18.jpg', '2022-01-03 14:07:36'),
(19, 14, 'White Board', 'Contains: (Pack of 1) 2ft x 3ft Non Magnetic white board which is portable memo white board, or for home, office, study rooms. The whiteboard has non magnetic light weight aluminum frame. Resin-painted steel surface is easy for writing, paint, erasing, drawing pictures and signs. This personal whiteboard is perfect for presentation, education, to do lists, planning work schedules or kids learning. Suitable decor for outdoor, home, kitchen, fridge, office, cubicle, desk, class, school, kindergarten, college, dorm room, locker room, game sport room. Big help for managers, teachers, students and children. Dual advantage to write with marker in white surface and with chalk on reverse green surface. This white board can be used at Home, Offices and Schools, It Works nicely with Any Whiteboard Marker.', 5000, 1000, '2022-03-30 23:00:00', '19.png', '2022-01-03 14:09:20'),
(20, 15, 'White Board Marker', 'Standard White Board Marker with different colours', 1000, 50, '2022-04-28 22:00:00', '20.png', '2022-01-03 14:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Silostores Reverse Bidding System', 'contact@silostore.in', '+91 8147854850', '1640456340_cropped-logo_transparent.png', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size: 19px; font-style: inherit; font-weight: inherit; text-align: left;&quot;&gt;We are a one stop solution to all your office and college needs. We provide premium products at the cheapest prices available on the market. We have reputed shipping partners who deliver your products with a timely delivery schedule. U&lt;/span&gt;&lt;span style=&quot;font-size: 19px; font-style: inherit; font-weight: inherit; text-align: left;&quot;&gt;niversities and offices can get all the products they need directly from the manufactures delivered right at their doorstep. We provide the consumer with a wide range of products such as |STATIONERY|COMPUTER CONSUMABLES|SOFTWARE SOLUTIONS|DAIRIES|. Our wide range of products are used across universities, offices and furthermore with the best prices in the market.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2=Subscriber',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `contact`, `address`, `type`, `date_created`) VALUES
(1, 'Dheeraj Bleamtech', 'admin', 'admin123@', 'admin@admin.com', '+123456789', '', 1, '2020-10-27 09:19:59'),
(6, 'Dheeraj Rao Pathur', 'test123', '953aa84d3142835ef3234957e1992f60', '', '', '', 2, '2021-12-25 23:43:27'),
(7, 'faizan', 'abc123', 'b24331b1a138cde62aa1f679164fc62f', 'abc@gmail.com', '9088907678', 'test address', 2, '2022-02-03 08:53:54'),
(8, 'pest', 'pest123', '39d14a3e86614a33e96083fe7cceb9be', 'pest@gmail.com', '8907890765', 'pest address', 2, '2022-04-05 06:35:09'),
(9, 'testdata', 'admindata', 'admindata123@', 'admin@gmail.com', '9087654670', 'test address', 1, '2022-04-05 06:38:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
