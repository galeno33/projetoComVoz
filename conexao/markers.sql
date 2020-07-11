-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 01-Jun-2019 às 13:10
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lojas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `markers`
--

DROP TABLE IF EXISTS `markers`;
CREATE TABLE IF NOT EXISTS `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(5, 'Produtos Naturais Muniz', 'Av. dos Holandeses, Quadra 07 - Loja 02 - Calhau, Sao Luis - MA, 65075-380', -2.492076, -44.270535, 'Zero Gluten'),
(6, 'Ilha Verde Produtos Naturais', 'Av. dos Holandeses, 1500 - Loja 01, Olho Dagua, Sao Luis - MA, 65065-180', -2.490975, -44.234795, 'Zero Gluten'),
(4, 'Natureba', 'Av. Litoranea - Calhau, Sao Luis - MA, 65071-377', -2.483655, -44.252445, 'Zero Gluten'),
(2, 'Natubel Produtos Naturais', 'R. das Flores, 103 - Centro, Sao Luis - MA, 65010-230', -2.528142, -44.299488, 'Zero Lactose'),
(3, 'Mundo Verde', 'Av. Sao Luis Rei de Franca, 8 - Turu, Sao Luis - MA, 65065-470', -2.531625, -44.225002, 'Zero Lactose'),
(1, 'Lactose Zero', 'Av. Daniel de la Touche, 500 - Cohajap, Sao Luis - MA, 65072-455', -2.502499, -44.240166, 'Zero Lactose');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
