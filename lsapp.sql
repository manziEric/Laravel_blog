-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 07 jun 2019 om 12:05
-- Serverversie: 10.1.37-MariaDB
-- PHP-versie: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contactforms`
--

CREATE TABLE `contactforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(23, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'body', 'text', 'Body', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'cover_image', 'text', 'Cover Image', 1, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'category', 'text', 'Category', 1, 1, 1, 1, 1, 1, '{}', 8),
(30, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(31, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(32, 6, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(33, 6, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(34, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(35, 6, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-05-18 12:51:01', '2019-05-18 12:51:01'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-05-18 12:51:02', '2019-05-18 12:51:02'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-05-18 12:51:02', '2019-05-18 12:51:02'),
(4, 'posts', 'posts', 'Post', 'Posts', NULL, 'App\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-03 07:10:06', '2019-06-03 07:10:06'),
(6, 'contactforms', 'contactforms', 'Contactform', 'Contactforms', NULL, 'App\\Contactform', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-03 07:12:20', '2019-06-06 10:17:24');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-05-18 12:51:11', '2019-05-18 12:51:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-05-18 12:51:11', '2019-05-18 12:51:11', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-05-18 12:51:11', '2019-05-18 12:51:11', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-05-18 12:51:11', '2019-05-18 12:51:11', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-05-18 12:51:11', '2019-05-18 12:51:11', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2019-05-18 12:51:11', '2019-06-03 07:19:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-05-18 12:51:11', '2019-06-03 07:19:31', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-05-18 12:51:11', '2019-06-03 07:19:31', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-05-18 12:51:11', '2019-06-03 07:19:31', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-05-18 12:51:11', '2019-06-03 07:19:31', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2019-05-18 12:51:11', '2019-06-03 07:19:38', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-05-18 12:51:17', '2019-06-03 07:19:31', 'voyager.hooks', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-book', '#000000', NULL, 4, '2019-06-03 07:10:06', '2019-06-03 07:22:05', 'voyager.posts.index', 'null'),
(13, 1, 'Contactforms', '', '_self', 'voyager-file-text', '#000000', NULL, 6, '2019-06-03 07:12:20', '2019-06-03 07:24:56', 'voyager.contactforms.index', 'null');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_08_115758_create_posts_table', 1),
(4, '2019_05_10_105756_add_user_id_to_posts', 2),
(5, '2019_05_12_155040_add_cover_image_to_posts', 3),
(6, '2016_01_01_000000_add_voyager_user_fields', 4),
(7, '2016_01_01_000000_create_data_types_table', 4),
(8, '2016_05_19_173453_create_menu_table', 4),
(9, '2016_10_21_190000_create_roles_table', 4),
(10, '2016_10_21_190000_create_settings_table', 4),
(11, '2016_11_30_135954_create_permission_table', 4),
(12, '2016_11_30_141208_create_permission_role_table', 4),
(13, '2016_12_26_201236_data_types__add__server_side', 4),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 4),
(15, '2017_01_14_005015_create_translations_table', 4),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 4),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 4),
(18, '2017_04_21_000000_add_order_to_data_rows_table', 4),
(19, '2017_07_05_210000_add_policyname_to_data_types_table', 4),
(20, '2017_08_05_000000_add_group_to_settings_table', 4),
(21, '2017_11_26_013050_add_user_role_relationship', 4),
(22, '2017_11_26_015000_create_user_roles_table', 4),
(23, '2018_03_11_000000_add_user_settings', 4),
(24, '2018_03_14_000000_add_details_to_data_types_table', 4),
(25, '2018_03_16_000000_make_settings_value_nullable', 4),
(26, '2019_05_28_131946_add_category_to_posts', 5),
(27, '2019_05_31_065938_create_contactforms_table', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ericantwerpen@hotmail.com', '$2y$10$JhL38JTFP2QpSaf3.AZqEOSCFb3W3EtcT3m./5cx80PMlGxHu2Mze', '2019-05-11 11:51:34');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(2, 'browse_bread', NULL, '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(3, 'browse_database', NULL, '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(4, 'browse_media', NULL, '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(5, 'browse_compass', NULL, '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(6, 'browse_menus', 'menus', '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(7, 'read_menus', 'menus', '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(8, 'edit_menus', 'menus', '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(9, 'add_menus', 'menus', '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(10, 'delete_menus', 'menus', '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(11, 'browse_roles', 'roles', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(12, 'read_roles', 'roles', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(13, 'edit_roles', 'roles', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(14, 'add_roles', 'roles', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(15, 'delete_roles', 'roles', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(16, 'browse_users', 'users', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(17, 'read_users', 'users', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(18, 'edit_users', 'users', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(19, 'add_users', 'users', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(20, 'delete_users', 'users', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(21, 'browse_settings', 'settings', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(22, 'read_settings', 'settings', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(23, 'edit_settings', 'settings', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(24, 'add_settings', 'settings', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(25, 'delete_settings', 'settings', '2019-05-18 12:51:13', '2019-05-18 12:51:13'),
(26, 'browse_hooks', NULL, '2019-05-18 12:51:17', '2019-05-18 12:51:17'),
(27, 'browse_posts', 'posts', '2019-06-03 07:10:06', '2019-06-03 07:10:06'),
(28, 'read_posts', 'posts', '2019-06-03 07:10:06', '2019-06-03 07:10:06'),
(29, 'edit_posts', 'posts', '2019-06-03 07:10:06', '2019-06-03 07:10:06'),
(30, 'add_posts', 'posts', '2019-06-03 07:10:06', '2019-06-03 07:10:06'),
(31, 'delete_posts', 'posts', '2019-06-03 07:10:06', '2019-06-03 07:10:06'),
(32, 'browse_contactforms', 'contactforms', '2019-06-03 07:12:20', '2019-06-03 07:12:20'),
(33, 'read_contactforms', 'contactforms', '2019-06-03 07:12:20', '2019-06-03 07:12:20'),
(34, 'edit_contactforms', 'contactforms', '2019-06-03 07:12:20', '2019-06-03 07:12:20'),
(35, 'add_contactforms', 'contactforms', '2019-06-03 07:12:20', '2019-06-03 07:12:20'),
(36, 'delete_contactforms', 'contactforms', '2019-06-03 07:12:20', '2019-06-03 07:12:20');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`, `category`) VALUES
(10, 'a diam maecenas', '<p>scelerisque purus semper eget duis. Nibh tortor id aliquet lectus proin nibh. Non diam phasellus vestibulum lorem. Lectus urna duis convallis convallis tellus. Quisque egestas diam in arcu cursus. Sagittis id consectetur purus ut faucibus. Tincidunt ornare massa eget egestas. Viverra justo nec ultrices dui sapien eget mi proin. Adipiscing enim eu turpis egestas pretium aenean pharetra. Aliquet nibh praesent tristique magna sit. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam. Vulputate ut pharetra sit amet aliquam id diam maecenas. Bibendum at varius vel pharetra vel turpis. Ac turpis egestas maecenas pharetra convallis posuere morbi. Neque viverra justo nec ultrices dui. Risus sed vulputate odio ut enim. Donec et odio pellentesque diam volutpat commodo sed. Sem integer vitae justo eget magna fermentum iaculis eu. Amet volutpat consequat mauris nunc congue nisi vitae suscipit tellus.</p>\r\n\r\n<p>mauris a diam maecenas. Viverra suspendisse potenti nullam ac tortor vitae. Nibh sed pulvinar proin gravida. Vel pretium lectus quam id leo in. Aliquet enim tortor at auctor. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Sit amet aliquam id diam maecenas ultricies. Pellentesque habitant morbi tristique senectus et netus. In fermentum posuere urna nec tincidunt praesent semper. Sem fringilla ut morbi tincidunt augue interdum velit euismod. Nulla facilisi nullam vehicula ipsum a arcu cursus. Ut placerat orci nulla pellentesque&nbsp;</p>', '2019-05-12 15:01:29', '2019-05-28 13:43:56', 1, 'bahamas-1720653_640_1557680872.jpg', 'travel'),
(11, 'nibh tortor id aliquet', '<p>Mauris rhoncus aenean vel elit scelerisque. Orci a scelerisque purus semper eget. Massa ultricies mi quis hendrerit dolor. Mauris augue neque gravida in fermentum et sollicitudin ac. Quisque sagittis purus sit amet volutpat consequat mauris nunc. Lectus mauris ultrices eros in. In hac habitasse platea dictumst. Turpis massa sed elementum tempus egestas. Diam maecenas ultricies mi eget mauris. Morbi non arcu risus quis. Auctor augue mauris augue neque gravida in fermentum et sollicitudin. Eget aliquet nibh praesent tristique magna sit. Mattis pellentesque id nibh tortor id aliquet lectus.</p>', '2019-05-12 15:08:51', '2019-05-28 13:42:42', 1, 'noimage.jpg', 'blog'),
(12, 'consectetur adipiscing elit, sed do eiusmod tempor incididunt', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus semper eget duis at. Platea dictumst vestibulum rhoncus est. Tellus pellentesque eu tincidunt tortor. Aliquam vestibulum morbi blandit cursus risus at ultrices. Massa eget egestas purus viverra accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Orci eu lobortis elementum nibh tellus molestie nunc non. Quis commodo odio aenean sed adipiscing diam donec adipiscing. Nunc mi ipsum faucibus vitae. Quis viverra nibh cras pulvinar mattis nunc. Ut morbi tincidunt augue interdum velit euismod. Libero volutpat sed cras ornare arcu dui vivamus arcu felis. Tempor nec feugiat nisl pretium fusce id velit ut. Massa vitae tortor condimentum lacinia quis vel eros donec ac.</p>', '2019-05-12 15:09:43', '2019-05-28 13:41:29', 1, 'great-exuma-island-955797_640_1557680983.jpg', 'fun'),
(13, 'Neque vitae tempus', '<p>Neque vitae tempus quam pellentesque nec nam aliquam sem. Quam viverra orci sagittis eu volutpat. Nunc congue nisi vitae suscipit tellus mauris a diam maecenas. Viverra suspendisse potenti nullam ac tortor vitae. Nibh sed pulvinar proin gravida. Vel pretium lectus quam id leo in. Aliquet enim tortor at auctor. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Sit amet aliquam id diam maecenas ultricies. Pellentesque habitant morbi tristique senectus et netus. In fermentum posuere urna nec tincidunt praesent semper. Sem fringilla ut morbi tincidunt augue interdum velit euismod. Nulla facilisi nullam vehicula ipsum a arcu cursus. Ut placerat orci nulla pellentesque dignissim enim sit amet. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Nunc sed velit dignissim sodales ut eu sem. Et leo duis ut diam quam nulla.</p>', '2019-05-12 15:10:26', '2019-05-28 13:41:00', 1, 'sailboat-3873807_640_1557681026.jpg', 'travel'),
(15, 'dolor sit amet,', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis orci a scelerisque purus semper eget duis. Nibh tortor id aliquet lectus proin nibh. Non diam phasellus vestibulum lorem. Lectus urna duis convallis convallis tellus. Quisque egestas diam in arcu cursus. Sagittis id consectetur purus ut faucibus. Tincidunt ornare massa eget egestas. Viverra justo nec ultrices dui sapien eget mi proin. Adipiscing enim eu turpis egestas pretium aenean pharetra. Aliquet nibh praesent tristique magna sit. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam. Vulputate ut pharetra sit amet aliquam id diam maecenas. Bibendum at varius vel pharetra vel turpis. Ac turpis egestas maecenas pharetra convallis posuere morbi. Neque viverra justo nec ultrices dui. Risus sed vulputate odio ut enim. Donec et odio pellentesque diam volutpat commodo sed. Sem integer vitae justo eget magna fermentum iaculis eu. Amet volutpat consequat mauris nunc congue nisi vitae suscipit tellus.</p>\r\n\r\n<p>Mauris rhoncus aenean vel elit scelerisque. Orci a scelerisque purus semper eget. Massa ultricies mi quis hendrerit dolor. Mauris augue neque gravida in fermentum et sollicitudin ac. Quisque sagittis purus sit amet volutpat consequat mauris nunc. Lectus mauris ultrices eros in. In hac habitasse platea dictumst. Turpis massa sed elementum tempus egestas. Diam maecenas ultricies mi eget mauris. Morbi non arcu risus quis. Auctor augue mauris augue neque gravida in fermentum et sollicitudin. Eget aliquet nibh praesent tristique magna sit. Mattis pellentesque id nibh tortor id aliquet lectus.</p>\r\n\r\n<p>Neque vitae tempus quam pellentesque nec nam aliquam sem. Quam viverra orci sagittis eu volutpat. Nunc congue nisi vitae suscipit tellus mauris a diam maecenas. Viverra suspendisse potenti nullam ac tortor vitae. Nibh sed pulvinar proin gravida. Vel pretium lectus quam id leo in. Aliquet enim tortor at auctor. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Sit amet aliquam id diam maecenas ultricies. Pellentesque habitant morbi tristique senectus et netus. In fermentum posuere urna nec tincidunt praesent semper. Sem fringilla ut morbi tincidunt augue interdum velit euismod. Nulla facilisi nullam vehicula ipsum a arcu cursus. Ut placerat orci nulla pellentesque dignissim enim sit amet. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Nunc sed velit dignissim sodales ut eu sem. Et leo duis ut diam quam nulla.</p>', '2019-05-25 06:08:58', '2019-05-28 13:40:28', 1, 'sea-418742_640_1558771738.jpg', 'world'),
(16, 'mollit anim id est laborum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2019-05-25 06:10:04', '2019-05-28 13:39:19', 1, 'drink-2205033_640_1558771804.jpg', 'world'),
(17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae sapien pellentesque habitant morbi tristique senectus et netus et. Magna sit amet purus gravida. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec. Sit amet cursus sit amet dictum sit. Donec enim diam vulputate ut pharetra sit amet. Nam at lectus urna duis. Adipiscing at in tellus integer feugiat. Vitae suscipit tellus mauris a diam maecenas sed enim ut. Nibh cras pulvinar mattis nunc sed blandit libero volutpat sed. Commodo odio aenean sed adipiscing diam donec adipiscing tristique risus. Purus in massa tempor nec feugiat nisl pretium fusce.</p>\r\n\r\n<p>Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Mauris in aliquam sem fringilla ut morbi tincidunt augue. Odio tempor orci dapibus ultrices in iaculis nunc. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Eu turpis egestas pretium aenean. Porta non pulvinar neque laoreet suspendisse interdum. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Sit amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus. Sit amet massa vitae tortor. Neque aliquam vestibulum morbi blandit. Lacus luctus accumsan tortor posuere. Ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. Lobortis scelerisque fermentum dui faucibus. Vestibulum rhoncus est pellentesque elit. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. Ultrices gravida dictum fusce ut. Quis risus sed vulputate odio.</p>', '2019-05-28 12:29:52', '2019-05-28 13:16:49', 1, 'beach-84533_640_1559053792.jpg', 'fun'),
(18, 'corrupti quae', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>\r\n\r\n<p>Incidunt aliquid pariatur quis saepe odit amet,</p>\r\n\r\n<p>nihil perferendis assumenda aspernatur accusantium dignissimos minus,</p>\r\n\r\n<p>ab sapiente eaque, quam delectus</p>\r\n\r\n<p>quia distinctio atque.A eveniet debitis sapiente tenetur earum temporibus</p>\r\n\r\n<p>ullam esse, quos rerum numquam</p>\r\n\r\n<p>nostrum impedit repellendus nam ipsa quis, enim ab dicta ex id.</p>\r\n\r\n<p>Alias, voluptates voluptatum autem</p>\r\n\r\n<p>corrupti quae officia.</p>', '2019-06-06 09:48:24', '2019-06-06 09:48:24', 2, 'air-2716_960_720_1559821704.jpg', 'travel');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-05-18 12:51:12', '2019-05-18 12:51:12'),
(2, 'user', 'Normal User', '2019-05-18 12:51:12', '2019-05-18 12:51:12');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2019\\pAwq1325gQRvc0FRXb1o.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\May2019\\GSTwiUc363bJgKhgAq7x.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'eric', 'ericantwerpen@hotmail.com', 'users\\May2019\\Ewyfg3UfEiBBxuqPfPF3.jpg', NULL, '$2y$10$BH9hGW.vlcpX7OOZGujqB.skggjGC04PPY.NkeNs5l5TMbNsGIRCS', 'dQXXK8tpov3rtndJb2QFs9D3lzETTMBbOIaUIZ4mUda0K36g9SBksVi0aQlc', '{\"locale\":\"en\"}', '2019-05-10 08:44:35', '2019-05-18 13:10:35'),
(2, 2, 'manu', 'eric.manzi@importexportpartner.com', 'users/default.png', NULL, '$2y$10$cnjB5aW8KLYi4zMPBWYpqeoyt8BcGKRp/c38vIjmS6p7LT6o.1ql6', NULL, '{\"locale\":\"en\"}', '2019-05-12 12:12:44', '2019-06-06 09:38:13'),
(3, 2, 'Emanzi', 'emanzi@eric.com', 'users/default.png', NULL, '$2y$10$M9ITr8dcS4bpVRbKq9Bx8.HQQvCxJna0w/oaG6aSDEBqIwZikloUa', NULL, NULL, '2019-06-06 09:51:05', '2019-06-06 09:51:05');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexen voor tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexen voor tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexen voor tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexen voor tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT voor een tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Beperkingen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
