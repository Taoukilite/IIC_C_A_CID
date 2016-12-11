-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2016 at 12:29 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uberisation`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Id`, `Nom`, `Prenom`, `Num_tel`, `Adresse_mail`, `Adresse`, `mot_de_passe`) VALUES
(1, 'Mendaci', 'Hichem', '0752151793', 'mendaci.hic@gmail.com', '121 rue de la paix 94170 le Perreux-Sur-Marne', '0752151793'),
(4, 'Siad', 'Youcef', '0665664186', 'youcef.siad@gmail.com', 'charboneux', '123456789'),
(5, 'Lounaci', 'Said', '0555552152', 'said.lounaci@gmail.com', '2 rue gerard philipe', 'gp742'),
(6, 'h', 'h', 'h', 'h', 'h', 'h'),
(7, '', '', '', '', '', ''),
(8, 'Delimi', 'Yacine', '0521242145', 'yacined@gmail.com', 'CSC', 'kkk');

-- --------------------------------------------------------

--
-- Table structure for table `demande`
--

CREATE TABLE IF NOT EXISTS `demande` (
  `id_demande` int(4) NOT NULL AUTO_INCREMENT,
  `id_client` int(4) NOT NULL,
  `nom_service` varchar(20) NOT NULL,
  `Date_demande` varchar(20) NOT NULL,
  `Lieu` varchar(50) NOT NULL,
  PRIMARY KEY (`id_demande`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `demande`
--

INSERT INTO `demande` (`id_demande`, `id_client`, `nom_service`, `Date_demande`, `Lieu`) VALUES
(1, 1, 'Pose d’un WC simple', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `devis`
--

CREATE TABLE IF NOT EXISTS `devis` (
  `id_devis` int(4) NOT NULL AUTO_INCREMENT,
  `id_tag` int(4) NOT NULL,
  `montant` float NOT NULL,
  PRIMARY KEY (`id_devis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `devis`
--

INSERT INTO `devis` (`id_devis`, `id_tag`, `montant`) VALUES
(2, 1, 20),
(3, 2, 20),
(4, 3, 100),
(5, 4, 200),
(6, 5, 150);

-- --------------------------------------------------------

--
-- Table structure for table `professionnel`
--

CREATE TABLE IF NOT EXISTS `professionnel` (
  `Id_pro` int(20) NOT NULL AUTO_INCREMENT,
  `Nom_pro` varchar(20) NOT NULL,
  `Num_tel_pro` varchar(15) NOT NULL,
  `Adresse_mailp` varchar(30) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_pro`),
  KEY `Nom_pro` (`Nom_pro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `professionnel`
--

INSERT INTO `professionnel` (`Id_pro`, `Nom_pro`, `Num_tel_pro`, `Adresse_mailp`, `Adresse`) VALUES
(1, 'Hichem', '0752151793', 'mendaci.hic@gmail.com', 'AZAZGA'),
(2, 'yacine', '0752151793', 'mendaci.hic@gmail.com', '2 rue gerard philipe'),
(3, 'richard', '0752151793', 'mendaci.hic@gmail.com', '121 rue de la paix 94170 le Perreux-Sur-Marne');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id_service` int(4) NOT NULL AUTO_INCREMENT,
  `id_pro` int(4) NOT NULL,
  `type_service` varchar(30) NOT NULL,
  `nom_service` varchar(20) NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `id_pro`, `type_service`, `nom_service`) VALUES
(1, 2, 'service', 'plomberie'),
(2, 3, 'service', 'mecanique automobile');

-- --------------------------------------------------------

--
-- Table structure for table `tag_service`
--

CREATE TABLE IF NOT EXISTS `tag_service` (
  `id_tag` int(4) NOT NULL AUTO_INCREMENT,
  `id_service` int(4) NOT NULL,
  `nom_tagservice` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tag_service`
--

INSERT INTO `tag_service` (`id_tag`, `id_service`, `nom_tagservice`) VALUES
(1, 1, 'Pose d’un robinet'),
(2, 1, 'changement des flexibles'),
(3, 1, 'Débouchage de baignoire'),
(4, 1, 'Fourniture et pose d’un WC simple'),
(5, 1, 'Pose d’un WC simple'),
(6, 2, 'freinage'),
(7, 2, 'boite à vitesse'),
(8, 2, 'moteur'),
(9, 2, 'parallélisme et equilibrage');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
