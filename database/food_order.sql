-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'manan', '$2y$10$u5hkM3dzoCTSSkPOVY9k/Okmxbj5I68s1Xx5Y1TkZSzh6tLush.Nq', 'mananpatel448@gmail.com', '2425', '2024-04-13 17:31:29'),
(2, 'manan2425', '$2y$10$u5hkM3dzoCTSSkPOVY9k/Okmxbj5I68s1Xx5Y1TkZSzh6tLush.Nq', 'mananpatel448@gmail.com', '2425', '2024-04-13 17:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Manchurian', 'Crispy orbs of flavor, bathed in tangy sauce, a tantalizing fusion of spice and crunch, a culinary delight that ignites the palate.', 140.00, '661cfb042d607.jpg'),
(2, 1, 'Noodles', 'the versatile strands that dance in savory soups or entwine with rich sauces, a culinary canvas for flavor exploration.', 140.00, '661cfb7c2dec1.jpg'),
(3, 4, 'Manchow Soup', 'A steaming bowl of aromatic broth, brimming with tender veggies and delicate noodles, a comforting embrace of Asian flavors in every spoonful.', 70.00, '661cfbd0d37c5.jpg'),
(4, 1, 'Spring Rolls', 'Crispy parcels of delight, packed with colorful veggies and succulent meats, a burst of freshness in every bite.', 150.00, '661cfc6a19a8d.jpg'),
(5, 2, 'Club Sandwich', 'Layers of toasted bread enveloping succulent meats, crisp lettuce, juicy tomatoes, and creamy mayo, a classic favorite for hearty satisfaction.', 90.00, '661cfcf332827.jpg'),
(6, 2, 'Panini', 'Grilled perfection, with crusty bread embracing melted cheese, savory meats, and a medley of flavorful fillings, a warm hug for the taste buds.', 100.00, '661cfd47d1b92.jpg'),
(7, 2, 'Reuben Sandwich', 'A mouthwatering stack of corned beef, tangy sauerkraut, melted Swiss cheese, and zesty Russian dressing, all grilled to golden perfection on rye bread, a deli delight.', 120.00, '661cfdc85579e.jpg'),
(9, 3, 'Margherita Pizza', 'A classic Italian masterpiece with a thin, chewy crust topped with sweet tomato sauce, fresh mozzarella cheese, fragrant basil leaves, and a drizzle of olive oil, a timeless tribute to simplicity.', 180.00, '661cfec5e7dcf.jpg'),
(10, 3, 'Pepperoni Pizza', 'A crowd-pleasing favorite featuring a golden crust smothered in tangy tomato sauce, generous layers of spicy pepperoni, and a blanket of melted mozzarella cheese, a symphony of flavor and heat.', 190.00, '661cff3f0ed7c.jpg'),
(11, 3, 'BBQ Pizza', 'A tantalizing twist on the classic, featuring a smoky barbecue sauce base topped with a colorful medley of roasted vegetables such as bell peppers, red onions, corn, and mushrooms, all smothered in a blanket of melted chee', 220.00, '661d525dd4ef6.jpg'),
(12, 3, 'Vegetarian Pizza', 'A garden-inspired delight adorned with a colorful array of fresh vegetables such as bell peppers, onions, mushrooms, olives, and tomatoes, nestled atop a pillowy crust and covered in melted cheese, a wholesome and satisfyi', 210.00, '661d528bcff73.jpg'),
(13, 4, 'Tomato Basil Soup', 'A vibrant blend of ripe tomatoes, fragrant basil, and aromatic garlic, pureed to silky perfection and served piping hot, a burst of summer sunshine in every spoonful.', 110.00, '661d52bfc931e.jpg'),
(14, 4, 'Minestrone Soup', 'A hearty Italian favorite featuring a robust broth packed with beans, vegetables, pasta, and aromatic herbs, a wholesome and satisfying meal in a bowl.', 90.00, '661d52ea71694.jpg'),
(15, 4, 'Butternut Squash Soup', 'A velvety-smooth concoction of roasted butternut squash, caramelized onions, and warming spices, finished with a swirl of cream and a sprinkle of toasted seeds, a cozy autumnal delight.', 100.00, '661d531e6b74b.jpg'),
(16, 4, 'Lentil Soup', 'A nourishing bowl of earthy lentils simmered with aromatic vegetables, fragrant spices, and savory broth, a hearty and wholesome option packed with protein and fiber.', 110.00, '662356e0ba0f4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Chineese', 'Chineese', '', '', '', '', '', '', '6290877b473ce.jpg', '2024-04-14 08:19:30'),
(2, 2, 'Sandwiches', 'Sandwich', '', '', '', '', '', '', '606d720b5fc71.jpg', '2024-04-14 08:21:56'),
(3, 3, 'Pizza', 'Pizza', '', '', '', '', '', '', '6290860e72d1e.jpg', '2024-04-14 08:18:55'),
(4, 4, 'Soup', 'Soup', '', '', '', '', '', '', '6290af6f81887.jpg', '2024-04-14 08:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Chinese', '2024-04-14 08:23:30'),
(2, 'Sandwich', '2024-04-14 08:23:43'),
(3, 'Pizza', '2024-04-14 08:23:51'),
(4, 'Soup', '2024-04-14 08:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(9, 'manan2425', 'Manan', 'Patel', 'mananpatel448@gmail.com', '8160609833', 'a0fdea93ca2b5ff11b854e56e1b6d01b', 'A12', 1, '2024-04-13 03:22:43'),
(10, 'hackout11', 'Manan', 'Patel', 'hello@gmail.com', '8160609833', 'bcda4e55b6e71ceb0bb569e797dc4c3c', 'A12', 1, '2024-04-13 08:01:32'),
(11, 'mehul8842', 'Mehul', 'Mistry', 'mehul@gmail.com', '8487960370', '00e06ef794f5c0f4311757a85cebbf3b', 'A11', 1, '2024-04-15 05:58:24'),
(12, 'Vineet', 'Vineet', 'Kadu', 'vineet@gmail.com', '9874327890', '24d78afecce759736cb95ff79265683b', '21', 1, '2024-04-15 10:40:25'),
(13, 'vineet12', 'Vineet', 'Kadu', 'vineet1@gmail.com', '9874327890', '61c4b57ab8c9cda78db65de136217597', 'A11', 1, '2024-04-16 06:43:36'),
(17, 'hey', 'hello', 'bvm', 'hey@gmail.com', '1478523690', 'f0eae7514d42cf58b903214c151fca3d', 'Table3', 1, '2024-04-19 15:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(39, 12, 'Pepperoni Pizza', 1, 190.00, 'closed', '2024-04-19 13:29:43'),
(40, 12, 'Vegetarian Pizza', 1, 210.00, 'closed', '2024-04-19 16:28:04'),
(41, 12, 'Manchow Soup', 1, 70.00, 'closed', '2024-04-20 05:44:48'),
(50, 9, 'Vegetarian Pizza', 1, 210.00, 'closed', '2024-04-20 07:11:47'),
(51, 9, 'Manchurian', 3, 140.00, NULL, '2024-04-19 08:27:57'),
(52, 9, 'Noodles', 1, 140.00, NULL, '2024-04-19 08:27:57'),
(53, 9, 'Spring Rolls', 1, 150.00, NULL, '2024-04-19 08:27:57'),
(54, 9, 'Club Sandwich', 1, 90.00, NULL, '2024-04-19 16:22:12'),
(55, 9, 'Manchurian', 1, 140.00, NULL, '2024-04-19 16:30:12'),
(56, 9, 'Noodles', 1, 140.00, NULL, '2024-04-19 16:30:12'),
(57, 9, 'Manchurian', 1, 140.00, 'closed', '2024-04-20 06:04:36'),
(58, 9, 'Margherita Pizza', 1, 180.00, 'in process', '2024-04-20 16:13:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
