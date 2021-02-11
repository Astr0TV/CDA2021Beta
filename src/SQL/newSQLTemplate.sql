-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 11 fév. 2021 à 22:15
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdbeta`
--

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

CREATE TABLE `person` (
  `idperson` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `sexe` varchar(45) DEFAULT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `poids` varchar(45) DEFAULT NULL,
  `taille` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dated1` date DEFAULT NULL,
  `contenu` varchar(45) DEFAULT NULL,
  `journalier` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `temp` varchar(45) DEFAULT NULL,
  `objectpoids` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`idperson`, `nom`, `prenom`, `sexe`, `mail`, `mdp`, `poids`, `taille`, `age`, `dated1`, `contenu`, `journalier`, `type`, `temp`, `objectpoids`) VALUES
(1, 'ISMAIL', 'Lam', 'Homme', 'ismail@esic.fr', '123', '60', '1.70', 20, NULL, '30 KG', '&', 'Marche', 'Minute', '2'),
(2, 'Ismail', '', 'F', '123@123.fr', '123', '20KG', '', 0, NULL, 'erfisnvi', NULL, NULL, NULL, NULL),
(3, 'smomo', 'smomo', 'F', 'smomo@esic.fr', '123', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'afif', 'afif', '', 'afif@esic.fr', '123', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'omar', 'omar', '', 'om@esic.fr', '123', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ss', 'ss', 'null', 'ss', 'ss', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ss', 'ss', 'null', 'esi@esic.fr', 'ss', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ss', 'ss', 'null', 'ffdgbdgg@esic.fr', 'ss', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ismail', 'lamssss', 'null', '1234@12.fr', '123', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'smomo', 'smok', NULL, 'smok@esic.fr', '123', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'test1', 'test1', NULL, 'test1', 'test1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'test2', 'test2', NULL, 'test2', 'test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'test3', 'test3', '', 'test3', 'test3', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'test5', 'test5', NULL, 'test5', 'test5', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'isma', 'isma', 'F', 'is@esic.fr', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'isma', 'isma', 'F', 'smai@esic.fr', '123', NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'omar', 'omar', NULL, 'aaa@esic.fr', '123', NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'ismail', 'lam', NULL, 'esic@esic.fr', '123', '20', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'momo', 'momo', 'F', '1@1.fr', '123', NULL, '1.70', 17, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'smomo', 'ismail', 'F', '12@12.fr', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'oma2', 'oma2', 'Homme', 'oma2@esic.fr', '123', '60KG', '1.80', 30, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'ismail', 'lam', 'Homme', '13@13.fr', '123', '60KG', '1.80', 20, NULL, 'Perdre 20 KG', '1', 'Marche', 'Minute', '14'),
(28, 'Ismail', 'Ismail', NULL, 'I@esic.Fr', '123', NULL, NULL, NULL, '2021-02-11', NULL, '0', 'Marche', 'Poids', '2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`idperson`),
  ADD UNIQUE KEY `mail_UNIQUE` (`mail`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `person`
--
ALTER TABLE `person`
  MODIFY `idperson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
