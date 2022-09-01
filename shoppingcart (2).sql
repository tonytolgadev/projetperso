-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 25 juin 2022 à 08:36
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shoppingcart`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Légumes', '2022-05-08 08:04:59', '2022-05-08 11:16:09'),
(5, 'Fruits', '2022-05-08 12:37:17', '2022-05-08 12:37:17'),
(6, 'Jus', '2022-05-11 12:42:16', '2022-05-11 12:42:16'),
(7, 'Fruits secs', '2022-05-18 12:05:15', '2022-05-18 12:05:15');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'tolgapsn@outlook.com', '$2y$10$SsOvZroOifcs5XnmLBcsXOQ345VmPIr36djzp3j/oSVqC1Awxb.OC', '2022-05-14 11:05:28', '2022-05-14 11:05:28'),
(2, 'tonytolgadev@outlook.fr', '$2y$10$9XWA3QX1I4nRQKvbtPlCjuucvvTqIKEKxUdmavNjlA8InhagHMS4q', '2022-06-10 09:09:17', '2022-06-10 09:09:17');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_07_175747_create_categories_table', 1),
(6, '2022_05_09_095809_create_products_table', 2),
(7, '2022_05_10_131312_add_status_to_products', 3),
(8, '2022_05_10_133231_create_sliders_table', 4),
(9, '2022_05_14_120110_create_clients_table', 5),
(10, '2022_05_15_131653_create_orders_table', 6),
(11, '2022_05_16_124636_add_payer_id_to_orders', 7);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `names` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panier` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `names`, `adresse`, `panier`, `created_at`, `updated_at`, `payer_id`) VALUES
(17, 'Tony Erdogan', '68 bld Diderot , Paris 75012', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:3;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"3\";s:12:\"product_name\";s:6:\"Tomate\";s:13:\"product_price\";s:1:\"5\";s:13:\"product_image\";s:24:\"product-5_1652120738.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:12:\"product_name\";s:6:\"Tomate\";s:13:\"product_price\";s:1:\"5\";s:16:\"product_category\";s:8:\"Légumes\";s:13:\"product_image\";s:24:\"product-5_1652120738.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 11:03:22\";s:10:\"updated_at\";s:19:\"2022-05-17 13:26:56\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:12:\"product_name\";s:6:\"Tomate\";s:13:\"product_price\";s:1:\"5\";s:16:\"product_category\";s:8:\"Légumes\";s:13:\"product_image\";s:24:\"product-5_1652120738.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 11:03:22\";s:10:\"updated_at\";s:19:\"2022-05-17 13:26:56\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:5;}', '2022-05-17 13:19:55', '2022-05-17 13:19:55', '1652800795'),
(13, 'Kylian Mbappe', '12 Rue de Paris, Paris', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"2\";s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:3:\"100\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:3:\"100\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-12 14:31:45\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:3:\"100\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-12 14:31:45\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:100;}', '2022-05-16 16:57:37', '2022-05-16 16:57:37', '1652727457'),
(14, 'Tolga Erdogan', '12 avenue du clocher, Noisy le sec', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:8;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"8\";s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:2:\"50\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:2:\"50\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-12 14:32:58\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:2:\"50\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-12 14:32:58\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:50;}', '2022-05-17 07:07:02', '2022-05-17 07:07:02', '1652778422'),
(15, 'Azerty', 'Azerty', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:8;a:6:{s:3:\"qty\";s:1:\"1\";s:10:\"product_id\";s:1:\"8\";s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:2:\"50\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:2:\"50\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-12 14:32:58\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:2:\"50\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-12 14:32:58\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:50;}', '2022-05-17 07:14:08', '2022-05-17 07:14:08', '1652778848'),
(10, 'tolga', 'tolga', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"2\";s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:3:\"100\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:3:\"100\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-12 14:31:45\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:3:\"100\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-12 14:31:45\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:100;}', '2022-05-16 14:59:40', '2022-05-16 14:59:40', '1652720380'),
(18, 'Tolga Psn', '23 rue de Neuilly, Paris', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:7;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"7\";s:12:\"product_name\";s:6:\"Fraise\";s:13:\"product_price\";s:1:\"5\";s:13:\"product_image\";s:24:\"product-2_1652280198.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:12:\"product_name\";s:6:\"Fraise\";s:13:\"product_price\";s:1:\"5\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-2_1652280198.jpg\";s:10:\"created_at\";s:19:\"2022-05-11 14:43:18\";s:10:\"updated_at\";s:19:\"2022-05-17 13:27:10\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:12:\"product_name\";s:6:\"Fraise\";s:13:\"product_price\";s:1:\"5\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-2_1652280198.jpg\";s:10:\"created_at\";s:19:\"2022-05-11 14:43:18\";s:10:\"updated_at\";s:19:\"2022-05-17 13:27:10\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:5;}', '2022-05-17 16:56:45', '2022-05-17 16:56:45', '1652813805'),
(19, 'Tolga Erdogan', '12 rue de noisy', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"2\";s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:3;}', '2022-05-20 06:52:51', '2022-05-20 06:52:51', '1653036771'),
(20, 'Idris', 'Avenue de cacha', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:8;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"8\";s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:1:\"3\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-18 14:04:09\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-18 14:04:09\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:3;}', '2022-06-07 10:32:28', '2022-06-07 10:32:28', '1654605148'),
(21, 'Tony', '15 avenue', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:8;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"8\";s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:1:\"3\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-18 14:04:09\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:12:\"product_name\";s:3:\"Jus\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:3:\"Jus\";s:13:\"product_image\";s:24:\"product-8_1652365978.jpg\";s:10:\"created_at\";s:19:\"2022-05-12 14:32:58\";s:10:\"updated_at\";s:19:\"2022-05-18 14:04:09\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:12;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:2:\"12\";s:12:\"product_name\";s:6:\"Orange\";s:13:\"product_price\";s:1:\"3\";s:13:\"product_image\";s:29:\"product-orange_1654677538.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:12;s:12:\"product_name\";s:6:\"Orange\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:29:\"product-orange_1654677538.jpg\";s:10:\"created_at\";s:19:\"2022-06-08 08:38:58\";s:10:\"updated_at\";s:19:\"2022-06-08 08:38:58\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:12;s:12:\"product_name\";s:6:\"Orange\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:29:\"product-orange_1654677538.jpg\";s:10:\"created_at\";s:19:\"2022-06-08 08:38:58\";s:10:\"updated_at\";s:19:\"2022-06-08 08:38:58\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:6;}', '2022-06-15 06:19:55', '2022-06-15 06:19:55', '1655281195'),
(23, 'TonyDev', '13 av cachan', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:6:{s:3:\"qty\";s:1:\"1\";s:10:\"product_id\";s:1:\"2\";s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:3;}', '2022-06-15 21:49:04', '2022-06-15 21:49:04', '1655336944'),
(24, 'tont', 'cachan', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"2\";s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:3;}', '2022-06-15 21:52:27', '2022-06-15 21:52:27', '1655337147'),
(25, 'gg', 'gg', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:7;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"7\";s:12:\"product_name\";s:6:\"Fraise\";s:13:\"product_price\";s:1:\"5\";s:13:\"product_image\";s:24:\"product-2_1652280198.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:12:\"product_name\";s:6:\"Fraise\";s:13:\"product_price\";s:1:\"5\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-2_1652280198.jpg\";s:10:\"created_at\";s:19:\"2022-05-11 14:43:18\";s:10:\"updated_at\";s:19:\"2022-05-17 13:27:10\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:12:\"product_name\";s:6:\"Fraise\";s:13:\"product_price\";s:1:\"5\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-2_1652280198.jpg\";s:10:\"created_at\";s:19:\"2022-05-11 14:43:18\";s:10:\"updated_at\";s:19:\"2022-05-17 13:27:10\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:5;}', '2022-06-15 21:55:54', '2022-06-15 21:55:54', '1655337354'),
(26, 'Erdogan', '12 avenue diderot', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"2\";s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Pomme\";s:13:\"product_price\";s:1:\"3\";s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-10_1652090746.jpg\";s:10:\"created_at\";s:19:\"2022-05-09 10:05:46\";s:10:\"updated_at\";s:19:\"2022-05-18 14:03:50\";s:6:\"status\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:3;}', '2022-06-18 10:22:51', '2022-06-18 10:22:51', '1655554971');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('adriano@gmail.com', '$2y$10$c3W4zkfW2YwqEyTuSvsrfu8Q7B27YB4Mb5Ce7v1.XaOYEAZE3rzuW', '2022-06-15 11:24:13'),
('tonytolgadev@outlook.fr', '$2y$10$FPJfsvAsgw9or5aIe/Efxuls57pcNBQ1Ew.XuDD3dq3TuSWyGQaaO', '2022-06-22 05:56:11');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_category`, `product_image`, `created_at`, `updated_at`, `status`) VALUES
(3, 'Tomate', '5', 'Légumes', 'product-5_1652120738.jpg', '2022-05-09 09:03:22', '2022-05-17 11:26:56', 1),
(2, 'Pomme', '3', 'Fruits', 'product-10_1652090746.jpg', '2022-05-09 08:05:46', '2022-05-18 12:03:50', 1),
(8, 'Jus', '3', 'Jus', 'product-8_1652365978.jpg', '2022-05-12 12:32:58', '2022-05-18 12:04:09', 1),
(7, 'Fraise', '5', 'Fruits', 'product-2_1652280198.jpg', '2022-05-11 12:43:18', '2022-05-17 11:27:10', 1),
(11, 'Pistache', '6', 'Fruits secs', 'product-pistache_1652882816.jpg', '2022-05-18 12:06:56', '2022-05-18 12:06:56', 1),
(9, 'Carotte', '4', 'Légumes', 'product-7_1652366147.jpg', '2022-05-12 12:35:31', '2022-05-18 12:03:58', 1),
(10, 'Petit pois', '2', 'Légumes', 'product-3_1652366233.jpg', '2022-05-12 12:37:13', '2022-05-18 12:04:02', 1),
(12, 'Orange', '3', 'Fruits', 'product-orange_1654677538.jpg', '2022-06-08 06:38:58', '2022-06-08 06:38:58', 1),
(13, 'Epinard', '5', 'Légumes', 'product-13_1655278406.jpg', '2022-06-15 05:33:26', '2022-06-15 05:33:26', 1),
(14, 'Noix de cajou', '6', 'Fruits secs', 'product-14_1655278571.jpeg', '2022-06-15 05:36:11', '2022-06-15 05:36:11', 1),
(15, 'Kiwi', '3', 'Fruits', 'product-15_1655819398.jpg', '2022-06-21 11:49:58', '2022-06-21 11:49:58', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `description1`, `description2`, `slider_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'We serve Fresh Vegestables Fruits1', 'We deliver organic vegetables fruits', 'bg_2_1652259714.jpg', 1, '2022-05-10 16:33:18', '2022-06-21 07:58:43'),
(2, 'We serve Fresh Vegestables Fruits', 'We deliver organic vegetables fruits', 'bg_1_1652210124.jpg', 1, '2022-05-10 17:15:24', '2022-06-21 07:58:44'),
(5, 'Des produits de qualités', 'Livraison rapide', 'category-4_1655377835.jpg', 1, '2022-06-16 09:10:35', '2022-06-16 09:10:35');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tony Tolga', 'tonytolgadev@outlook.fr', NULL, '$2y$10$9PMwWJ54cu17fvwre9bGFO1EhFMljf1AiAwHpdojQUwg7sAsD6krS', 'FTcgZIvEr0rl2CEKVZdMPV1uDJ1eMwshUtpkj4Vbh9hq5xGiq4cm2LVF8RYd', '2022-05-17 16:12:50', '2022-05-17 16:12:50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
