-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Jun-2021 às 21:48
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aw2bio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clicks`
--

CREATE TABLE `clicks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_link` int(11) NOT NULL,
  `click_date` date NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_page` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_border_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `links`
--

INSERT INTO `links` (`id`, `id_page`, `status`, `order`, `title`, `href`, `op_bg_color`, `op_text_color`, `op_border_type`) VALUES
(1, 1, 1, 2, 'Facebook', 'https:facebook.com/awregulagens.com.br', '#0000FF', '#FFFFFF', 'rounded'),
(2, 1, 1, 1, 'Youtube', 'https://youtube.com/awregulagens.com.br', '#FF0000', '#FFFFFF', 'rounded'),
(3, 1, 1, 0, 'Site Pessoal 2', 'https://www.google.com.br', '#ff4d00', '#000000', 'rounded'),
(4, 2, 1, 0, 'Facebook', 'https:facebook.com/awregulagens.com.br', '#0000FF', '#FFFFFF', 'rounded'),
(5, 2, 1, 1, 'Youtube', 'https://youtube.com/awregulagens.com.br', '#FF0000', '#FFFFFF', 'rounded'),
(6, 2, 1, 2, 'Pessoal', 'https:www.google.com.br', '#00FF00', '#000000', 'rounded');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_06_04_124016_create_all_tables', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `op_font_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `op_bg_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'color',
  `op_bg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `op_profile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `op_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `op_fb_pixel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `id_user`, `slug`, `op_font_color`, `op_bg_type`, `op_bg_value`, `op_profile_image`, `op_title`, `op_description`, `op_fb_pixel`) VALUES
(1, 1, 'carlos', '#000000', 'color', '#9448BC,#480355', 'default.png', 'Carlos Alberto', 'Alguma descrição qualquer', '12345'),
(2, 1, 'Joãozinho', '#FFFFFF', 'color', '#000000', 'default.png', 'Joãozinho', 'Descrição da página de Joãozinho', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'carlos@gmail.com', '$2y$10$4GkJgp89R6KrL4dTaJTYA.KV4T43FR0mifu8GZESieRr0kJIuu1Ei'),
(2, 'carlos2@gmail.com', '$2y$10$4GkJgp89R6KrL4dTaJTYA.KV4T43FR0mifu8GZESieRr0kJIuu1Ei');

-- --------------------------------------------------------

--
-- Estrutura da tabela `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_page` int(11) NOT NULL,
  `view_date` date NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `views`
--

INSERT INTO `views` (`id`, `id_page`, `view_date`, `total`) VALUES
(1, 1, '2021-06-07', 25),
(2, 2, '2021-06-07', 6),
(3, 1, '2021-06-08', 63);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clicks`
--
ALTER TABLE `clicks`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clicks`
--
ALTER TABLE `clicks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
