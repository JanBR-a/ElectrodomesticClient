-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 19-05-2024 a les 22:24:31
-- Versió del servidor: 10.4.32-MariaDB
-- Versió de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `electroapi`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `electrodomestic`
--

CREATE TABLE `electrodomestic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `electrodomestic`
--

INSERT INTO `electrodomestic` (`id`, `name`, `price`, `image`, `description`, `category`, `brand`, `created_at`, `updated_at`) VALUES
(3, 'Frigorífico combi - Bosch KGN36VIEA', '800', 'https://i.blogs.es/5b2a69/nevera-samsung/450_1000.jpg', 'No Frost, 186 cm, 326 l, Cajón VitaFresh, EasyAccess, Inox antihuellas', 'cocina', 'Bosch', '2024-05-17 23:29:53', '2024-05-17 23:29:53'),
(4, 'Lavadora - Samsung WW80J5355MW', '123.89', 'https://i.blogs.es/5b2a69/nevera-samsung/450_1000.jpg', 'Capacidad 8 kg, 1200 rpm, A+++', 'cocina', 'Samsung', '2024-05-17 23:29:53', '2024-05-18 22:09:15'),
(5, 'Televisor - LG OLED55B9PLA', '1200.00', 'https://i.blogs.es/5b2a69/nevera-samsung/450_1000.jpg', '55\", 4K UHD, Smart TV', 'entretenimiento', 'LG', '2024-05-17 23:29:53', '2024-05-17 23:29:53'),
(7, 'Aspiradora - Dyson V11 Absolute', '600.00', 'https://i.blogs.es/5b2a69/nevera-samsung/450_1000.jpg', 'Sin cable, Hasta 60 min de autonomía', 'limpieza', 'Dyson', '2024-05-17 23:29:53', '2024-05-17 23:29:53'),
(9, 'Microondas - Samsung GE83Xo', '90', 'https://i.blogs.es/5b2a69/nevera-samsung/450_1000.jpg', '23L, Grill, Inox', 'cocina', 'Samsung', '2024-05-17 23:29:53', '2024-05-17 23:29:53'),
(13, 'Microndas - Samsung GE83X', '90', 'https://i.blogs.es/5b2a69/nevera-samsung/450_1000.jpg', '23L, Grill, Inox', 'cocina', 'Samsung', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de la taula `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_30_165135_create_electrodomestic_table', 1),
(6, '2024_05_19_033216_add_api_token_to_users_table', 2);

-- --------------------------------------------------------

--
-- Estructura de la taula `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '2a273cfe2780096e3ab05c6363f77280c05bd45d51e1a28cee2853aaf4e88142', '[\"*\"]', NULL, NULL, '2024-05-08 16:05:00', '2024-05-08 16:05:00'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '368b5f8d8a9d1e85aa16474befc93d46422c3fa4c04e15bf0c303f109348c991', '[\"*\"]', NULL, NULL, '2024-05-08 16:07:52', '2024-05-08 16:07:52'),
(3, 'App\\Models\\User', 1, 'API TOKEN', '06c4dcc8e774cbd640f9a75716a16d7c1d65fc0a3266b06c6a262c6b11086041', '[\"*\"]', '2024-05-19 01:13:04', NULL, '2024-05-17 18:57:53', '2024-05-19 01:13:04'),
(4, 'App\\Models\\User', 1, 'API TOKEN', '1dbd34fa4e5f8b0454c2bd46f1261636b99e2b0050e4cfe21a86b44de875c511', '[\"*\"]', NULL, NULL, '2024-05-18 15:54:29', '2024-05-18 15:54:29'),
(5, 'App\\Models\\User', 6, 'API TOKEN', '81303163c818d7a58f25882064563c71ed759fdbca07a10833cd653ae043b8b2', '[\"*\"]', '2024-05-19 02:31:12', NULL, '2024-05-19 02:31:05', '2024-05-19 02:31:12'),
(6, 'App\\Models\\User', 6, 'API TOKEN', '4296f76cbb5df49a89db09ba4ca8c6ffe0e0308728bdf050dd511eb403238ef2', '[\"*\"]', '2024-05-19 17:06:31', NULL, '2024-05-19 14:22:35', '2024-05-19 17:06:31');

-- --------------------------------------------------------

--
-- Estructura de la taula `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Bolcament de dades per a la taula `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Jan Blanco Robles', 'janblanco1911@gmail.com', NULL, '$2y$12$GtbYMWEeUV2u.f1oG4cq3uuJ5FtdyYMSYIF9qTpz4ops.BcGV4xCy', NULL, '2024-05-19 02:31:05', '2024-05-19 02:31:05');

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `electrodomestic`
--
ALTER TABLE `electrodomestic`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índexs per a la taula `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índexs per a la taula `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índexs per a la taula `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `electrodomestic`
--
ALTER TABLE `electrodomestic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la taula `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la taula `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la taula `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la taula `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
