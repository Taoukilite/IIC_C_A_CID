-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Décembre 2016 à 00:42
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `uberisation`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `Num_tel` varchar(15) NOT NULL,
  `Adresse_mail` varchar(30) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `mot_de_passe` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Nom` (`Nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`Id`, `Nom`, `Prenom`, `Num_tel`, `Adresse_mail`, `Adresse`, `mot_de_passe`) VALUES
(1, 'Mendaci', 'Hichem', '0752151793', 'mendaci.hic@gmail.com', '121 rue de la paix 94170 le Perreux-Sur-Marne', '0752151793'),
(4, 'Siad', 'Youcef', '0665664186', 'youcef.siad@gmail.com', 'charboneux', '123456789'),
(5, 'Lounaci', 'Said', '0555552152', 'said.lounaci@gmail.com', '2 rue gerard philipe', 'gp742'),
(6, 'h', 'h', 'h', 'h', 'h', 'h'),
(7, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE IF NOT EXISTS `demande` (
  `id_demande` int(4) NOT NULL AUTO_INCREMENT,
  `id_client` int(4) NOT NULL,
  `nom_service` varchar(20) NOT NULL,
  PRIMARY KEY (`id_demande`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `demande`
--

INSERT INTO `demande` (`id_demande`, `id_client`, `nom_service`) VALUES
(1, 1, 'Pose d’un WC simple');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE IF NOT EXISTS `devis` (
  `id_devis` int(4) NOT NULL AUTO_INCREMENT,
  `id_service` int(4) NOT NULL,
  `montant` float NOT NULL,
  PRIMARY KEY (`id_devis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `devis`
--

INSERT INTO `devis` (`id_devis`, `id_service`, `montant`) VALUES
(1, 5, 100);

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE IF NOT EXISTS `professionnel` (
  `Id_pro` int(20) NOT NULL AUTO_INCREMENT,
  `Nom_pro` varchar(20) NOT NULL,
  `Num_tel_pro` varchar(15) NOT NULL,
  `Adresse_mailp` varchar(30) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_pro`),
  KEY `Nom_pro` (`Nom_pro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `professionnel`
--

INSERT INTO `professionnel` (`Id_pro`, `Nom_pro`, `Num_tel_pro`, `Adresse_mailp`, `Adresse`) VALUES
(1, 'Hic-menuiserie', '0752151793', 'mendaci.hic@gmail.com', 'AZAZGA'),
(2, 'hic_plomberie', '0752151793', 'mendaci.hic@gmail.com', '2 rue gerard philipe');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id_service` int(4) NOT NULL AUTO_INCREMENT,
  `id_pro` int(4) NOT NULL,
  `type_service` varchar(30) NOT NULL,
  `nom_service` varchar(20) NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`id_service`, `id_pro`, `type_service`, `nom_service`) VALUES
(1, 2, 'service', 'plomberie'),
(2, 5, 'service', 'Electricité');

-- --------------------------------------------------------

--
-- Structure de la table `tag_service`
--

CREATE TABLE IF NOT EXISTS `tag_service` (
  `id_tag` int(4) NOT NULL AUTO_INCREMENT,
  `id_service` int(4) NOT NULL,
  `nom_tagservice` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `tag_service`
--

INSERT INTO `tag_service` (`id_tag`, `id_service`, `nom_tagservice`) VALUES
(1, 1, 'Pose d’un robinet'),
(2, 1, 'changement des flexibles'),
(3, 1, 'Débouchage de baignoire'),
(4, 1, 'Fourniture et pose d’un WC simple'),
(5, 1, 'Pose d’un WC simple'),
(6, 2, 'Changement lampes'),
(7, 2, 'installation des prises');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
