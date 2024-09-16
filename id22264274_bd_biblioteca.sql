-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 31-Jul-2024 às 13:41
-- Versão do servidor: 10.5.20-MariaDB
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id22264274_bd_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Alunos`
--

CREATE TABLE `Alunos` (
  `Numero` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Morada` varchar(255) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Alunos_Disciplinas`
--

CREATE TABLE `Alunos_Disciplinas` (
  `Numero` int(11) NOT NULL,
  `CodD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `Autor_ID` int(11) NOT NULL,
  `Primeiro_Nome` varchar(100) NOT NULL,
  `Ultimo_Nome` varchar(100) NOT NULL,
  `Data_aniversario` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Cursos`
--

CREATE TABLE `Cursos` (
  `CodC` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Duracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Disciplinas`
--

CREATE TABLE `Disciplinas` (
  `CodD` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Objectivos` text DEFAULT NULL,
  `HorasT` int(11) DEFAULT NULL,
  `HorasP` int(11) DEFAULT NULL,
  `Codg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Docentes`
--

CREATE TABLE `Docentes` (
  `CodDoc` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Depart` varchar(100) DEFAULT NULL,
  `Morada` varchar(255) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Docentes_Disciplinas`
--

CREATE TABLE `Docentes_Disciplinas` (
  `CodDoc` int(11) NOT NULL,
  `CodD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Emprestimo`
--

CREATE TABLE `Emprestimo` (
  `Emprestimo_ID` int(11) NOT NULL,
  `Livro_ID` int(11) DEFAULT NULL,
  `Leitor_ID` int(11) DEFAULT NULL,
  `Data_Emp` date NOT NULL,
  `Data_Vencimento` date NOT NULL,
  `Data_Entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Leitor`
--

CREATE TABLE `Leitor` (
  `Leitor_ID` int(11) NOT NULL,
  `Primeiro_nome` varchar(100) NOT NULL,
  `Ultimo_nome` varchar(100) NOT NULL,
  `Data_Aniversario` date DEFAULT NULL,
  `Morada` varchar(255) DEFAULT NULL,
  `Telemovel` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Livro`
--

CREATE TABLE `Livro` (
  `Livro_ID` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Genero` varchar(100) DEFAULT NULL,
  `Ano_Publicacao` int(11) DEFAULT NULL,
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro1`
--

CREATE TABLE `livro1` (
  `isbn` varchar(13) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL DEFAULT 'autor desconhecido',
  `n_paginas` int(11) NOT NULL,
  `editora` varchar(50) NOT NULL DEFAULT 'editora desconhecida',
  `tamanho` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `livro1`
--

INSERT INTO `livro1` (`isbn`, `titulo`, `autor`, `n_paginas`, `editora`, `tamanho`) VALUES
('9788551002', 'Ainda sou eu', 'Jojo Moyes', 401, 'Intríseca', '653 KB'),
('9788551005', 'A caminho da liberdade', 'Jojo Moyes', 405, 'Intríseca', '653 KB'),
('9788551010', 'Hora de acorda ', 'Jana Bianchi', 256, 'Intríseca', '253 KB'),
('9788551025', 'Einstein', 'Walter Isaacson', 656, 'Intríseca', '283 KB'),
('978855141', 'Em busca de abrigo', 'Jojo Moyes', 400, 'Intríseca', '653 KB'),
('9788580573', 'Como eu era antes de você ', 'Jojo Moyes', 320, 'Intríseca', '653 KB');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Pedidos`
--

CREATE TABLE `Pedidos` (
  `PedidoID` int(11) NOT NULL,
  `ClienteID` int(11) DEFAULT NULL,
  `DataDoPedido` date DEFAULT NULL,
  `ValorTotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Pedidos`
--

INSERT INTO `Pedidos` (`PedidoID`, `ClienteID`, `DataDoPedido`, `ValorTotal`) VALUES
(1, 1, '2024-07-05', 180.00),
(3, 1, '2024-07-07', 250.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_artigo`
--

CREATE TABLE `t_artigo` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `subcat` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `estado` int(11) NOT NULL,
  `foto1` varchar(50) NOT NULL,
  `foto2` varchar(50) DEFAULT NULL,
  `foto3` varchar(50) DEFAULT NULL,
  `vendido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_artigo`
--

INSERT INTO `t_artigo` (`id`, `id_user`, `cat`, `subcat`, `titulo`, `descricao`, `preco`, `estado`, `foto1`, `foto2`, `foto3`, `vendido`) VALUES
(1, 4, 1, 1, 'Mercedes g63', '777', 2000000, 5, 'META.png', NULL, NULL, 0),
(4, 3, 3, 6, 'Carrinho de bebe ', 'Para crianças recém-nascidas até 15 Kg\r\nEncosto reclinável em 4 posições\r\nCapota regulável e removível\r\nCinto de segurança de 5 pontos\r\nProtetor frontal', 190, 1, 'CARRINHO.jpg', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_art_comen`
--

CREATE TABLE `t_art_comen` (
  `id` int(11) NOT NULL,
  `id_artigo` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `avaliação` int(11) NOT NULL,
  `data` varchar(50) NOT NULL,
  `publico` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_art_comen`
--

INSERT INTO `t_art_comen` (`id`, `id_artigo`, `comentario`, `avaliação`, `data`, `publico`, `id_user`) VALUES
(1, 1, 'este carro ta muito caro ', 1, '17:28:13pm', 0, 4),
(2, 4, 'quero comprar', 5, '14:22:56pm', 1, 2),
(3, 1, 'quero comprar', 4, '14:23:54pm', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_art_comen_v`
--

CREATE TABLE `t_art_comen_v` (
  `id` int(11) NOT NULL,
  `id_comen` int(11) NOT NULL,
  `resposta` varchar(255) NOT NULL,
  `data` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_categoria`
--

CREATE TABLE `t_categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_categoria`
--

INSERT INTO `t_categoria` (`id`, `categoria`) VALUES
(1, 'Veiculos'),
(2, 'Imóveis'),
(3, 'Bebé e criança'),
(4, 'Lazer');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_subcat`
--

CREATE TABLE `t_subcat` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `subcat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_subcat`
--

INSERT INTO `t_subcat` (`id`, `categoria`, `subcat`) VALUES
(1, 1, '4x4'),
(2, 1, 'motocicletas'),
(3, 1, 'bikes'),
(4, 2, 'Apartamentos'),
(5, 2, 'Casas'),
(6, 3, 'Briquedos'),
(7, 3, 'Roupas'),
(8, 1, 'SUV'),
(9, 2, 'Quartos'),
(10, 4, 'Jogos'),
(11, 4, 'Livros '),
(12, 2, 'Terrenos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `t_user2`
--

CREATE TABLE `t_user2` (
  `id` int(11) NOT NULL,
  `nick` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `data_nasc` varchar(10) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `apagado` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `t_user2`
--

INSERT INTO `t_user2` (`id`, `nick`, `nome`, `email`, `data_nasc`, `pass`, `foto`, `apagado`) VALUES
(2, 'maria joana ', 'maria joana', 'maria@joana.com', '1999-03-20', '$2y$10$cPZnsL9EJ.5dpnOSP141/uTZ/xCUg88bJc4eVyewMVxkAYpq.61rC', 'avatar (1).jpg', 0),
(3, 'mariafelipa', 'maria felipa', 'maria@felipa.com', '1999-05-20', '$2y$10$O3crIWZJtgYOYswoaVLVFeE3/LULPI4JhYhpdbA7VKvfQEc8N87.2', 'avatar.jpg', 0),
(4, 'gigihadid', 'gigi hadid', 'gigi@gmail.com', '2003-02-03', '$2y$10$QoE99GlBlri.vUnYyIgTHurBMEG7ax4R85OX85FaQRlcWe/bFypky', 'Gigi-Hadid-qui-sont-les-hommes-de-sa-vie.jpg', 0),
(7, 'mariaadelaide', 'Maria Adelaide', 'maria@adelaide', '06/06/1993', '123456', '', 0),
(8, 'mariagabriela', 'Maria Gabriela', 'maria@gabriela', '06/06/1999', '123456', '', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Alunos`
--
ALTER TABLE `Alunos`
  ADD PRIMARY KEY (`Numero`);

--
-- Índices para tabela `Alunos_Disciplinas`
--
ALTER TABLE `Alunos_Disciplinas`
  ADD PRIMARY KEY (`Numero`,`CodD`),
  ADD KEY `CodD` (`CodD`);

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Autor_ID`);

--
-- Índices para tabela `Cursos`
--
ALTER TABLE `Cursos`
  ADD PRIMARY KEY (`CodC`);

--
-- Índices para tabela `Disciplinas`
--
ALTER TABLE `Disciplinas`
  ADD PRIMARY KEY (`CodD`);

--
-- Índices para tabela `Docentes`
--
ALTER TABLE `Docentes`
  ADD PRIMARY KEY (`CodDoc`);

--
-- Índices para tabela `Docentes_Disciplinas`
--
ALTER TABLE `Docentes_Disciplinas`
  ADD PRIMARY KEY (`CodDoc`,`CodD`),
  ADD KEY `CodD` (`CodD`);

--
-- Índices para tabela `Emprestimo`
--
ALTER TABLE `Emprestimo`
  ADD PRIMARY KEY (`Emprestimo_ID`),
  ADD KEY `Livro_ID` (`Livro_ID`),
  ADD KEY `Leitor_ID` (`Leitor_ID`);

--
-- Índices para tabela `Leitor`
--
ALTER TABLE `Leitor`
  ADD PRIMARY KEY (`Leitor_ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices para tabela `Livro`
--
ALTER TABLE `Livro`
  ADD PRIMARY KEY (`Livro_ID`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Índices para tabela `livro1`
--
ALTER TABLE `livro1`
  ADD PRIMARY KEY (`isbn`);

--
-- Índices para tabela `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`PedidoID`),
  ADD KEY `ClienteID` (`ClienteID`);

--
-- Índices para tabela `t_artigo`
--
ALTER TABLE `t_artigo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `t_art_comen`
--
ALTER TABLE `t_art_comen`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `t_art_comen_v`
--
ALTER TABLE `t_art_comen_v`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `t_categoria`
--
ALTER TABLE `t_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `t_subcat`
--
ALTER TABLE `t_subcat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `t_user2`
--
ALTER TABLE `t_user2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `Autor_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Emprestimo`
--
ALTER TABLE `Emprestimo`
  MODIFY `Emprestimo_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Leitor`
--
ALTER TABLE `Leitor`
  MODIFY `Leitor_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Livro`
--
ALTER TABLE `Livro`
  MODIFY `Livro_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `PedidoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `t_artigo`
--
ALTER TABLE `t_artigo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `t_art_comen`
--
ALTER TABLE `t_art_comen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `t_art_comen_v`
--
ALTER TABLE `t_art_comen_v`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `t_categoria`
--
ALTER TABLE `t_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `t_subcat`
--
ALTER TABLE `t_subcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `t_user2`
--
ALTER TABLE `t_user2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `Alunos_Disciplinas`
--
ALTER TABLE `Alunos_Disciplinas`
  ADD CONSTRAINT `Alunos_Disciplinas_ibfk_1` FOREIGN KEY (`Numero`) REFERENCES `Alunos` (`Numero`),
  ADD CONSTRAINT `Alunos_Disciplinas_ibfk_2` FOREIGN KEY (`CodD`) REFERENCES `Disciplinas` (`CodD`);

--
-- Limitadores para a tabela `Docentes_Disciplinas`
--
ALTER TABLE `Docentes_Disciplinas`
  ADD CONSTRAINT `Docentes_Disciplinas_ibfk_1` FOREIGN KEY (`CodDoc`) REFERENCES `Docentes` (`CodDoc`),
  ADD CONSTRAINT `Docentes_Disciplinas_ibfk_2` FOREIGN KEY (`CodD`) REFERENCES `Disciplinas` (`CodD`);

--
-- Limitadores para a tabela `Emprestimo`
--
ALTER TABLE `Emprestimo`
  ADD CONSTRAINT `Emprestimo_ibfk_1` FOREIGN KEY (`Livro_ID`) REFERENCES `Livro2` (`Livro_ID`),
  ADD CONSTRAINT `Emprestimo_ibfk_2` FOREIGN KEY (`Leitor_ID`) REFERENCES `Leitor` (`Leitor_ID`);

--
-- Limitadores para a tabela `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `Clientes` (`ClienteID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
