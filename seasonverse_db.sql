-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2026 at 03:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seasonverse_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(4) DEFAULT 0,
  `time_ago` varchar(50) DEFAULT 'Just now',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `title`, `message`, `is_read`, `time_ago`, `created_at`) VALUES
(1, 'New User Signup', 'Alex Morgan registered for a Premium account.', 1, '5m ago', '2026-11-20 03:39:51'),
(2, 'AI Planner Spike', 'Session volume increased by 18.4% today.', 1, '25m ago', '2026-11-20 03:39:51'),
(3, 'Review Alert', 'New 4-star review needs attention.', 1, '1h ago', '2026-11-20 03:39:51'),
(4, 'New User Signup', 'Alex Morgan registered for a Premium account.', 1, '5m ago', '2026-11-20 03:39:51'),
(5, 'AI Planner Spike', 'Session volume increased by 18.4% today.', 1, '25m ago', '2026-11-20 03:39:51'),
(6, 'Review Alert', 'New 4-star review needs attention.', 1, '1h ago', '2026-11-20 03:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'admin@seasonverse.com', '$2y$12$tpTioOO0vDZGfFurTWxKE.JBqK51YSRgEqA3a.zZKa2z469/cYk5e', '2026-10-28 18:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `ai_chats`
--

CREATE TABLE `ai_chats` (
  `id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_chats`
--

INSERT INTO `ai_chats` (`id`, `user_email`, `sender`, `message`, `image_url`, `created_at`) VALUES
(1, 'hkhunt708@rku.ac.in', 'ai', 'Tell me about the trip you\'re imagining — even if you only have a destination, a mood, or a season in mind.', NULL, '2026-10-29 19:16:40'),
(2, 'hkhunt708@rku.ac.in', 'user', 'Plan a 5-day trip under ₹80,000', NULL, '2026-10-29 19:17:35'),
(3, 'hkhunt708@rku.ac.in', 'ai', 'I can definitely plan that for you! I\'ll put together a curated itinerary that balances relaxation with local exploration.', NULL, '2026-10-29 19:17:36'),
(4, 'hkhunt708@rku.ac.in', 'user', 'Find a peaceful monsoon getaway', NULL, '2026-10-29 19:17:48'),
(5, 'hkhunt708@rku.ac.in', 'ai', 'Perfect. A peaceful monsoon getaway to Bali focuses on wellness, indoor luxury spas, and lush rain-washed landscapes.', 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?auto=format&fit=crop&w=800&q=80', '2026-10-29 19:17:49'),
(6, 'hkhunt708@rku.ac.in', 'user', 'paris', NULL, '2026-10-29 19:20:19'),
(7, 'hkhunt708@rku.ac.in', 'ai', 'I can definitely plan that for you! I\'ll put together a curated itinerary that balances relaxation with local exploration.', NULL, '2026-10-29 19:20:20'),
(8, 'hkhunt708@rku.ac.in', 'user', 'plan my trip for london', NULL, '2026-10-29 19:42:06'),
(9, 'hkhunt708@rku.ac.in', 'ai', 'Absolutely! I can curate a perfect a few-day trip to **your destination** for you. <br><br><strong>Day 1:</strong> Arrival & check-in to a highly-rated local boutique hotel. Relax and acclimate.<br><strong>Day 2:</strong> A guided cultural tour of the main sights in your destination, followed by authentic local dining.<br><strong>Day 3:</strong> Free time for shopping, hidden gems, and exploring the seasonal landscapes.<br><br>Would you like me to adjust the budget, add flight options, or finalize this itinerary to your saved plans?', 'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&w=800&q=80', '2026-10-29 19:42:07'),
(10, 'hkhunt708@rku.ac.in', 'user', 'Plan me a trip to Swiss Chalets', NULL, '2026-10-29 19:55:51'),
(11, 'hkhunt708@rku.ac.in', 'ai', 'Absolutely! I can curate a perfect a few-day trip to **Swiss Chalets** for you. <br><br><strong>Day 1:</strong> Arrival & check-in to a highly-rated local boutique hotel. Relax and acclimate.<br><strong>Day 2:</strong> A guided cultural tour of the main sights in Swiss Chalets, followed by authentic local dining.<br><strong>Day 3:</strong> Free time for shopping, hidden gems, and exploring the seasonal landscapes.<br><br>Would you like me to adjust the budget, add flight options, or finalize this itinerary to your saved plans?', 'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&w=800&q=80', '2026-10-29 19:55:52'),
(12, 'vdholariya623@rku.ac.in', 'ai', 'Tell me about the trip you\'re imagining — even if you only have a destination, a mood, or a season in mind.', NULL, '2026-10-30 02:49:34'),
(13, 'vdholariya623@rku.ac.in', 'user', 'Plan a 5-day trip to Tokyo', NULL, '2026-10-30 02:49:51'),
(14, 'vdholariya623@rku.ac.in', 'ai', 'Absolutely! I can curate a perfect a few-day trip to **Tokyo** for you. <br><br><strong>Day 1:</strong> Arrival & check-in to a highly-rated local boutique hotel. Relax and acclimate.<br><strong>Day 2:</strong> A guided cultural tour of the main sights in Tokyo, followed by authentic local dining.<br><strong>Day 3:</strong> Free time for shopping, hidden gems, and exploring the seasonal landscapes.<br><br>Would you like me to adjust the budget, add flight options, or finalize this itinerary to your saved plans?', 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?auto=format&fit=crop&w=800&q=80', '2026-10-30 02:49:52'),
(15, 'vdholariya623@rku.ac.in', 'user', 'give trip plan of vrindavan', NULL, '2026-10-30 02:51:15'),
(16, 'vdholariya623@rku.ac.in', 'ai', 'Absolutely! I can curate a perfect a few-day trip to **your destination** for you. <br><br><strong>Day 1:</strong> Arrival & check-in to a highly-rated local boutique hotel. Relax and acclimate.<br><strong>Day 2:</strong> A guided cultural tour of the main sights in your destination, followed by authentic local dining.<br><strong>Day 3:</strong> Free time for shopping, hidden gems, and exploring the seasonal landscapes.<br><br>Would you like me to adjust the budget, add flight options, or finalize this itinerary to your saved plans?', 'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&w=800&q=80', '2026-10-30 02:51:16'),
(17, 'vdholariya623@rku.ac.in', 'user', 'Plan me a 5-day winter trip to Switzerland', NULL, '2026-10-30 07:58:33'),
(18, 'vdholariya623@rku.ac.in', 'ai', 'Absolutely! I can curate a perfect a few-day trip to **Switzerland** for you. <br><br><strong>Day 1:</strong> Arrival & check-in to a highly-rated local boutique hotel. Relax and acclimate.<br><strong>Day 2:</strong> A guided cultural tour of the main sights in Switzerland, followed by authentic local dining.<br><strong>Day 3:</strong> Free time for shopping, hidden gems, and exploring the seasonal landscapes.<br><br>Would you like me to adjust the budget, add flight options, or finalize this itinerary to your saved plans?', 'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?auto=format&fit=crop&w=800&q=80', '2026-10-30 07:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `ai_metrics`
--

CREATE TABLE `ai_metrics` (
  `id` int(11) NOT NULL,
  `metric_name` varchar(100) NOT NULL,
  `metric_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_metrics`
--

INSERT INTO `ai_metrics` (`id`, `metric_name`, `metric_value`) VALUES
(1, 'planner_sessions', '8,426'),
(2, 'plans_generated', '6,284'),
(3, 'accuracy', '94.2%'),
(4, 'rating', '4.8 / 5');

-- --------------------------------------------------------

--
-- Table structure for table `community_experiences`
--

CREATE TABLE `community_experiences` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `story` text NOT NULL,
  `rating` int(11) DEFAULT 5,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL DEFAULT 'PUBLISHED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `community_experiences`
--

INSERT INTO `community_experiences` (`id`, `user_name`, `user_email`, `destination`, `story`, `rating`, `image_url`, `created_at`, `status`) VALUES
(1, 'Hetvi Khunt', 'hkhunt708@rku.ac.in', 'south korea', 'I had really fun best place to visit in spring season', 4, 'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&fit=crop&w=800&q=80', '2026-10-29 20:10:40', 'PUBLISHED'),
(2, 'VANSH DHOLARIYA', 'vdholariya623@rku.ac.in', 'Kyoto, Japan', 'i was an amazing trip', 5, 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?auto=format&fit=crop&w=800&q=80', '2026-10-31 13:07:29', 'PUBLISHED'),
(3, 'VANSH DHOLARIYA', 'vdholariya623@rku.ac.in', 'Maldives', 'i had greate time', 4, 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80', '2026-11-19 08:34:50', 'PUBLISHED'),
(4, 'Hetvi Khunt', 'hetvi0796@gmail.com', 'Swiss Alps', 'I had Really Greate time and the weather was so good and locations are so beautiful', 4, 'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?auto=format&fit=crop&w=800&q=80', '2026-11-19 15:11:19', 'PUBLISHED'),
(5, 'vishwa patel', 'vmendapara432@rku.ac.in', 'Maldives', 'i had really fun time but the food experience was average', 2, 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80', '2026-11-20 03:30:40', 'HIDDEN'),
(6, 'Mansi Gajera', 'mansi123@gmail.com', 'Swiss Alps', 'i have such a good experience...', 5, 'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?auto=format&fit=crop&w=800&q=80', '2026-11-20 04:17:19', 'PUBLISHED');

-- --------------------------------------------------------

--
-- Table structure for table `content_management`
--

CREATE TABLE `content_management` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `season` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `status` varchar(20) DEFAULT 'Published',
  `updated_time` varchar(50) DEFAULT 'Just now'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_management`
--

INSERT INTO `content_management` (`id`, `title`, `subtitle`, `category`, `season`, `author`, `status`, `updated_time`) VALUES
(1, 'Swiss Alps Winter Escape', 'St. Moritz, Switzerland', 'Destinations', 'Winter', 'E. Kensington', 'Published', '2 hrs ago'),
(2, 'Kyoto Autumn Experience', 'Cultural Immersion', 'Experiences', 'Autumn', 'J. Tanaka', 'Review', '1 day ago'),
(3, 'Monsoon Packing Essentials', 'Curated Gear', 'Travel & Packing', 'Monsoon', 'A. Sterling', 'Draft', '2 days ago'),
(4, 'Amalfi Coastal Dining', 'Michelin Guide', 'Hotels & Dining', 'Summer', 'M. Rossi', 'Published', '1 week ago');

-- --------------------------------------------------------

--
-- Table structure for table `content_overview`
--

CREATE TABLE `content_overview` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  `icon_class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_overview`
--

INSERT INTO `content_overview` (`id`, `category_name`, `item_count`, `icon_class`) VALUES
(1, 'Destinations', 42, 'fa-solid fa-location-dot'),
(2, 'Experiences', 66, 'fa-solid fa-person-hiking'),
(3, 'Hotels & Dining', 94, 'fa-solid fa-hotel'),
(4, 'Smart Wardrobe', 24, 'fa-solid fa-shirt'),
(5, 'Travel & Packing', 31, 'fa-solid fa-suitcase');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `season` varchar(50) NOT NULL,
  `terrain` varchar(50) NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `grid_class` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `trip_type` varchar(50) NOT NULL DEFAULT 'Leisure',
  `budget_level` varchar(30) NOT NULL DEFAULT 'Mid-range'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `title`, `season`, `terrain`, `tag`, `grid_class`, `image_url`, `description`, `trip_type`, `budget_level`) VALUES
(1, 'Kyoto', 'Spring', 'Heritage', 'ACTIVE', 'tall', 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?auto=format&fit=crop&w=800&q=80', 'Delve into Japan\'s cultural heartland. Experience the profound tranquility of ancient Zen gardens and traditional tea ceremonies.', 'Leisure', 'Mid-range'),
(2, 'Santorini', 'Summer', 'Coastal', '', '', 'https://images.unsplash.com/photo-1533105079780-92b9be482077?auto=format&fit=crop&w=600&q=80', 'Iconic whitewashed buildings, blue domes, and breathtaking Mediterranean sunsets.', 'Leisure', 'Mid-range'),
(3, 'Coorg', 'Monsoon', 'Mountains', '', '', 'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?auto=format&fit=crop&w=600&q=80', 'Lush coffee plantations, misty hills, and beautiful rain-washed nature trails.', 'Leisure', 'Mid-range'),
(4, 'Maldives', 'Summer', 'Coastal', '', '', 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=600&q=80', 'Overwater luxury villas, crystal clear waters, and serene beach relaxation.', 'Leisure', 'Mid-range'),
(5, 'Swiss Chalets', 'Winter', 'Mountains', 'FEATURED', 'wide', 'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?auto=format&fit=crop&w=800&q=80', 'Cozy alpine retreats, world-class skiing, and panoramic snowy mountain views.', 'Leisure', 'Mid-range'),
(6, 'Bali', 'Summer', 'Coastal', 'POPULAR', '', 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?auto=format&fit=crop&w=900&q=85', 'Tropical temples, emerald rice terraces, beach clubs and restorative island retreats.', 'Relaxation', 'Luxury'),
(7, 'Paris', 'Spring', 'Urban', '', '', 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?auto=format&fit=crop&w=900&q=85', 'Classic boulevards, celebrated museums, intimate cafés and memorable city experiences.', 'Culture', 'Luxury'),
(8, 'Tokyo', 'Autumn', 'Urban', '', '', 'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?auto=format&fit=crop&w=900&q=85', 'A dynamic blend of contemporary design, food culture, gardens and historic neighbourhoods.', 'City Break', 'Mid-range'),
(9, 'Iceland', 'Winter', 'Mountains', 'ADVENTURE', '', 'https://images.unsplash.com/photo-1476610182048-b716b8518aae?auto=format&fit=crop&w=900&q=85', 'Volcanic landscapes, waterfalls, geothermal bathing and opportunities to see the northern lights.', 'Adventure', 'Luxury'),
(10, 'Banff', 'Winter', 'Mountains', '', '', 'https://images.unsplash.com/photo-1503614472-8c93d56cd2b3?auto=format&fit=crop&w=900&q=85', 'Turquoise lakes, dramatic Canadian Rockies, alpine trails and winter mountain experiences.', 'Adventure', 'Mid-range'),
(11, 'Dubai', 'Winter', 'Urban', '', '', 'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?auto=format&fit=crop&w=900&q=85', 'Modern architecture, desert experiences, luxury stays and lively dining destinations.', 'City Break', 'Luxury'),
(12, 'Cappadocia', 'Autumn', 'Heritage', '', '', 'https://images.unsplash.com/photo-1516483638261-f4dbaf036963?auto=format&fit=crop&w=900&q=85', 'Distinctive rock formations, cave hotels, heritage villages and sunrise balloon flights.', 'Adventure', 'Mid-range'),
(13, 'Amalfi Coast', 'Summer', 'Coastal', '', '', 'https://images.unsplash.com/photo-1533587851505-d119e13fa0d7?auto=format&fit=crop&w=900&q=85', 'Cliffside villages, Mediterranean views, coastal walks and relaxed seaside dining.', 'Relaxation', 'Luxury'),
(14, 'Kerala', 'Monsoon', 'Nature', '', '', 'https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?auto=format&fit=crop&w=900&q=85', 'Backwaters, tea-covered hills, tropical forests and restorative wellness experiences.', 'Nature', 'Mid-range'),
(15, 'Rajasthan', 'Winter', 'Heritage', '', '', 'https://images.unsplash.com/photo-1599661046827-dacff0c0f09a?auto=format&fit=crop&w=900&q=85', 'Historic forts, palace hotels, desert landscapes and rich regional culture.', 'Culture', 'Mid-range'),
(16, 'Dolomites', 'Winter', 'Mountains', 'FEATURED', '', 'https://images.unsplash.com/photo-1519681393784-d120267933ba?auto=format&fit=crop&w=900&q=85', 'Dramatic alpine peaks, scenic winter trails, mountain lodges and ski villages.', 'Adventure', 'Luxury'),
(17, 'New York', 'Autumn', 'Urban', '', '', 'https://images.unsplash.com/photo-1496442226666-8d4d0e62e6e9?auto=format&fit=crop&w=900&q=85', 'Iconic skyline views, neighbourhood discoveries, galleries, shopping and world-class dining.', 'City Break', 'Luxury');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `location` varchar(100) NOT NULL,
  `season` varchar(50) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `location`, `season`, `image_url`, `description`) VALUES
(1, 'Kyoto Tea Ceremony', 'Kyoto, Japan', 'Spring', 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?auto=format&fit=crop&w=600&q=80', 'Experience a traditional Japanese tea ceremony in a centuries-old machiya.'),
(2, 'Maldives Sunset Sail', 'Maldives', 'Summer', 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=600&q=80', 'A private catamaran sail across the calm atolls during golden hour.'),
(3, 'Coorg Coffee Trail', 'Coorg, India', 'Monsoon', 'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?auto=format&fit=crop&w=600&q=80', 'Walk through misty, rain-washed coffee plantations and learn the art of roasting.'),
(4, 'Santorini Sunset Dinner', 'Santorini, Greece', 'Summer', 'https://images.unsplash.com/photo-1533105079780-92b9be482077?auto=format&fit=crop&w=600&q=80', 'Dine on the cliffside overlooking the Aegean caldera as the sun sets.'),
(5, 'Meghalaya Waterfall Trail', 'Meghalaya, India', 'Monsoon', 'https://images.unsplash.com/photo-1515694346937-94d85e41e6f0?auto=format&fit=crop&w=600&q=80', 'Trek through lush green forests to discover hidden, majestic waterfalls.'),
(6, 'Cozy Alpine Dinner', 'Swiss Alps', 'Winter', 'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?auto=format&fit=crop&w=600&q=80', 'A warm fondue dinner in an isolated, snow-covered wooden chalet.'),
(7, 'Misty Forest Walk', 'Various', 'Monsoon', 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?auto=format&fit=crop&w=600&q=80', 'A guided meditative walk through a dense, fog-covered ancient forest.');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `subscribed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packing_checklist`
--

CREATE TABLE `packing_checklist` (
  `id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `is_packed` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packing_checklist`
--

INSERT INTO `packing_checklist` (`id`, `user_email`, `item_name`, `is_packed`) VALUES
(1, 'hkhunt708@rku.ac.in', 'Wool Overcoat', 1),
(2, 'hkhunt708@rku.ac.in', 'Merino Wool Scarf', 1),
(3, 'hkhunt708@rku.ac.in', 'Leather Boots', 1),
(4, 'hkhunt708@rku.ac.in', 'Cashmere Knitwear', 0),
(5, 'hkhunt708@rku.ac.in', 'Thermal Base Layer', 0),
(6, 'vdholariya623@rku.ac.in', 'Wool Overcoat', 1),
(7, 'vdholariya623@rku.ac.in', 'Merino Wool Scarf', 1),
(8, 'vdholariya623@rku.ac.in', 'Leather Boots', 0),
(9, 'vdholariya623@rku.ac.in', 'Cashmere Knitwear', 0),
(10, 'vdholariya623@rku.ac.in', 'Thermal Base Layer', 1),
(11, 'vdholariya623@rku.ac.in', 'Warm knit sweater', 0),
(12, 'vdholariya623@rku.ac.in', 'Insulated jacket', 0),
(13, 'vdholariya623@rku.ac.in', 'Wool trousers', 0),
(14, 'vdholariya623@rku.ac.in', 'Warm socks', 0),
(15, 'vdholariya623@rku.ac.in', 'Weatherproof boots', 0),
(16, 'vdholariya623@rku.ac.in', 'Scarf', 0),
(17, 'vdholariya623@rku.ac.in', 'Gloves', 0),
(18, 'vdholariya623@rku.ac.in', 'Travel outfit', 0),
(19, 'vdholariya623@rku.ac.in', 'Sleepwear', 0),
(20, 'vdholariya623@rku.ac.in', 'Toiletries', 0),
(21, 'traveler@seasonverse.com', 'Wool Overcoat', 1),
(22, 'traveler@seasonverse.com', 'Merino Wool Scarf', 1),
(23, 'traveler@seasonverse.com', 'Leather Boots', 0),
(24, 'traveler@seasonverse.com', 'Cashmere Knitwear', 0),
(25, 'traveler@seasonverse.com', 'Thermal Base Layer', 0),
(26, 'hetvi0796@gmail.com', 'Wool Overcoat', 1),
(27, 'hetvi0796@gmail.com', 'Merino Wool Scarf', 1),
(28, 'hetvi0796@gmail.com', 'Leather Boots', 0),
(29, 'hetvi0796@gmail.com', 'Cashmere Knitwear', 0),
(30, 'hetvi0796@gmail.com', 'Thermal Base Layer', 0),
(31, 'hetvi0796@gmail.com', 'Warm knit sweater', 0),
(32, 'hetvi0796@gmail.com', 'Insulated jacket', 0),
(33, 'hetvi0796@gmail.com', 'Wool trousers', 0),
(34, 'hetvi0796@gmail.com', 'Warm socks', 0),
(35, 'hetvi0796@gmail.com', 'Weatherproof boots', 0),
(36, 'hetvi0796@gmail.com', 'Scarf', 0),
(37, 'hetvi0796@gmail.com', 'Gloves', 1),
(38, 'hetvi0796@gmail.com', 'Travel outfit', 1),
(39, 'hetvi0796@gmail.com', 'Sleepwear', 1),
(40, 'hetvi0796@gmail.com', 'Toiletries', 0),
(41, 'vmendapara432@rku.ac.in', 'Wool Overcoat', 1),
(42, 'vmendapara432@rku.ac.in', 'Merino Wool Scarf', 1),
(43, 'vmendapara432@rku.ac.in', 'Leather Boots', 0),
(44, 'vmendapara432@rku.ac.in', 'Cashmere Knitwear', 1),
(45, 'vmendapara432@rku.ac.in', 'Thermal Base Layer', 1),
(46, 'vmendapara432@rku.ac.in', 'Warm knit sweater', 1),
(47, 'vmendapara432@rku.ac.in', 'Insulated jacket', 0),
(48, 'vmendapara432@rku.ac.in', 'Wool trousers', 0),
(49, 'vmendapara432@rku.ac.in', 'Warm socks', 0),
(50, 'vmendapara432@rku.ac.in', 'Weatherproof boots', 0),
(51, 'vmendapara432@rku.ac.in', 'Scarf', 0),
(52, 'vmendapara432@rku.ac.in', 'Gloves', 0),
(53, 'vmendapara432@rku.ac.in', 'Travel outfit', 0),
(54, 'vmendapara432@rku.ac.in', 'Sleepwear', 0),
(55, 'vmendapara432@rku.ac.in', 'Toiletries', 0),
(56, 'vmendapara432@rku.ac.in', 'Shirt', 0),
(57, 'mansi123@gmail.com', 'Wool Overcoat', 1),
(58, 'mansi123@gmail.com', 'Merino Wool Scarf', 1),
(59, 'mansi123@gmail.com', 'Leather Boots', 1),
(60, 'mansi123@gmail.com', 'Cashmere Knitwear', 1),
(61, 'mansi123@gmail.com', 'Thermal Base Layer', 0),
(62, 'mansi123@gmail.com', 'Warm knit sweater', 0),
(63, 'mansi123@gmail.com', 'Insulated jacket', 0),
(64, 'mansi123@gmail.com', 'Wool trousers', 0),
(65, 'mansi123@gmail.com', 'Warm socks', 0),
(66, 'mansi123@gmail.com', 'Weatherproof boots', 0),
(67, 'mansi123@gmail.com', 'Scarf', 0),
(68, 'mansi123@gmail.com', 'Gloves', 0),
(69, 'mansi123@gmail.com', 'Travel outfit', 0),
(70, 'mansi123@gmail.com', 'Sleepwear', 0),
(71, 'mansi123@gmail.com', 'Toiletries', 0),
(72, 'mansi123@gmail.com', 'Boots', 1),
(73, 'vmendapara432@rku.ac.in', 'boots', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packing_items_v2`
--

CREATE TABLE `packing_items_v2` (
  `id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `category` varchar(50) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `is_packed` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packing_items_v2`
--

INSERT INTO `packing_items_v2` (`id`, `user_email`, `category`, `item_name`, `is_packed`) VALUES
(1, 'hkhunt708@rku.ac.in', 'Clothing', 'Thermal base layers', 1),
(2, 'hkhunt708@rku.ac.in', 'Clothing', 'Cashmere sweater', 1),
(3, 'hkhunt708@rku.ac.in', 'Clothing', 'Wool winter coat', 0),
(4, 'hkhunt708@rku.ac.in', 'Clothing', 'Denim active', 0),
(5, 'hkhunt708@rku.ac.in', 'Clothing', 'Lounge wear', 0),
(6, 'hkhunt708@rku.ac.in', 'Footwear', 'Walking shoes', 1),
(7, 'hkhunt708@rku.ac.in', 'Footwear', 'Insulated winter boots', 0),
(8, 'hkhunt708@rku.ac.in', 'Footwear', 'Hotel slippers', 0),
(9, 'hkhunt708@rku.ac.in', 'Electronics', 'Phones & Charger', 1),
(10, 'hkhunt708@rku.ac.in', 'Electronics', 'Power bank', 1),
(11, 'hkhunt708@rku.ac.in', 'Electronics', 'Travel adapter (Type J)', 0),
(12, 'hkhunt708@rku.ac.in', 'Electronics', 'Noise-canceling headphones', 0),
(13, 'traveler@seasonverse.com', 'Clothing', 'Thermal base layers', 1),
(14, 'traveler@seasonverse.com', 'Clothing', 'Cashmere sweater', 1),
(15, 'traveler@seasonverse.com', 'Clothing', 'Wool winter coat', 0),
(16, 'traveler@seasonverse.com', 'Clothing', 'Denim active', 0),
(17, 'traveler@seasonverse.com', 'Clothing', 'Lounge wear', 0),
(18, 'traveler@seasonverse.com', 'Footwear', 'Walking shoes', 1),
(19, 'traveler@seasonverse.com', 'Footwear', 'Insulated winter boots', 0),
(20, 'traveler@seasonverse.com', 'Footwear', 'Hotel slippers', 0),
(21, 'traveler@seasonverse.com', 'Electronics', 'Phones & Charger', 1),
(22, 'traveler@seasonverse.com', 'Electronics', 'Power bank', 1),
(23, 'traveler@seasonverse.com', 'Electronics', 'Travel adapter (Type J)', 0),
(24, 'traveler@seasonverse.com', 'Electronics', 'Noise-canceling headphones', 0),
(25, 'vdholariya623@rku.ac.in', 'Clothing', 'Thermal base layers', 1),
(26, 'vdholariya623@rku.ac.in', 'Clothing', 'Cashmere sweater', 1),
(27, 'vdholariya623@rku.ac.in', 'Clothing', 'Wool winter coat', 0),
(28, 'vdholariya623@rku.ac.in', 'Clothing', 'Denim active', 0),
(29, 'vdholariya623@rku.ac.in', 'Clothing', 'Lounge wear', 0),
(30, 'vdholariya623@rku.ac.in', 'Footwear', 'Walking shoes', 1),
(31, 'vdholariya623@rku.ac.in', 'Footwear', 'Insulated winter boots', 0),
(32, 'vdholariya623@rku.ac.in', 'Footwear', 'Hotel slippers', 0),
(33, 'vdholariya623@rku.ac.in', 'Electronics', 'Phones & Charger', 1),
(34, 'vdholariya623@rku.ac.in', 'Electronics', 'Power bank', 1),
(35, 'vdholariya623@rku.ac.in', 'Electronics', 'Travel adapter (Type J)', 0),
(36, 'vdholariya623@rku.ac.in', 'Electronics', 'Noise-canceling headphones', 0),
(37, 'hetvi0796@gmail.com', 'Clothing', 'Thermal base layers', 1),
(38, 'hetvi0796@gmail.com', 'Clothing', 'Cashmere sweater', 1),
(39, 'hetvi0796@gmail.com', 'Clothing', 'Wool winter coat', 0),
(40, 'hetvi0796@gmail.com', 'Clothing', 'Denim active', 0),
(41, 'hetvi0796@gmail.com', 'Clothing', 'Lounge wear', 0),
(42, 'hetvi0796@gmail.com', 'Footwear', 'Walking shoes', 1),
(43, 'hetvi0796@gmail.com', 'Footwear', 'Insulated winter boots', 0),
(44, 'hetvi0796@gmail.com', 'Footwear', 'Hotel slippers', 0),
(45, 'hetvi0796@gmail.com', 'Electronics', 'Phones & Charger', 1),
(46, 'hetvi0796@gmail.com', 'Electronics', 'Power bank', 1),
(47, 'hetvi0796@gmail.com', 'Electronics', 'Travel adapter (Type J)', 0),
(48, 'hetvi0796@gmail.com', 'Electronics', 'Noise-canceling headphones', 0),
(49, 'vmendapara432@rku.ac.in', 'Clothing', 'Thermal base layers', 1),
(50, 'vmendapara432@rku.ac.in', 'Clothing', 'Cashmere sweater', 1),
(51, 'vmendapara432@rku.ac.in', 'Clothing', 'Wool winter coat', 0),
(52, 'vmendapara432@rku.ac.in', 'Clothing', 'Denim active', 0),
(53, 'vmendapara432@rku.ac.in', 'Clothing', 'Lounge wear', 0),
(54, 'vmendapara432@rku.ac.in', 'Footwear', 'Walking shoes', 1),
(55, 'vmendapara432@rku.ac.in', 'Footwear', 'Insulated winter boots', 0),
(56, 'vmendapara432@rku.ac.in', 'Footwear', 'Hotel slippers', 0),
(57, 'vmendapara432@rku.ac.in', 'Electronics', 'Phones & Charger', 1),
(58, 'vmendapara432@rku.ac.in', 'Electronics', 'Power bank', 1),
(59, 'vmendapara432@rku.ac.in', 'Electronics', 'Travel adapter (Type J)', 0),
(60, 'vmendapara432@rku.ac.in', 'Electronics', 'Noise-canceling headphones', 0),
(61, 'mansi123@gmail.com', 'Clothing', 'Thermal base layers', 1),
(62, 'mansi123@gmail.com', 'Clothing', 'Cashmere sweater', 1),
(63, 'mansi123@gmail.com', 'Clothing', 'Wool winter coat', 0),
(64, 'mansi123@gmail.com', 'Clothing', 'Denim active', 0),
(65, 'mansi123@gmail.com', 'Clothing', 'Lounge wear', 0),
(66, 'mansi123@gmail.com', 'Footwear', 'Walking shoes', 1),
(67, 'mansi123@gmail.com', 'Footwear', 'Insulated winter boots', 0),
(68, 'mansi123@gmail.com', 'Footwear', 'Hotel slippers', 0),
(69, 'mansi123@gmail.com', 'Electronics', 'Phones & Charger', 1),
(70, 'mansi123@gmail.com', 'Electronics', 'Power bank', 1),
(71, 'mansi123@gmail.com', 'Electronics', 'Travel adapter (Type J)', 0),
(72, 'mansi123@gmail.com', 'Electronics', 'Noise-canceling headphones', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(3, 'hkhunt708@rku.ac.in', 'c1e98ca0de3ab7043cce39043d1a5967972e2359fd09a2c39845ab239be07583', '2026-11-20 04:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `platform_stats`
--

CREATE TABLE `platform_stats` (
  `id` int(11) NOT NULL,
  `total_users` int(11) DEFAULT NULL,
  `ai_sessions` int(11) DEFAULT NULL,
  `active_travel_plans` int(11) DEFAULT NULL,
  `published_content` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform_stats`
--

INSERT INTO `platform_stats` (`id`, `total_users`, `ai_sessions`, `active_travel_plans`, `published_content`) VALUES
(1, 12842, 8431, 3284, 287);

-- --------------------------------------------------------

--
-- Table structure for table `recent_activity`
--

CREATE TABLE `recent_activity` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time_ago` varchar(50) DEFAULT NULL,
  `icon_class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recent_activity`
--

INSERT INTO `recent_activity` (`id`, `description`, `time_ago`, `icon_class`) VALUES
(1, 'Kyoto Winter Guide was updated by Editor Sarah.', '10 mins ago', 'fa-solid fa-pen'),
(2, 'Monsoon packing model v2.4 deployed successfully.', '1 hour ago', 'fa-solid fa-wand-magic-sparkles'),
(3, 'David Chen invited to role: Data Analyst.', '3 hours ago', 'fa-solid fa-user-plus'),
(4, 'User Hetvi generated a new AI itinerary.', 'Just now', 'fa-solid fa-wand-magic-sparkles'),
(5, 'User Hetvi generated a new AI itinerary.', 'Just now', 'fa-solid fa-wand-magic-sparkles'),
(6, 'User VANSH generated a new AI itinerary.', 'Just now', 'fa-solid fa-wand-magic-sparkles'),
(7, 'User VANSH generated a new AI itinerary.', 'Just now', 'fa-solid fa-wand-magic-sparkles'),
(8, 'User VANSH generated a new AI itinerary.', 'Just now', 'fa-solid fa-wand-magic-sparkles');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_management`
--

CREATE TABLE `reviews_management` (
  `id` int(11) NOT NULL,
  `reviewer_name` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `trip_tag` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(30) DEFAULT 'PUBLISHED',
  `time_ago` varchar(50) DEFAULT '2 hours ago'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews_management`
--

INSERT INTO `reviews_management` (`id`, `reviewer_name`, `rating`, `trip_tag`, `comment`, `status`, `time_ago`) VALUES
(1, 'Aarav Mehta', 5, 'Swiss Alps • Winter', 'The AI planner suggested the perfect hidden gems in Zermatt. The wardrobe recommendations were spot on for the sub-zero temperatures.', 'PUBLISHED', '2 hours ago'),
(2, 'Maya Patel', 5, 'Kyoto • Spring', 'Incredible attention to detail. The tea ceremony experience was the highlight of our trip. Highly recommend the premium concierge.', 'PUBLISHED', '5 hours ago'),
(3, 'Riya Shah', 4, 'Maldives • Summer', 'The resort was beautiful, but the AI itinerary didn’t account for the monsoon timing correctly. Still a great trip overall.', 'NEEDS REVIEW', 'Yesterday');

-- --------------------------------------------------------

--
-- Table structure for table `saved_experiences`
--

CREATE TABLE `saved_experiences` (
  `id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `experience_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_trips`
--

CREATE TABLE `saved_trips` (
  `id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_trips`
--

INSERT INTO `saved_trips` (`id`, `user_email`, `destination_id`, `created_at`) VALUES
(1, 'hetvi0796@gmail.com', 2, '2026-11-19 15:10:18'),
(2, 'hetvi0796@gmail.com', 4, '2026-11-19 15:10:20'),
(3, 'mansi123@gmail.com', 2, '2026-11-20 04:16:36'),
(4, 'mansi123@gmail.com', 4, '2026-11-20 04:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(11) NOT NULL,
  `season_name` varchar(100) NOT NULL,
  `season_month` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `season_name`, `season_month`, `description`, `created_at`) VALUES
(1, 'Spring Blossom 2026', 'April 2026', 'Peak cherry blossom and mild climate tracking.', '2026-10-28 18:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(11) NOT NULL,
  `ticket_subject` varchar(150) NOT NULL,
  `priority` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(30) DEFAULT 'Open',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `preferred_season` varchar(50) NOT NULL,
  `travel_style` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `phone`, `phone_number`, `password`, `preferred_season`, `travel_style`, `created_at`, `status`) VALUES
(1, 'Hetvi Khunt', 'hetvi06@mail.com', '6355541583', '', '$2y$12$9pHrnOaBeVi.YNEGZkaYj.WLYToKgom3dJVkSE60Dlrr8IFDYPAWy', 'Summer', 'Couple', '2026-10-29 17:42:21', 'Active'),
(2, 'Hetvi Khunt', 'hkhunt708@rku.ac.in', '6355541583', '', '$2y$12$vTo/UYqGOywKQ2AHs1t9OuvwQ.HD0Ing2CadgCu9cye0WvfI37JMu', 'Monsoon', 'Solo', '2026-10-29 17:44:02', 'Active'),
(4, 'VANSH DHOLARIYA', 'vdholariya623@rku.ac.in', '212121212121', '', '$2y$12$Rr5jhC5WSgcExWsI.ZPz5OmwEKE.g.fAr4tC6AxVXWEV2z34faMHG', '', '', '2026-10-30 02:48:44', 'Active'),
(5, 'Hetvi Khunt', 'hetvi0796@gmail.com', '1236547890', '', '$2y$12$Ft8sZSULk9BiyP6Wh.ZkfONLp9VT5ZbpsM0WZkDbIG1hvxaU5epsy', 'Summer', 'Solo', '2026-11-19 15:06:31', 'Active'),
(6, 'vishwa patel', 'vmendapara432@rku.ac.in', '2424675437', '', '$2y$12$3SOO6hPfPBGph5BWdgaAJ.ADtSbL3Qt9OJZg0VG8UdKDopPuHXOji', 'Winter', 'Solo', '2026-11-20 03:11:43', 'Active'),
(7, 'Mansi Gajera', 'mgajera432@rku.ac.in', '1237896540', '', '$2y$12$BTFMOd86tu/GFfJ4NUL2ouT3ct5D0rC10MdnKnG5wyISnDomQIJEW', 'Summer', 'Friends', '2026-11-20 04:12:14', 'Active'),
(8, 'Mansi Gajera', 'mansi123@gmail.com', '1234567890', '', '$2y$12$pONg7aUfOPV/jIi7WmGJRuzGJglp3DlSChlt7h9UxHhlMJmdVvDSC', 'Winter', 'Solo', '2026-11-20 04:14:30', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users_management`
--

CREATE TABLE `users_management` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `travel_style` varchar(50) DEFAULT NULL,
  `favorite_season` varchar(50) DEFAULT NULL,
  `plans_count` int(11) DEFAULT 0,
  `status` varchar(20) DEFAULT 'Active',
  `joined_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_management`
--

INSERT INTO `users_management` (`id`, `name`, `email`, `travel_style`, `favorite_season`, `plans_count`, `status`, `joined_date`) VALUES
(1, 'Aarav Mehta', 'aarav.mehta@email.com', 'Couple', 'Winter', 8, 'Active', '08 Aug 2026'),
(2, 'Maya Patel', 'maya.patel@email.com', 'Solo', 'Monsoon', 5, 'Active', '06 Aug 2026'),
(3, 'Riya Shah', 'riya.shah@email.com', 'Friends', 'Summer', 11, 'Active', '04 Aug 2026'),
(4, 'Kabir Joshi', 'kabir.joshi@email.com', 'Family', 'Winter', 3, 'Active', '02 Aug 2026'),
(5, 'Anaya Desai', 'anaya.desai@email.com', 'Couple', 'Monsoon', 7, 'Active', '30 Jul 2026');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `current_location` varchar(100) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `preferred_season` varchar(30) DEFAULT 'Winter',
  `travel_style` varchar(30) DEFAULT 'Solo',
  `travel_pace` varchar(30) DEFAULT 'Balanced',
  `budget_style` varchar(30) DEFAULT 'Luxury',
  `notif_travel` tinyint(4) DEFAULT 1,
  `notif_seasonal` tinyint(4) DEFAULT 1,
  `notif_community` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_email`, `full_name`, `phone_number`, `current_location`, `birth_date`, `preferred_season`, `travel_style`, `travel_pace`, `budget_style`, `notif_travel`, `notif_seasonal`, `notif_community`) VALUES
(1, 'hkhunt708@rku.ac.in', 'Hetvi Khunt', '+1 (555) 012-3456', 'London, United Kingdom', 'March 12, 1992', 'Winter', 'Solo', 'Balanced', 'Luxury', 1, 1, 0),
(2, 'julian.thorne@seasonverse.com', 'Julian Thorne', '+1 (555) 012-3456', 'London, United Kingdom', 'March 12, 1992', 'Winter', 'Solo', 'Balanced', 'Luxury', 1, 1, 0),
(3, 'vdholariya623@rku.ac.in', 'VANSH DHOLARIYA', '+1 (555) 012-3456', 'London, United Kingdom', 'March 12, 1992', 'Winter', 'Solo', 'Balanced', 'Luxury', 1, 1, 0),
(4, 'hetvi0796@gmail.com', 'Hetvi Khunt', '+1 (555) 012-3456', 'London, United Kingdom', 'March 12, 1992', 'Winter', 'Solo', 'Balanced', 'Luxury', 1, 1, 0),
(5, 'vmendapara432@rku.ac.in', 'vishwa patel', '2424675437', NULL, NULL, 'Winter', 'Solo', 'Balanced', 'Luxury', 1, 1, 0),
(6, 'mansi123@gmail.com', 'Mansi Gajera', '1234567890', NULL, '2026-11-18', 'Winter', 'Solo', 'Balanced', 'Luxury', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_trips`
--

CREATE TABLE `user_trips` (
  `id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `season` varchar(50) NOT NULL,
  `budget` decimal(10,2) NOT NULL,
  `travel_style` varchar(50) NOT NULL,
  `status` varchar(30) DEFAULT 'Upcoming',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_trips`
--

INSERT INTO `user_trips` (`id`, `user_email`, `destination`, `season`, `budget`, `travel_style`, `status`, `created_at`) VALUES
(1, 'hkhunt708@rku.ac.in', 'south korea', 'Spring', 80000.00, 'Solo', 'Upcoming', '2026-10-29 18:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `wardrobe_items`
--

CREATE TABLE `wardrobe_items` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `user_email` varchar(150) DEFAULT NULL,
  `color` varchar(40) DEFAULT NULL,
  `season` varchar(40) DEFAULT 'All Season',
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wardrobe_items`
--

INSERT INTO `wardrobe_items` (`id`, `title`, `category`, `image_url`, `user_email`, `color`, `season`, `notes`, `created_at`) VALUES
(1, 'Cashmere Knit', 'Tops', 'https://images.unsplash.com/photo-1434389677669-e08b4cac3105?auto=format&fit=crop&w=400&q=80', NULL, NULL, 'All Season', NULL, '2026-11-19 08:39:50'),
(2, 'Wool Trousers', 'Bottoms', 'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?auto=format&fit=crop&w=400&q=80', NULL, NULL, 'All Season', NULL, '2026-11-19 08:39:50'),
(3, 'Alpine Overcoat', 'Outerwear', 'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?auto=format&fit=crop&w=400&q=80', NULL, NULL, 'All Season', NULL, '2026-11-19 08:39:50'),
(4, 'Leather Boots', 'Footwear', 'https://images.unsplash.com/photo-1520639888713-7851133b1ed0?auto=format&fit=crop&w=400&q=80', NULL, NULL, 'All Season', NULL, '2026-11-19 08:39:50'),
(5, 'Merino Scarf', 'Accessories', 'https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?auto=format&fit=crop&w=400&q=80', NULL, NULL, 'All Season', NULL, '2026-11-19 08:39:50'),
(6, 'Leather Travel Bag', 'Accessories', 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=400&q=80', NULL, NULL, 'All Season', NULL, '2026-11-19 08:39:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ai_chats`
--
ALTER TABLE `ai_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ai_metrics`
--
ALTER TABLE `ai_metrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_experiences`
--
ALTER TABLE `community_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_management`
--
ALTER TABLE `content_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_overview`
--
ALTER TABLE `content_overview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `packing_checklist`
--
ALTER TABLE `packing_checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packing_items_v2`
--
ALTER TABLE `packing_items_v2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_stats`
--
ALTER TABLE `platform_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_activity`
--
ALTER TABLE `recent_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews_management`
--
ALTER TABLE `reviews_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_experiences`
--
ALTER TABLE `saved_experiences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_save_exp` (`user_email`,`experience_id`);

--
-- Indexes for table `saved_trips`
--
ALTER TABLE `saved_trips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_save` (`user_email`,`destination_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_management`
--
ALTER TABLE `users_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_trips`
--
ALTER TABLE `user_trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wardrobe_items`
--
ALTER TABLE `wardrobe_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ai_chats`
--
ALTER TABLE `ai_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ai_metrics`
--
ALTER TABLE `ai_metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `community_experiences`
--
ALTER TABLE `community_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `content_management`
--
ALTER TABLE `content_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content_overview`
--
ALTER TABLE `content_overview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packing_checklist`
--
ALTER TABLE `packing_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `packing_items_v2`
--
ALTER TABLE `packing_items_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `platform_stats`
--
ALTER TABLE `platform_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recent_activity`
--
ALTER TABLE `recent_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews_management`
--
ALTER TABLE `reviews_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saved_experiences`
--
ALTER TABLE `saved_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_trips`
--
ALTER TABLE `saved_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_management`
--
ALTER TABLE `users_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_trips`
--
ALTER TABLE `user_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wardrobe_items`
--
ALTER TABLE `wardrobe_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
