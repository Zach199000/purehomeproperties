-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2024 at 10:17 AM
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
-- Database: `property_managements`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `apartment_number` varchar(50) NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'vacant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `property_id`, `apartment_number`, `floor`, `description`, `status`) VALUES
(1, 1, 'Apartment 1', NULL, NULL, 'occupied'),
(2, 1, 'Apartment 2', NULL, NULL, 'occupied'),
(3, 1, 'Apartment 3', NULL, NULL, 'occupied'),
(4, 1, 'Apartment 4', NULL, NULL, 'occupied'),
(5, 1, 'Apartment 5', NULL, NULL, 'occupied'),
(6, 1, 'Apartment 6', NULL, NULL, 'occupied'),
(7, 1, 'Apartment 7', NULL, NULL, 'occupied'),
(8, 1, 'Apartment 8', NULL, NULL, 'occupied'),
(9, 1, 'Apartment 9', NULL, NULL, 'occupied'),
(10, 1, 'Apartment 10', NULL, NULL, 'occupied'),
(11, 1, 'Apartment 11', NULL, NULL, 'occupied'),
(12, 1, 'Apartment 12', NULL, NULL, 'occupied'),
(13, 1, 'Apartment 13', NULL, NULL, 'occupied'),
(14, 1, 'Apartment 14', NULL, NULL, 'occupied'),
(15, 1, 'Apartment 15', NULL, NULL, 'occupied'),
(16, 1, 'Apartment 16', NULL, NULL, 'occupied'),
(17, 1, 'Apartment 17', NULL, NULL, 'occupied'),
(18, 1, 'Apartment 18', NULL, NULL, 'vacant'),
(19, 1, 'Apartment 19', NULL, NULL, 'vacant'),
(20, 1, 'Apartment 20', NULL, NULL, 'vacant'),
(21, 1, 'Apartment 21', NULL, NULL, 'occupied'),
(22, 1, 'Apartment 22', NULL, NULL, 'occupied'),
(23, 1, 'Apartment 23', NULL, NULL, 'occupied'),
(24, 1, 'Apartment 24', NULL, NULL, 'vacant'),
(25, 1, 'Apartment 25', NULL, NULL, 'occupied'),
(26, 1, 'Apartment 26', NULL, NULL, 'occupied'),
(27, 1, 'Apartment 27', NULL, NULL, 'vacant'),
(28, 1, 'Apartment 28', NULL, NULL, 'vacant'),
(29, 1, 'Apartment 29', NULL, NULL, 'vacant'),
(30, 1, 'Apartment 30', NULL, NULL, 'vacant'),
(31, 1, 'Apartment 31', NULL, NULL, 'vacant'),
(32, 1, 'Apartment 32', NULL, NULL, 'vacant'),
(33, 1, 'Apartment 33', NULL, NULL, 'vacant'),
(34, 1, 'Apartment 34', NULL, NULL, 'vacant'),
(35, 1, 'Apartment 35', NULL, NULL, 'vacant'),
(36, 1, 'Apartment 36', NULL, NULL, 'vacant'),
(37, 1, 'Apartment 37', NULL, NULL, 'vacant'),
(38, 1, 'Apartment 38', NULL, NULL, 'vacant'),
(39, 1, 'Apartment 39', NULL, NULL, 'vacant'),
(40, 1, 'Apartment 40', NULL, NULL, 'vacant');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `status` enum('pending','confirmed','canceled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `booking_date`, `status`, `created_at`, `property_id`) VALUES
(1, 4, '2024-10-09', 'pending', '2024-10-09 09:36:34', 1),
(2, 4, '2024-10-09', 'pending', '2024-10-09 09:36:39', 2),
(3, 4, '2024-10-09', 'pending', '2024-10-09 09:36:42', 3),
(4, 4, '2024-10-09', 'pending', '2024-10-09 09:38:18', 2),
(5, 4, '2024-10-09', 'pending', '2024-10-09 09:41:45', 3),
(6, 4, '2024-10-09', 'pending', '2024-10-09 09:42:57', 3),
(7, 4, '2024-10-09', 'pending', '2024-10-09 09:44:03', 2),
(8, 4, '2024-10-09', 'pending', '2024-10-09 09:49:15', 3),
(9, 2, '2024-10-10', 'confirmed', '2024-10-13 05:52:11', 1),
(10, 2, '2024-10-11', 'pending', '2024-10-13 05:52:11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0,
  `chat_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender`, `message`, `created_at`, `is_read`, `chat_id`) VALUES
(39, 'user', 'hello', '2024-10-16 08:38:04', 0, '12345'),
(40, 'agent', 'helloo', '2024-10-16 08:38:18', 0, '1'),
(41, 'agent', 'helloo', '2024-10-16 08:38:20', 0, '2'),
(42, 'user', 'yes', '2024-10-16 08:39:54', 0, '12345'),
(43, 'user', 'yes', '2024-10-16 08:39:57', 0, '12345'),
(44, 'user', 'hi', '2024-10-16 08:42:33', 0, '12345'),
(45, 'agent', 'hhh', '2024-10-16 08:43:10', 0, '1'),
(46, 'agent', 'ghhh', '2024-10-16 08:43:12', 0, '2'),
(47, 'user', 'ggggg', '2024-10-16 08:45:40', 0, '12345'),
(48, 'agent', 'gggg', '2024-10-16 08:45:47', 0, '2'),
(49, 'user', 'hyhy', '2024-10-16 08:50:29', 0, '12345'),
(50, 'user', 'hyh', '2024-10-16 08:50:37', 0, '12345'),
(51, 'user', 'hhh', '2024-10-16 08:51:06', 0, '12345'),
(52, 'user', 'ffff', '2024-10-16 08:51:11', 0, '12345'),
(53, 'user', 'hy', '2024-10-16 08:57:17', 0, '12345'),
(54, 'agent', 'gggg', '2024-10-16 09:03:17', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `complaint_text` text NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `response` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `tenant_id`, `complaint_text`, `attachment`, `status`, `created_at`, `response`) VALUES
(1, 1, 'complainnnns', '', 'Pending', '2024-10-13 04:07:54', 'hi thanks'),
(2, 1, 'compllpl', 'uploads/3.jpg', 'Pending', '2024-10-13 04:10:11', 'solved now'),
(3, 1, 'Leaking tap in the kitchen.', NULL, 'Pending', '2024-10-13 05:52:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `status` enum('active','inactive','terminated') NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `contract_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `tenant_id`, `property_id`, `status`, `start_date`, `end_date`, `contract_image`) VALUES
(1, 1, 1, 'active', '2024-01-24 00:00:00', '2025-01-24 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `feedback_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `tenant_id`, `feedback_text`, `created_at`) VALUES
(1, 1, 'The apartment is great, but maintenance response time can be improved.', '2024-10-13 05:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_messages`
--

CREATE TABLE `maintenance_messages` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `sender` enum('tenant','agent') NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_messages`
--

INSERT INTO `maintenance_messages` (`id`, `request_id`, `sender`, `message`, `created_at`) VALUES
(1, 1, 'tenant', 'ookok', '2024-10-17 07:20:54'),
(2, 1, 'tenant', 'luiu', '2024-10-17 07:20:59'),
(3, 1, 'agent', 'sssssssssss', '2024-10-17 07:29:48'),
(19, 1, '', 'ok sir', '2024-10-17 08:11:26'),
(20, 1, 'tenant', 'syre', '2024-10-17 08:11:37'),
(21, 1, '', 'test', '2024-10-17 08:14:00'),
(22, 1, '', 'hehe', '2024-10-17 08:18:37'),
(23, 1, 'tenant', 'hehe', '2024-10-17 08:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_requests`
--

CREATE TABLE `maintenance_requests` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `request_text` text NOT NULL,
  `response` text DEFAULT NULL,
  `status` enum('pending','in_progress','completed') NOT NULL,
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'medium',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tenant_response` text DEFAULT NULL,
  `complaint` text DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_requests`
--

INSERT INTO `maintenance_requests` (`id`, `tenant_id`, `property_id`, `request_text`, `response`, `status`, `priority`, `created_at`, `updated_at`, `tenant_response`, `complaint`, `attachment`) VALUES
(1, 1, 1, 'Request to fix the AC unit.', 'i', '', 'medium', '2024-10-13 09:52:38', '2024-10-17 11:33:23', 'jjjj', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `apartment_number` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('completed','pending','overdue') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `due_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `check_image` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `total_rent` decimal(10,2) DEFAULT NULL,
  `remaining_balance` decimal(10,2) DEFAULT NULL,
  `payment_status` enum('completed','pending','overdue') DEFAULT NULL,
  `upfront_payment` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tenantname` varchar(255) DEFAULT NULL,
  `tenant_email` varchar(100) DEFAULT NULL,
  `tenant_phone` varchar(15) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `next_payment_due` date DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `property_id`, `apartment_number`, `amount`, `total_amount`, `status`, `created_at`, `due_date`, `payment_method`, `check_image`, `payment_date`, `tenant_id`, `total_rent`, `remaining_balance`, `payment_status`, `upfront_payment`, `tenantname`, `tenant_email`, `tenant_phone`, `apartment_id`, `next_payment_due`, `tenant_name`) VALUES
(1, 1, 1, 0, 1500.00, 0.00, 'completed', '2024-10-09 00:37:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, 1, 0, 1500.00, 0.00, 'pending', '2024-10-13 09:52:16', NULL, 'bank transfer', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2, 2, 0, 800.00, 0.00, 'completed', '2024-10-13 09:52:16', NULL, 'cash', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 1, 0, 1500.00, 0.00, 'completed', '2024-10-15 12:45:29', NULL, 'check', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 1, 0, 1500.00, 0.00, 'completed', '2024-10-15 12:49:18', NULL, 'check', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 1, 0, 5000.00, 0.00, 'completed', '2024-10-15 15:00:56', NULL, 'check', 'uploads/Untitled.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 1, 0, 5000.00, 0.00, 'completed', '2024-10-16 09:15:13', NULL, 'check', 'uploads/Untitled.jpg', NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 38, 1, 0, 10000.00, 50000.00, 'completed', '2024-10-22 13:43:14', '2025-01-22', NULL, NULL, NULL, 38, 50000.00, 40000.00, NULL, 0.00, NULL, '0', '4545665456456', 9, '2025-01-22', 'finaltest'),
(21, 39, 1, 0, 10000.00, 50000.00, 'completed', '2024-10-22 13:48:15', '2025-01-22', NULL, NULL, NULL, 39, 50000.00, 40000.00, NULL, 0.00, NULL, '0', '54654545656', 10, '2025-01-22', 'finaltest2'),
(22, 40, 1, 0, 10000.00, 50000.00, 'completed', '2024-10-22 14:32:21', '2025-01-22', NULL, NULL, NULL, 40, 50000.00, 40000.00, NULL, 0.00, NULL, '0', '5252523625', 12, '2025-01-22', 'anewuser'),
(23, 42, 1, 0, 10000.00, 0.00, 'completed', '2024-10-22 16:24:21', '2025-01-22', NULL, NULL, NULL, NULL, 50000.00, NULL, NULL, 0.00, NULL, '0', '7456465445', 13, '2025-01-22', 'zachza'),
(24, 43, 1, 0, 10000.00, 0.00, 'completed', '2024-10-23 10:10:04', '2025-01-23', NULL, NULL, NULL, NULL, 50000.00, NULL, NULL, 0.00, NULL, '0', '654564564564', 14, '2025-01-23', 'testuser'),
(25, 47, 1, 0, 5000.00, 0.00, 'completed', '2024-10-23 11:12:45', '2025-01-23', NULL, NULL, NULL, NULL, 50000.00, NULL, NULL, 0.00, NULL, '0', '65456456456456', 15, '2025-01-23', 'zachalketbiff'),
(26, 48, 1, 0, 10000.00, 0.00, 'completed', '2024-10-23 11:18:50', '2025-01-23', NULL, NULL, NULL, NULL, 60000.00, NULL, NULL, 0.00, NULL, '0', '645645645654', 16, '2025-01-23', 'zachalketbirrr'),
(27, 50, 1, 0, 10000.00, 0.00, 'completed', '2024-10-23 11:32:08', '2025-01-23', NULL, NULL, NULL, NULL, 50000.00, NULL, NULL, 0.00, NULL, '0', '5456456456456', 17, '2025-01-23', 'hjkhhjk');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `availability_status` enum('available','not available') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `city` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `description`, `price`, `availability_status`, `created_at`, `city`, `type`, `image`, `location`, `bedrooms`, `bathrooms`, `images`) VALUES
(1, 'Luxury Apartment', 'A beautiful luxury apartment in the city center.', 1500.00, 'not available', '2024-10-09 00:36:11', 'Dubai', 'Apartment', NULL, '', 0, 0, NULL),
(2, 'Luxury Apartment', 'A beautiful luxury apartment.', 1500.00, 'available', '2024-10-09 00:37:39', 'Dubai', 'Apartment', NULL, '', 0, 0, NULL),
(7, 'Joe\'s Apartment', 'A cozy apartment in the city center.', 1500.00, 'not available', '2024-10-10 04:05:39', 'New York', 'Apartment', '3 (1).jpg', '', 0, 0, NULL),
(9, 'Hudaifa Building', 'A modern building with all amenities.', 2500.00, 'not available', '2024-10-10 04:05:39', 'Dubai', 'Building', NULL, '', 0, 0, NULL),
(10, 'Marfa Building', 'An elegant building with stunning views.', 3000.00, 'not available', '2024-10-10 04:05:39', 'Austin', 'Building', NULL, '', 0, 0, NULL),
(12, 'Greenfield Estate', 'A large estate with gardens.', 5000.00, 'not available', '2024-10-10 04:05:39', 'San Francisco', 'Estate', NULL, '', 0, 0, NULL),
(33, 'test property1', 'test property1test property1test property1 test property1 test property1test property1 test property1', 50000.00, 'available', '2024-10-17 08:42:23', 'Dubai', 'Flat', 'uploads/5.jpg', '', 0, 0, NULL),
(34, 'test property1', 'test property1test property1test property1 test property1 test property1test property1 test property1', 50000.00, 'available', '2024-10-17 08:48:36', 'Dubaii', 'Flat', '5.jpg', '', 0, 0, ''),
(35, 'test property1', 'test property1test property1test property1 test property1 test property1test property1 test property1', 50000.00, 'available', '2024-10-17 08:49:02', 'Dubaii', 'Flat', '5.jpg', '', 0, 0, ''),
(36, 'testprop2', 'testprop2testprop2testprop2\r\ntestprop2\r\ntestprop2\r\ntestprop2\r\ntestprop2\r\n', 45000.00, 'available', '2024-10-17 08:51:05', 'Dubai', 'Flat', '6.jpg', 'downtown', 2, 2, ''),
(37, 'testprop22', 'testprop2testprop2testprop2\r\ntestprop2\r\ntestprop2\r\ntestprop2\r\ntestprop2 safasf\r\n', 45000.00, 'available', '2024-10-17 08:53:39', 'Dubai', 'Flat', '6.jpg', 'downtown', 2, 2, ''),
(38, 'testprop22', 'testprop2testprop2testprop2\r\ntestprop2\r\ntestprop2\r\ntestprop2\r\ntestprop2 safasf\r\n', 45000.00, 'available', '2024-10-17 08:53:49', 'Dubai', 'Flat', '6.jpg', 'downtown', 2, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `property_contracts`
--

CREATE TABLE `property_contracts` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `contract_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_contracts`
--

INSERT INTO `property_contracts` (`id`, `property_id`, `contract_image`, `created_at`) VALUES
(1, 7, 'client-brand-5.png', '2024-10-15 08:33:31'),
(2, 7, 'agent-1.png', '2024-10-15 09:19:38'),
(4, 1, 'agent-5.png', '2024-10-15 10:28:12'),
(5, 1, 'aaa.jpg', '2024-10-15 11:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `image`) VALUES
(1, 1, '2.jpg'),
(2, 1, '3 (1).jpg'),
(3, 7, '1.jpg'),
(4, 7, '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `status` enum('occupied','vacant') NOT NULL,
  `payment_due` date DEFAULT NULL,
  `contract_expiry` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `due_date` decimal(10,2) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `total_rent` decimal(10,2) DEFAULT NULL,
  `upfront_payment` decimal(10,2) DEFAULT NULL,
  `next_payment_due` date DEFAULT NULL,
  `remaining_balance` decimal(10,2) DEFAULT NULL,
  `payment_made` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` enum('paid','overdue','pending') DEFAULT NULL,
  `tenant_status` enum('active','on hold','vacated') DEFAULT NULL,
  `contact_preference` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `tenantname` varchar(255) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  `tenant_email` varchar(100) DEFAULT NULL,
  `tenant_phone` varchar(15) DEFAULT NULL,
  `tenantemail` varchar(255) DEFAULT NULL,
  `tenantphone` varchar(15) DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `name`, `email`, `phone`, `property_id`, `status`, `payment_due`, `contract_expiry`, `password`, `profile_picture`, `due_date`, `apartment_id`, `total_rent`, `upfront_payment`, `next_payment_due`, `remaining_balance`, `payment_made`, `payment_method`, `payment_status`, `tenant_status`, `contact_preference`, `notes`, `tenantname`, `tenant_name`, `tenant_email`, `tenant_phone`, `tenantemail`, `tenantphone`, `tenant_id`) VALUES
(1, '', 'joe.anderson@example.com', '555-1234', 1, 'occupied', '2024-10-15', '2024-12-31', '$2y$10$EZE5OVcX8oMWG8yzk6H4quUXow9n37aFn95Tj78VPMSIyzcmr5YN.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'mike.johnson@example.com', '555-5678', 2, 'vacant', NULL, NULL, '$2y$10$T/szKS1RsINHZ3JKJZpNvOiFXuw77OscgckFO1m1Dpr5EEJXFFPT6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', 'sarah.hudaifa@example.com', '555-9101', 2, 'occupied', '2024-07-03', '2025-07-02', '$2y$10$oD0ohVYmwmJ7yO3hxQR0Q.tNPRzlRjy7CWvqGXVpG0u.sCHNgdihq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', 'lucy.marfa@example.com', '555-1122', NULL, 'occupied', '2024-09-30', '2024-10-15', '$2y$10$F9I3/7G0a.tuOFx2Xy8UpeRglJVPfif3eAufBE24ytGE4gEYOEyJW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'emma.sunset@example.com', '555-3344', NULL, 'vacant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'david.greenfield@example.com', '555-5566', NULL, 'occupied', '2024-10-20', '2024-12-15', '$2y$10$C.jbOxBrXVoda0LK.PMVeOUHbviYVp8dwVcuAlwCbH3ZGuDvMDePK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'finaltest', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, 20250122.00, 9, 50000.00, 10000.00, '2025-01-22', 40000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'finaltest', 'finaltest@finaltest.com', '4545665456456', NULL, NULL, 38),
(43, 'finaltest2', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, 20250122.00, 10, 50000.00, 10000.00, '2025-01-22', 40000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'finaltest2', 'finaltest2@gmail.com', '54654545656', NULL, NULL, 39),
(44, 'anewuser', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, 20250122.00, 12, 50000.00, 10000.00, '2025-01-22', 40000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anewuser', 'anewuser@anewuser.com', '5252523625', NULL, NULL, 40),
(45, '', '', '', 1, '', NULL, '2025-10-22', NULL, NULL, NULL, 13, 50000.00, 10000.00, NULL, 40000.00, NULL, NULL, NULL, 'active', NULL, NULL, 'M Ismail', NULL, NULL, NULL, 'aaa@aaa.comsadsadasdasd', '6455645665', NULL),
(46, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 13, 50000.00, 10000.00, '2025-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zachza', 'zachza@zachza.com', '7456465445', NULL, NULL, NULL),
(47, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 14, 50000.00, 10000.00, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testuser', 'testuser@testuser.com', '654564564564', NULL, NULL, NULL),
(48, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 15, 45000.00, 10000.00, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zachalketbi', 'zachalketbi@gmail.com', '6456456456', NULL, NULL, NULL),
(49, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 16, 45000.00, 10000.00, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zachalketbi', 'zachalketbi@gmail.comm', '6456456456', NULL, NULL, NULL),
(50, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 16, 55000.00, 10000.00, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zachalketbiaa', 'zachalketbi@gmail.comn', '64564564565', NULL, NULL, NULL),
(51, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 15, 50000.00, 5000.00, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zachalketbiff', 'zachalketbi@gmail.comnb', '65456456456456', NULL, NULL, NULL),
(52, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 16, 60000.00, 10000.00, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zachalketbirrr', 'zachalketbi@gmail.comnbttt', '645645645654', NULL, NULL, NULL),
(53, 'testing', 'testing@testing.com', '65456456456', NULL, 'occupied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '', '', '', 1, 'occupied', NULL, NULL, NULL, NULL, NULL, 17, 50000.00, 10000.00, '2025-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hjkhhjk', 'sfsafsaf@sfsafa.com', '5456456456456', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tenant_properties`
--

CREATE TABLE `tenant_properties` (
  `id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant_properties`
--

INSERT INTO `tenant_properties` (`id`, `tenant_id`, `property_id`) VALUES
(1, 1, 2),
(2, 1, 7),
(3, 2, 9),
(4, 3, 10),
(5, 1, 12),
(6, 1, 7),
(7, 1, 9),
(8, 2, 10),
(9, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tenantname` varchar(255) NOT NULL,
  `tenant_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('tenant','management') NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `tenant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `tenantname`, `tenant_name`, `password`, `role`, `email`, `phone_number`, `created_at`, `tenant_id`) VALUES
(1, '', '', '', 'hashed_password', 'tenant', 'john@example.com', '1234567890', '2024-10-09 00:36:03', 1),
(2, '', '', '', 'password123', 'tenant', 'tenant1@example.com', '1234567890', '2024-10-09 00:37:33', 2),
(3, '', '', '', 'password456', 'management', 'manager1@example.com', '0987654321', '2024-10-09 00:37:33', 3),
(4, '', '', '', '$2y$10$9GsUeG2O5FWMbDSb6Z2M7u0K7v6GMp3N5ajbAP9HBceDK47HAJOFe', 'tenant', 'johndoe@example.com', NULL, '2024-10-09 01:06:00', 4),
(6, '', '', '', '$2y$10$H4VtKBVljsc.t8pgSQhFmuyWTidcVPqmdQ7zvbnHWWF8BXP7cmZMK', 'tenant', 'zach@zach.com', NULL, '2024-10-10 03:40:32', 6),
(9, '', '', '', 'admin123', 'management', 'admin@example.com', '1234567890', '2024-10-13 09:51:36', 9),
(10, '', '', '', 'john123', 'tenant', 'johndoe_new@example.com', '0987654321', '2024-10-13 09:51:36', 10),
(38, 'finaltest', 'finaltest', 'finaltest', '$2y$10$w0VWMPiXAYeQLeAElI.16uuS4M9hE7ANTe8ucFXAWdRFaQklZIMCG', 'tenant', 'finaltest@finaltest.com', '4545665456456', '2024-10-22 13:43:14', 38),
(39, 'finaltest2', 'finaltest2', 'finaltest2', '$2y$10$0fhuktEJ5sAgE31ekK0q/ecX1OOjvAkIRaU0XgZ/5zuwzEvphmd/S', 'tenant', 'finaltest2@gmail.com', '54654545656', '2024-10-22 13:48:15', 39),
(40, 'anewuser', 'anewuser', 'anewuser', '$2y$10$unpunJjyrugsFsr.z6llfe89ZFQvN4L2E.Lw7BefXtMbVRriwXX8C', 'tenant', 'anewuser@anewuser.com', '5252523625', '2024-10-22 14:32:21', 40),
(41, 'M Ismail', 'M Ismail', 'M Ismail', '$2y$10$VnIG1mYpUD7NoDElD9PNcelLCEQcNLNyM0twxh/PkOI7uiK8Zq8fm', 'tenant', 'aaa@aaa.comsadsadasdasd', '6455645665', '2024-10-22 16:23:44', 41),
(42, 'zachza', 'zachza', 'zachza', '$2y$10$NKA1jkE65DcSmrU0xyww3u1DObiiWOGTEwsOkKOA1se9M.Ogas1ke', 'tenant', 'zachza@zachza.com', '7456465445', '2024-10-22 16:24:21', 42),
(43, 'testuser', 'testuser', 'testuser', '$2y$10$9B//Bavx0DpwgII/9YroGu2c8bdzOL.S4aBHJ0EsR4PmHMQ3kRQXe', 'tenant', 'testuser@testuser.com', '654564564564', '2024-10-23 10:10:04', 43),
(47, 'zachalketbiff', 'zachalketbiff', 'zachalketbiff', '$2y$10$4I.s/yr3m9ycgyXjzbuK0e/E4hJB8Ng2vSbNYkGLyiUm2vtje8Ryy', 'tenant', 'zachalketbi@gmail.comnb', '65456456456456', '2024-10-23 11:12:45', 47),
(48, 'zachalketbirrr', 'zachalketbirrr', 'zachalketbirrr', '$2y$10$OV1elA6KmOBVybiwM4g1ueua02mYbQR8d4mAaXJTfXDVonzu6hbqm', 'tenant', 'zachalketbi@gmail.comnbttt', '645645645654', '2024-10-23 11:18:50', 48),
(49, 'testing', 'testing', 'testing', '$2y$10$E1M.APySNFgPcq2iE1aSmO.uf9g3G8k/y1707WZJ5u/N2iYZpmKxK', 'tenant', 'testing@testing.com', '65456456456', '2024-10-23 11:23:13', 49),
(50, 'hjkhhjk', 'hjkhhjk', 'hjkhhjk', '$2y$10$UXmyoh/.sQ6nvvv4xRrcYeifyGiA5fq6rq3O.F6w2BtEHKn1ZaMmm', 'tenant', 'sfsafsaf@sfsafa.com', '5456456456456', '2024-10-23 11:32:08', 50);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `set_tenant_id` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    SET NEW.tenant_id = NEW.id;  -- Set tenant_id to the same value as id before inserting
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_id` (`tenant_id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_id` (`tenant_id`);

--
-- Indexes for table `maintenance_messages`
--
ALTER TABLE `maintenance_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `maintenance_requests`
--
ALTER TABLE `maintenance_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_contracts`
--
ALTER TABLE `property_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `tenant_properties`
--
ALTER TABLE `tenant_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance_messages`
--
ALTER TABLE `maintenance_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `maintenance_requests`
--
ALTER TABLE `maintenance_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `property_contracts`
--
ALTER TABLE `property_contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tenant_properties`
--
ALTER TABLE `tenant_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartments`
--
ALTER TABLE `apartments`
  ADD CONSTRAINT `apartments_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`),
  ADD CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);

--
-- Constraints for table `maintenance_messages`
--
ALTER TABLE `maintenance_messages`
  ADD CONSTRAINT `maintenance_messages_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `maintenance_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `maintenance_requests`
--
ALTER TABLE `maintenance_requests`
  ADD CONSTRAINT `maintenance_requests_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`),
  ADD CONSTRAINT `maintenance_requests_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `property_contracts`
--
ALTER TABLE `property_contracts`
  ADD CONSTRAINT `property_contracts_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `property_images`
--
ALTER TABLE `property_images`
  ADD CONSTRAINT `property_images_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tenants`
--
ALTER TABLE `tenants`
  ADD CONSTRAINT `tenants_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tenant_properties`
--
ALTER TABLE `tenant_properties`
  ADD CONSTRAINT `tenant_properties_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`),
  ADD CONSTRAINT `tenant_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `update_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 11:25:29' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE users SET tenant_id = id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_username` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 11:36:43' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE users SET username = tenantname$$

CREATE DEFINER=`root`@`localhost` EVENT `update_tenant_name` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 11:36:55' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE users SET tenant_name = tenantname$$

CREATE DEFINER=`root`@`localhost` EVENT `updatetenants_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 11:51:51' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE tenants
  SET tenant_id = (SELECT id FROM users WHERE tenants.tenant_id IS NULL)
  WHERE tenant_id IS NULL$$

CREATE DEFINER=`root`@`localhost` EVENT `updatepayments_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:08:12' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE payments p
  JOIN users u ON p.tenant_id = u.id  -- Assuming you want to link based on tenant_id
  SET p.tenant_id = u.id               -- Specify how to update tenant_id in payments
  WHERE p.tenant_id IS NULL$$

CREATE DEFINER=`root`@`localhost` EVENT `update_bookings_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:15:44' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE bookings b
  JOIN users u ON b.tenant_id = u.id 
  SET b.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_chat_messages_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:15:50' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE chat_messages cm
  JOIN users u ON cm.tenant_id = u.id 
  SET cm.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_complaints_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:15:56' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE complaints c
  JOIN users u ON c.tenant_id = u.id 
  SET c.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_contracts_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:16:01' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE contracts ct
  JOIN users u ON ct.tenant_id = u.id 
  SET ct.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_feedback_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:16:06' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE feedback f
  JOIN users u ON f.tenant_id = u.id 
  SET f.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_maintenance_messages_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:16:11' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE maintenance_messages mm
  JOIN users u ON mm.tenant_id = u.id 
  SET mm.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_maintenance_requests_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:16:16' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE maintenance_requests mr
  JOIN users u ON mr.tenant_id = u.id 
  SET mr.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_payments_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:16:23' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE payments p
  JOIN users u ON p.tenant_id = u.id 
  SET p.tenant_id = u.id$$

CREATE DEFINER=`root`@`localhost` EVENT `update_tenants_tenant_id` ON SCHEDULE EVERY 15 MINUTE STARTS '2024-10-23 12:16:58' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE tenants t
  JOIN users u ON t.tenant_id = u.id 
  SET t.tenant_id = u.id$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
