-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Jan-2022 às 23:31
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `padaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_compra`
--

CREATE TABLE `tb_compra` (
  `ID` int(11) NOT NULL,
  `ID_ENDERECO` int(11) NOT NULL,
  `ID_PRODUTO` int(11) NOT NULL,
  `QTD` int(11) NOT NULL,
  `SUBTOTAL` decimal(10,2) NOT NULL,
  `STATUS_PEDIDO` varchar(50) DEFAULT NULL,
  `DATA_COMPRA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_compra`
--

INSERT INTO `tb_compra` (`ID`, `ID_ENDERECO`, `ID_PRODUTO`, `QTD`, `SUBTOTAL`, `STATUS_PEDIDO`, `DATA_COMPRA`) VALUES
(12, 2, 1, 1, '12.50', 'ABERTO', '2021-12-25 19:22:02'),
(13, 2, 7, 1, '12.50', 'ABERTO', '2021-12-25 19:22:02'),
(14, 2, 8, 4, '10.00', 'ABERTO', '2021-12-25 19:26:20'),
(15, 2, 9, 1, '25.00', 'A CAMINHO', '2021-12-25 19:29:52'),
(16, 3, 10, 1, '4.00', 'A CAMINHO', '2021-12-26 16:47:53'),
(17, 3, 8, 2, '5.00', 'A CAMINHO', '2021-12-26 16:47:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_endereco`
--

CREATE TABLE `tb_endereco` (
  `ID` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `CEP` varchar(20) NOT NULL,
  `CIDADE` varchar(50) NOT NULL,
  `ESTADO` varchar(2) NOT NULL,
  `BAIRRO` varchar(100) NOT NULL,
  `RUA` varchar(100) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `COMPLEMENTO` varchar(50) NOT NULL,
  `CREATED` datetime NOT NULL,
  `MODIFIED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_endereco`
--

INSERT INTO `tb_endereco` (`ID`, `ID_USER`, `CEP`, `CIDADE`, `ESTADO`, `BAIRRO`, `RUA`, `NUMERO`, `COMPLEMENTO`, `CREATED`, `MODIFIED`) VALUES
(1, 1, '18730-005', 'ITAÍ', 'SP', 'CENTRO', 'RUA PROFESSOR JOSÉ DE OLIVEIRA', 21, 'ESTABELECIMENTO', '2021-12-24 21:23:29', NULL),
(2, 2, '18730-009', 'Itaí', 'SP', 'Centro', 'Rua Salustiano Soares de Oliveira', 87, 'CASA', '2021-12-24 22:08:15', '2021-12-26 16:43:28'),
(3, 3, '18730-015', 'Itaí', 'SP', 'Centro', 'Rua Nove de Julho', 120, 'CASA', '2021-12-25 16:47:56', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `ID` int(11) NOT NULL,
  `IMG` varchar(50) NOT NULL,
  `CATEG` varchar(50) NOT NULL,
  `NOME_PROD` varchar(50) NOT NULL,
  `DESCRICAO` varchar(220) NOT NULL,
  `PRECO` decimal(10,2) NOT NULL,
  `CREATED` datetime NOT NULL,
  `MODIFIED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`ID`, `IMG`, `CATEG`, `NOME_PROD`, `DESCRICAO`, `PRECO`, `CREATED`, `MODIFIED`) VALUES
(1, '7eb1e4e1ad68f76f98adca3f1da86f87.png', 'PAES', 'Pão Simples', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus, quaerat dignissimos. Accusantium nisi quod dolores, facere voluptate ducimus ipsum libero sit, beatae ipsam, ut in. Laboriosam ducimus earum rem qui', '12.50', '2021-12-24 22:36:29', '2021-12-25 15:11:36'),
(7, '6518922bade80e10cb648f520e4afb37.png', 'PAES', 'Pão Francês (10U)', 'Um tipo de pão que é Francês', '12.50', '2021-12-25 00:14:45', '2021-12-26 16:59:31'),
(8, '849b8e207fb6be8554c9dc3711325f8f.png', 'BEBIDAS', 'Sprite (350ml)', 'Um refrigerante que irá acabar com sua vida lentamente. Saboreie e aproveite um lindo sabor! :)', '2.50', '2021-12-25 15:13:31', NULL),
(9, '0e77f5e360a85e8c1c843029c6076613.png', 'BOLO_TORTA', 'Bolo de Chocolate', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus, quaerat dignissimos. Accusantium nisi quod dolores, facere voluptate ducimus ipsum libero sit, beatae ipsam, ut in. Laboriosam ducimus earum rem qui', '25.00', '2021-12-25 15:22:06', NULL),
(10, '411e66a69346f14ceae23c4f0d71479d.png', 'SALGADOS', 'Empada de Frango', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus, quaerat dignissimos. Accusantium nisi quod dolores, facere voluptate ducimus ipsum libero sit, beatae ipsam, ut in. Laboriosam ducimus earum rem qui', '4.00', '2021-12-25 15:22:28', NULL),
(11, '3917b10d1e92bf666ceb9154a39e8c58.png', 'PAES', 'Pão Doce com Frutas', 'Um lindo Pãozinho doce Com frutas. Uma belezura. Recomendado por todos da Monamour', '8.50', '2021-12-26 16:55:54', NULL),
(12, '15f82088c2bbfe2a79fffaca2622a587.png', 'BOLO_TORTA', 'Bolo KitKat (completo)', 'Um bolinho KitKat dos Bons, vários e vários MMS no topo. Uma belezura', '30.00', '2021-12-26 16:57:07', NULL),
(13, '295ddde05d3e8bfdc0c5b929daec1360.png', 'SALGADOS', 'Esfiha de Frango Aberta', 'Uma esfiha bem bonitinha. Franguinho e milho show :)', '3.50', '2021-12-26 16:59:06', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_user`
--

CREATE TABLE `tb_user` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(220) NOT NULL,
  `SOBRENOME` varchar(220) NOT NULL,
  `EMAIL` varchar(220) NOT NULL,
  `DATANASC` date NOT NULL,
  `SENHA` varchar(220) NOT NULL,
  `CREATED` datetime NOT NULL,
  `MODIFIED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_user`
--

INSERT INTO `tb_user` (`ID`, `NOME`, `SOBRENOME`, `EMAIL`, `DATANASC`, `SENHA`, `CREATED`, `MODIFIED`) VALUES
(1, 'ADMIN', 'ADMIN111', 'monamourpadaria@gmail.com', '1999-01-01', '3f7caa3d471688b704b73e9a77b1107f', '2021-12-24 21:18:53', NULL),
(2, 'claudio', 'pereira', 'pereiraclaudio123@gmail.com', '1995-02-01', '14af0fd9322ea4a8815d86f0aa13c566', '2021-12-24 22:08:00', NULL),
(3, 'claudio', 'oliveira', 'claudiooliveira002@gmail.com', '1995-04-01', 'd3a3881c252dc21a141084bf52fa446b', '2021-12-25 16:47:40', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_compra`
--
ALTER TABLE `tb_compra`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_ENDERECO` (`ID_ENDERECO`),
  ADD KEY `ID_PRODUTO` (`ID_PRODUTO`);

--
-- Índices para tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Índices para tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_compra`
--
ALTER TABLE `tb_compra`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_compra`
--
ALTER TABLE `tb_compra`
  ADD CONSTRAINT `tb_compra_ibfk_1` FOREIGN KEY (`ID_ENDERECO`) REFERENCES `tb_endereco` (`ID`),
  ADD CONSTRAINT `tb_compra_ibfk_2` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `tb_produtos` (`ID`);

--
-- Limitadores para a tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD CONSTRAINT `tb_endereco_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `tb_user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
