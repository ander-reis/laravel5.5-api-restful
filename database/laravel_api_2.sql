-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.11 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para laravel_api_2
CREATE DATABASE IF NOT EXISTS `laravel_api_2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravel_api_2`;

-- Copiando estrutura para tabela laravel_api_2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.migrations: 8 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(12, '2014_10_12_000000_create_users_table', 1),
	(13, '2014_10_12_100000_create_password_resets_table', 1),
	(14, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(15, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(16, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(17, '2016_06_01_000004_create_oauth_clients_table', 1),
	(18, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(19, '2017_12_14_154504_create_products_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.oauth_access_tokens: 5 rows
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('05cd0b8a9ce92d684e0b623e9492860edef476804bfb7f5a23a033b7a585efeb25c8ab1fdcd6a329', 1, 3, NULL, '[]', 0, '2017-12-20 11:02:51', '2017-12-20 11:02:51', '2017-12-21 11:02:51'),
	('dcce68d91a1bad3f2de5a8ba9fcc216048f7ceac1881aeea16a287450033ccc00b31715d441eacf7', 2, 2, 'curso', '[]', 0, '2017-12-20 11:04:53', '2017-12-20 11:04:53', '2018-12-20 11:04:53'),
	('917453ae9e0b8ce5f84b0450bbca4776f48e62edd9369482f853158a1f000c39745bc3c97b207d4f', 2, 3, NULL, '[]', 0, '2017-12-20 11:23:20', '2017-12-20 11:23:20', '2017-12-21 11:23:19'),
	('3e5183374ae9d3bf00475b5665865f0b5876667a56b0d058a14bcd3c238bfb77f1a3637df28ca77f', 1, 3, NULL, '[]', 0, '2017-12-20 11:24:00', '2017-12-20 11:24:00', '2017-12-21 11:24:00'),
	('af261303b7d47766ed14e9511e413e9c26de1a49bbcdbc9b0405885c6fb59a75ab010fa3507bbefa', 2, 3, NULL, '[]', 0, '2017-12-20 11:28:17', '2017-12-20 11:28:17', '2017-12-21 11:28:17');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.oauth_auth_codes: 0 rows
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.oauth_clients: 3 rows
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Meu Token', 'gZRQAuB1H7h0sCqHXZdqesE9pXIw851Vv1Iicuhh', 'http://localhost:8000/home', 0, 0, 0, '2017-12-20 11:01:29', '2017-12-20 11:01:29'),
	(2, NULL, 'Laravel Personal Access Client', 'rgZ3hBrKj5mvDTMYpAKUTw9K66FaqHMzr8iXDtN0', 'http://localhost', 1, 0, 0, '2017-12-20 11:02:11', '2017-12-20 11:02:11'),
	(3, NULL, 'Laravel Password Grant Client', 'r9gayaxkraMIpWbaWcKQm4YcOeuIwO8nQVmV2zQC', 'http://localhost', 0, 1, 0, '2017-12-20 11:02:11', '2017-12-20 11:02:11');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.oauth_personal_access_clients: 1 rows
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 2, '2017-12-20 11:02:11', '2017-12-20 11:02:11');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.oauth_refresh_tokens: 4 rows
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('0dd77badabe342443c556a6de83f0b0987a006492e46a8c82dbd194314bdd49646ecacf88cf79280', '05cd0b8a9ce92d684e0b623e9492860edef476804bfb7f5a23a033b7a585efeb25c8ab1fdcd6a329', 0, '2017-12-21 11:02:51'),
	('fa51288ee8fd7dfe68ccf07d3b8b299bdac011f4c7431551bfb2e4b7b9681e45bb920805cca68bd7', '917453ae9e0b8ce5f84b0450bbca4776f48e62edd9369482f853158a1f000c39745bc3c97b207d4f', 0, '2017-12-21 11:23:19'),
	('66245779dc603a81c8b9cbb06e37edfb5a9f0821b34e4a59461f9c54879441791c682ca9a59f769a', '3e5183374ae9d3bf00475b5665865f0b5876667a56b0d058a14bcd3c238bfb77f1a3637df28ca77f', 0, '2017-12-21 11:24:00'),
	('c0d5d434ab209465ffa47bdbbf7e0278e262bc4125ee81462a6c473d11f43e37efba33a0174a5648', 'af261303b7d47766ed14e9511e413e9c26de1a49bbcdbc9b0405885c6fb59a75ab010fa3507bbefa', 0, '2017-12-21 11:28:17');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.products: 6 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
	(3, 'Notebook Sansung 2', 'descrição do meu produto 2', 2, '2017-12-20 11:13:00', '2017-12-20 11:13:00'),
	(2, 'Notebook Sansung 2', 'descrição do meu produto 2', 2, '2017-12-20 11:05:28', '2017-12-20 11:05:28'),
	(4, 'Notebook Sansung 2', 'descrição do meu produto 2', 2, '2017-12-20 11:21:31', '2017-12-20 11:21:31'),
	(5, 'Notebook Sansung 3', 'descrição do meu produto 3', 2, '2017-12-20 11:22:18', '2017-12-20 11:22:18'),
	(6, 'Notebook Sansung 4', 'descrição do meu produto 4', 2, '2017-12-20 11:23:43', '2017-12-20 11:23:43'),
	(7, 'Notebook Sansung 5', 'descrição do meu produto 5', 1, '2017-12-20 11:24:20', '2017-12-20 11:24:20');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Copiando estrutura para tabela laravel_api_2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela laravel_api_2.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Anderson', 'ander-reis@hotmail.com', '$2y$10$nBGlhx7VDv.wYa2QcHEtbOLEtyDuC7jRlgsV4lpvLuTVnkgRLeh0O', 'WcFJccrKkf4fQbYJ1OZYRIfFUaPaeS7uIvo5qaMgJohBR4AobeJfkNWfqQIV', '2017-12-20 11:00:46', '2017-12-20 11:00:46'),
	(2, 'Anderson 2', 'andersonareis2004@gmail.com', '$2y$10$K8XDAXGSDNwxnu85jl5Q4uoB4TbMuEXDjQl2jECU0YAfgmrEBKo4W', NULL, '2017-12-20 11:04:46', '2017-12-20 11:04:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
