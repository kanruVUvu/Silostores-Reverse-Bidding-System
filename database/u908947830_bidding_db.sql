-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 08:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

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
(5, 1, 4, 1000, 1, '2021-12-26 16:15:46');

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
(1, 'Desk Stationery'),
(2, 'Pencil'),
(3, 'Pens'),
(4, 'Boards'),
(5, 'Markers and SketchPens'),
(6, 'Chalk'),
(7, 'Note books');

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
(4, 1, 'A4 Paper', 'A4 size paper. Suitable for school assignment and office work. Pure white. Extra Durable', 8000, 3000, '2021-12-28 03:00:00', '4.png', '2021-12-26 00:21:14'),
(5, 1, 'Stapler', 'Stapler holds up to 200 staples and offers a 10-sheet stapling capacity. Can be opened for tacking info to a bulletin board. A great choice for shared workspaces. Full rubber base keeps stapler securely in place during use – no skidding or slipping. Includes a convenient staple remover at the end. Color: black. 1 year limited warranty', 5000, 1000, '2021-12-30 04:00:00', '5.jpg', '2021-12-26 00:24:39'),
(6, 2, 'APSARA ABSOLUTE PENCILS VALUE PACK – PACK OF 20', 'Wooden pencil. No. 1 recommended stationary by teachers for children. Designed to aid legibility', 7000, 3000, '2021-12-31 05:00:00', '6.png', '2021-12-26 00:26:42'),
(7, 3, 'CELLO ASPRO MAVRO BALL PEN SET OF 50', '0.7mm tip gives smooth writing experience. Lightweight body makes it ideal for longer writing duration. The stylish matte look of the ball pen makes it ideal for office and school use. Aspro is white in colour and Mavro has a smart black body. There are 50 pens in this pack that come in a rotational pen stand', 10000, 6000, '2022-01-01 03:00:00', '7.png', '2021-12-26 00:28:29'),
(8, 6, 'Chalk', 'White dustless chalks. No. 1 recommended stationary by teachers for children. Designed to aid legibility', 6000, 1000, '2021-12-26 04:00:00', '8.png', '2021-12-26 00:29:31'),
(9, 7, 'CLASSMATE ORIGAMI NOTEBOOKS', '2 colorful tear-off origami sheets with instructions inside. Models included in this combo: Flighter Jet, Lion, Crab & Fox. Pack of 4 origami notebooks – unruled, 172 pages, 240 mm x 180 mm, soft cover, center-staple. Classmate uses and elemental chlorine free paper. Enable learning through the art of origami with Classmate.', 9000, 3000, '2022-01-01 03:00:00', '9.png', '2021-12-26 00:30:47'),
(10, 4, 'WHITE BOARD', 'Contains: (Pack of 1) 2ft x 3ft Non Magnetic white board which is portable memo white board, or for home, office, study rooms. The whiteboard has non magnetic light weight aluminum frame. Resin-painted steel surface is easy for writing, paint, erasing, drawing pictures and signs. This personal whiteboard is perfect for presentation, education, to do lists, planning work schedules or kids learning. Suitable decor for outdoor, home, kitchen, fridge, office, cubicle, desk, class, school, kindergarten, college, dorm room, locker room, game sport room. Big help for managers, teachers, students and children. Dual advantage to write with marker in white surface and with chalk on reverse green surface. This white board can be used at Home, Offices and Schools, It Works nicely with Any Whiteboard Marker.', 9000, 2000, '2021-12-31 05:00:00', '10.png', '2021-12-26 00:40:31'),
(11, 5, 'White Board Marker', 'It is a sample white board marker used for sketching on notebooks , diaries etc..', 10000, 3000, '2021-12-31 06:00:00', '11.png', '2021-12-26 00:43:40');

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
(1, 'Dheeraj Bleamtech', 'admin', '0192023a7bbd73250516f069df18b500', 'admin@admin.com', '+123456789', '', 1, '2020-10-27 09:19:59'),
(6, 'Dheeraj Rao Pathur', 'Dheeru123', '953aa84d3142835ef3234957e1992f60', '', '', '', 2, '2021-12-25 23:43:27');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
