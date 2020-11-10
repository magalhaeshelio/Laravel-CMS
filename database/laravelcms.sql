-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Nov-2020 às 22:39
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravelcms`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `body`) VALUES
(2, 'Contactos', 'contactos', '<p><img src=\"../../../media/images/1605022671.png\" alt=\"\" width=\"124\" height=\"70\" /></p>'),
(4, 'Sobre mim', 'sobre-mim', '<p>adasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd aadasdasdasd asda dasdasd a</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `name`, `content`) VALUES
(1, 'title', 'Pizza Interessante'),
(2, 'subtitle', 'Criado pelo aluno'),
(3, 'email', 'contacto@site.com'),
(4, 'bgcolor', '#000080'),
(5, 'textcolor', '#ffffff');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`) VALUES
(1, 'Hélio Magalhães', 'magalhaes.helio@outlook.com', '$2y$10$eQcnOfJlPp8Z5Qzv0u8XAe4eVSAJP3dwvnHxm5u6L0qYdi8pv1iLO', 1, 'U3p6mAlHdTK3W4ahsUWraTCCq2SqI2bZP7mUuEs1vg2ftVG65BGKl75Y4G9D'),
(2, 'Ariadne Monteiro', 'crimilda.monteiro@gmail.com', '$2y$10$5/9IAmJr0bBgb2xIFbTWgOmDCBLlysf0S6jYqx1dQcyLBdFZUPp06', 0, NULL),
(4, 'Teste', 'contacto@site.com', '$2y$10$NVMiz4yXJEIVoOHykF/5o.MgVkkLrIOx7M/EFo55Zx10WclMO6xae', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date_access` datetime DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `date_access`, `page`) VALUES
(1, '1', '2020-08-10 20:03:44', '/'),
(2, '1', '2020-10-10 20:04:22', '/'),
(3, '1', '2020-11-10 20:04:30', '/'),
(4, '1', '2020-11-10 19:44:30', '/teste');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
