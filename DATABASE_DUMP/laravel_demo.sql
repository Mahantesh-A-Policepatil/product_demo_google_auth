-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 09:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

--
-- Dumping data for table `cart`
--
-- --------------------------------------------------------
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_permission`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mahantesh', 'mahantesh_policepatil@yahoo.in', NULL, '$2y$10$Atx3eBTWGnnWCDqWYbaKPe/efOqG./ebyaKb/eQta0lI1GJ7e6FeO', NULL, 1, '2020-04-15 03:37:11', '2020-04-15 03:37:11', NULL),
(2, 'Rohit', 'rohit@gmail.com', NULL, '$2y$10$IHzJ1VeG6lxgee3Ke3q4ue8bPmMpOktzWLw37wHq3AJzJOeVxWUHS', NULL, 0, '2020-04-15 03:38:43', '2020-04-15 03:38:43', NULL);

INSERT INTO `cart` (`id`, `selected_date`, `category_id`, `product_id`, `selected_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2020-04-16 15:00:44', 4, 2, 2, '2020-04-15 21:37:40', '2020-04-16 04:00:44', NULL),
(2, '2020-04-16 10:02:51', 4, 1, 1, '2020-04-15 22:09:45', '2020-04-15 23:02:51', NULL),
(3, '2020-04-16 09:58:47', 4, 1, 1, '2020-04-15 22:58:47', '2020-04-15 22:58:47', NULL),
(4, '2020-04-17 05:08:12', 3, 6, 1, '2020-04-16 18:08:12', '2020-04-16 18:08:12', NULL);

-- --------------------------------------------------------


INSERT INTO `categories` (`id`, `name`, `descryption`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Games', 'Games', '2020-04-15 03:58:13', '2020-04-15 03:58:13', NULL),
(2, 'Movies', 'Movies', '2020-04-15 03:58:21', '2020-04-15 03:58:21', NULL),
(3, 'Electronics', 'Electronics', '2020-04-15 03:58:31', '2020-04-15 03:58:31', NULL),
(4, 'Furnitures', 'Furnitures', '2020-04-15 04:00:46', '2020-04-16 18:06:05', NULL);

INSERT INTO `products` (`id`, `name`, `descryption`, `category_id`, `price`, `image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MI Note 5 Pro', 'MI Note 5 Pro', 3, '10000.00', 'mi-phone.jpg', '2020-04-15 03:59:17', '2020-04-15 03:59:17', NULL),
(2, 'Samsung Galaxy', 'Samsung Galaxy', 3, '15000.00', 'samsung.jpg', '2020-04-15 03:59:57', '2020-04-15 22:34:15', NULL),
(3, 'HTC', 'HTC', 3, '11000.00', 'htc.jpg', '2020-04-16 00:06:15', '2020-04-16 20:16:54', NULL),
(4, 'Counter Strike', 'Counter Strike', 1, '2000.00', 'counter-strike.jpg', '2020-04-16 18:05:11', '2020-04-16 18:05:11', NULL),
(5, 'James Bond', 'James Bond', 1, '5000.00', 'james-bond.jpg', '2020-04-16 18:05:44', '2020-04-16 18:05:44', NULL),
(6, 'Zameen', 'Zameen', 2, '5000.00', 'zameen.jpg', '2020-04-16 18:06:38', '2020-04-16 18:06:38', NULL),
(7, 'Border', 'Border', 2, '6000.00', 'border.jpg', '2020-04-16 18:07:00', '2020-04-16 18:07:00', NULL),
(8, 'Tanhaji', 'Tanhaji - The Unsung Warrior', 2, '7000.00', 'tanhaji.jpg', '2020-04-16 18:51:23', '2020-04-16 18:51:23', NULL),
(9, 'TEA POT', 'TeaPot', 4, '5000.00', 'teapot.jpg', '2022-02-25 11:38:49', '2022-02-25 11:38:49', NULL),
(10, 'Dining Table', 'Dining Table', 4, '15000.00', 'Dining-Table.jpg', '2022-02-25 11:39:18', '2022-02-25 11:39:18', NULL),
(11, 'WARD ROBE', 'WARD ROBE', 4, '20000.00', 'wardrobe.jpg', '2022-02-25 11:39:55', '2022-02-25 11:39:55', NULL),
(12, 'TV STAND', 'TV STAND', 4, '12000.00', 'TV-Stand.jpg', '2022-02-25 11:40:34', '2022-02-25 11:40:34', NULL),
(13, 'Panipat', 'Panipat Movie', 2, '5000.00', 'panipat.jpg', '2022-02-25 14:30:14', '2022-02-25 14:30:14', NULL),
(14, 'Sofa', 'Sofa Set', 4, '10000.00', 'sofa.jpg', '2022-02-25 14:46:31', '2022-02-25 14:46:31', NULL),
(15, 'Project IGI', 'Project IGI Game', 1, '5000.00', 'ProjectIGI.jpg', '2022-02-25 14:47:02', '2022-02-25 14:47:02', NULL);


INSERT INTO `orders` (`id`, `order_date`, `category_id`, `product_id`, `ordered_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2020-04-16 10:00:31', 3, 2, 1, '2020-04-15 23:00:31', '2020-04-15 23:04:51', '2020-04-15 23:04:51'),
(2, '2020-04-16 15:00:59', 3, 2, 2, '2020-04-15 23:02:44', '2020-04-16 04:00:59', NULL),
(3, '2020-04-16 10:04:48', 3, 2, 1, '2020-04-15 23:04:48', '2020-04-15 23:05:23', '2020-04-15 23:05:23'),
(4, '2020-04-16 15:01:13', 4, 1, 2, '2020-04-16 04:01:13', '2020-04-16 04:01:17', '2020-04-16 04:01:17'),
(5, '2022-02-25 17:07:10', 2, 6, 1, '2020-04-16 18:10:34', '2022-02-25 11:37:10', NULL),
(6, '2022-02-25 17:28:54', 4, 11, 1, '2020-04-17 01:04:17', '2022-02-25 11:58:54', NULL),
(7, '2022-02-25 17:29:14', 4, 10, 1, '2020-04-17 01:04:17', '2022-02-25 11:59:14', NULL),
(8, '2022-02-25 19:26:00', 1, 4, 1, '2020-04-17 01:04:17', '2022-02-25 13:56:00', NULL),
(9, '2022-02-25 19:26:20', 2, 8, 1, '2020-04-17 01:04:17', '2022-02-25 13:56:20', NULL),
(10, '2022-02-25 19:26:48', 4, 9, 1, '2020-04-17 01:04:17', '2022-02-25 13:56:48', NULL),
(11, '2022-02-25 20:20:20', 4, 14, 1, '2020-04-17 01:04:17', '2022-02-25 14:50:20', NULL),
(12, '2022-02-25 19:27:32', 1, 5, 1, '2020-04-17 01:04:17', '2022-02-25 13:57:32', NULL),
(13, '2022-02-25 19:28:04', 3, 1, 1, '2020-04-17 01:04:17', '2022-02-25 13:58:04', NULL),
(14, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:17', NULL),
(15, '2022-02-25 19:59:09', 2, 7, 1, '2020-04-17 01:04:17', '2022-02-25 14:29:09', NULL),
(16, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:17', NULL),
(17, '2022-02-25 19:58:28', 2, 8, 1, '2020-04-17 01:04:17', '2022-02-25 14:28:28', NULL),
(18, '2022-02-25 20:17:59', 4, 14, 1, '2020-04-17 01:04:17', '2022-02-25 14:47:59', NULL),
(19, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:17', NULL),
(20, '2022-02-25 20:01:17', 2, 13, 1, '2020-04-17 01:04:17', '2022-02-25 14:31:17', NULL),
(21, '2022-02-25 20:19:08', 1, 15, 1, '2020-04-17 01:04:17', '2022-02-25 14:49:08', NULL),
(22, '2022-02-25 20:19:38', 3, 1, 1, '2020-04-17 01:04:17', '2022-02-25 14:49:38', NULL),
(23, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(24, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(25, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(26, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(27, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(28, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(29, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(30, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(31, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(32, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(33, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(34, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(35, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(36, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(37, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(38, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(39, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(40, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(41, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(42, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(43, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(44, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(45, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(46, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(47, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(48, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(49, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(50, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(51, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(52, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(53, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(54, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(55, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:18', NULL),
(56, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(57, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(58, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(59, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(60, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(61, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(62, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(63, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(64, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(65, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(66, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(67, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(68, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(69, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(70, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(71, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(72, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(73, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(74, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(75, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(76, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(77, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(78, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(79, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(80, '2020-04-17 12:04:17', 3, 2, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(81, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(82, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(83, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(84, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(85, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(86, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(87, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(88, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:19', NULL),
(89, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(90, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(91, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(92, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(93, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(94, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(95, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(96, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(97, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(98, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(99, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(100, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(101, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(102, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(103, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(104, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(105, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:20', NULL),
(106, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(107, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(108, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(109, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(110, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(111, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(112, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(113, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(114, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(115, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(116, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(117, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(118, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(119, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(120, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:21', NULL),
(121, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(122, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(123, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(124, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(125, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(126, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(127, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(128, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(129, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(130, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(131, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(132, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(133, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(134, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(135, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(136, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(137, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(138, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(139, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(140, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(141, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(142, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(143, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(144, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(145, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(146, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(147, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2022-02-25 13:58:24', '2022-02-25 13:58:24'),
(148, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(149, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(150, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:22', NULL),
(151, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:23', NULL),
(152, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:23', NULL),
(153, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:23', NULL),
(154, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 01:04:23', NULL),
(155, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 01:04:17', '2020-04-17 02:01:47', '2020-04-17 02:01:47');




-- --------------------------------------------------------



--
-- Indexes for dumped tables
--