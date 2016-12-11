-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 11 Décembre 2016 à 22:10
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `my_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `phpc_calendars`
--

CREATE TABLE `phpc_calendars` (
  `cid` int(11) UNSIGNED NOT NULL,
  `hours_24` tinyint(1) NOT NULL DEFAULT '0',
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `week_start` tinyint(1) NOT NULL DEFAULT '0',
  `subject_max` smallint(5) UNSIGNED NOT NULL DEFAULT '50',
  `events_max` tinyint(4) UNSIGNED NOT NULL DEFAULT '8',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PHP-Calendar',
  `anon_permission` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_calendars`
--

INSERT INTO `phpc_calendars` (`cid`, `hours_24`, `date_format`, `week_start`, `subject_max`, `events_max`, `title`, `anon_permission`, `timezone`, `language`, `theme`) VALUES
(1, 1, 2, 1, 50, 8, 'Tyrell Corporation', 0, 'Europe/Paris', 'fr', 'humanity');

-- --------------------------------------------------------

--
-- Structure de la table `phpc_categories`
--

CREATE TABLE `phpc_categories` (
  `catid` int(11) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_categories`
--

INSERT INTO `phpc_categories` (`catid`, `cid`, `gid`, `name`, `text_color`, `bg_color`) VALUES
(2, 1, 7, 'Gareth', '#123a12', '#d4ffaa'),
(3, 1, 9, 'Kaim', '#00bf00', '#d4ffaa'),
(4, 1, 6, 'Marc', '#233d09', '#d4ffaa');

-- --------------------------------------------------------

--
-- Structure de la table `phpc_events`
--

CREATE TABLE `phpc_events` (
  `eid` int(11) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL,
  `owner` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `catid` int(11) UNSIGNED DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_events`
--

INSERT INTO `phpc_events` (`eid`, `cid`, `owner`, `subject`, `description`, `readonly`, `catid`, `ctime`, `mtime`) VALUES
(24, 1, 7, 'Temps libre', '', 0, 2, '2016-12-09 16:27:13', NULL),
(25, 1, 4, 'Temps Libre', '', 0, 4, '2016-12-09 16:29:22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `phpc_groups`
--

CREATE TABLE `phpc_groups` (
  `gid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_groups`
--

INSERT INTO `phpc_groups` (`gid`, `cid`, `name`) VALUES
(9, 1, 'Karim'),
(8, 1, 'Sergio'),
(7, 1, 'Gareth'),
(6, 1, 'Marc');

-- --------------------------------------------------------

--
-- Structure de la table `phpc_logins`
--

CREATE TABLE `phpc_logins` (
  `uid` int(11) UNSIGNED NOT NULL,
  `series` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `token` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `atime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_logins`
--

INSERT INTO `phpc_logins` (`uid`, `series`, `token`, `atime`) VALUES
(1, 'jbP1jeKSqYjuVUSE0Pf_usxnzJ2O-8iBW_c36g7ss10', 'loNLWM9C49D-wQTGrgsX_edq4F5fmLY2AITDvPOm7q8', '2016-12-06 10:54:49'),
(1, 'KpzL7dPjeHpC6lrwHi1h47lXwoRUDH3XlkDbjQhH5EE', 'r2-r3enL1YvGYIr4cjEseCipgXtooH6u2EOogdIngh4', '2016-12-09 12:55:48'),
(1, 'xf6T6mmoVylhKzR50_CFYBStwmFipAXPObyva8WZOb4', 'xf6T6mmoVylhKzR50_CFYBStwmFipAXPObyva8WZOb4', '2016-12-09 11:59:35'),
(1, 'zfBLcTLXCoLvh4VYntju6sCOpd8jkINrWUHZrdb0cRo', 'bEkKDp4ceabC2ykQTQ_erHDxmC3YLJb_SxB-9zrAe3Q', '2016-12-09 15:26:32'),
(1, '0SM0BE11vUS9AraPk5xU2w8l87o4uF-j7XWoW9DmM74', '0SM0BE11vUS9AraPk5xU2w8l87o4uF-j7XWoW9DmM74', '2016-12-09 15:33:05'),
(3, '3TIInIuba-wULKtjOHoXc21tJzqou7u9sQkN_Acm4rg', '3TIInIuba-wULKtjOHoXc21tJzqou7u9sQkN_Acm4rg', '2016-12-09 15:34:34'),
(1, 'Ar9bTlw7VI70Gj3M-gzZV_iJqJMWhFxbpqu4JJiC7xA', 'Ar9bTlw7VI70Gj3M-gzZV_iJqJMWhFxbpqu4JJiC7xA', '2016-12-09 15:35:04'),
(1, '3LhyRIwCGEHN2OxdrySHrvQVfOfMO-CC4pwVYadmafc', '3LhyRIwCGEHN2OxdrySHrvQVfOfMO-CC4pwVYadmafc', '2016-12-09 15:43:30'),
(6, 'vuMMGjJ0EaoVbSgoRwtfNKsdl6JpCilWok-u9bmk4QA', 'vuMMGjJ0EaoVbSgoRwtfNKsdl6JpCilWok-u9bmk4QA', '2016-12-09 15:52:06'),
(1, 'KZFhFL11wxONH60XZXHOmMVA_VuZeyQxpfs7B90txSk', 'KZFhFL11wxONH60XZXHOmMVA_VuZeyQxpfs7B90txSk', '2016-12-09 15:52:25'),
(6, '-tqE0Sd0ZmGMlxs4ehZU_N8LVljre314mmhKdXigiXg', '-tqE0Sd0ZmGMlxs4ehZU_N8LVljre314mmhKdXigiXg', '2016-12-09 15:53:07'),
(5, 'BJUxWkVxJC0QAaAr_Em3-j-e_gcv47eseugbH1gZZoI', 'BJUxWkVxJC0QAaAr_Em3-j-e_gcv47eseugbH1gZZoI', '2016-12-09 15:59:38'),
(1, 'Qx7AX8gEN9N3GaoBrQOe0P_3RmcV0XZahRJ1MHSCgGA', 'Qx7AX8gEN9N3GaoBrQOe0P_3RmcV0XZahRJ1MHSCgGA', '2016-12-09 16:00:12'),
(4, 'DGNQO_H02sBx20yhVJ763wyEGlM9lB4NUltPd4S5aZU', 'DGNQO_H02sBx20yhVJ763wyEGlM9lB4NUltPd4S5aZU', '2016-12-09 16:03:21'),
(6, 'TCtV9lRqV_rZuJp0-iGkMZ2ET5a58bKJM9l7A4lxCHk', 'TCtV9lRqV_rZuJp0-iGkMZ2ET5a58bKJM9l7A4lxCHk', '2016-12-09 16:03:47'),
(1, 'Eg9u2Q99yN1dmGHkpp-PV1hn0Fhm9G4e0za2rfuczRo', 'Eg9u2Q99yN1dmGHkpp-PV1hn0Fhm9G4e0za2rfuczRo', '2016-12-09 16:04:21'),
(6, 'DfyAnFHG0n4kyZkq6VF2sFqD-fhS800xqwcJjFV6Yqg', 'DfyAnFHG0n4kyZkq6VF2sFqD-fhS800xqwcJjFV6Yqg', '2016-12-09 16:04:31'),
(1, 'QauvfwHJ60NQAzo5oxkQQ596TZfByofU2lc6ZrImdSE', 'QauvfwHJ60NQAzo5oxkQQ596TZfByofU2lc6ZrImdSE', '2016-12-09 16:04:57'),
(6, 'UsBUeT9PvlyFErr8WEPaCQhkQmsvvXiszfT6O6Xv97w', 'UsBUeT9PvlyFErr8WEPaCQhkQmsvvXiszfT6O6Xv97w', '2016-12-09 16:05:36'),
(6, 'EMQ8nVWRAVwbp6cKfRMY3fcgrRIUnqatxgbLXiqt99A', 'EMQ8nVWRAVwbp6cKfRMY3fcgrRIUnqatxgbLXiqt99A', '2016-12-09 16:06:23'),
(4, 'TgZk-TeemsPqjFIsQ2v2b6LYAdYdXJsc_yn8AkBqMQg', 'TgZk-TeemsPqjFIsQ2v2b6LYAdYdXJsc_yn8AkBqMQg', '2016-12-09 16:07:33'),
(6, 'NfAPMBqW7AqDwZ5wCVLSNtulqeUWR9Zqb6xFxDX4uQA', 'NfAPMBqW7AqDwZ5wCVLSNtulqeUWR9Zqb6xFxDX4uQA', '2016-12-09 16:08:45'),
(4, 'W_gX82Ok1tYYtRZmAe9CjyGVkoIg-F_XMJgngT17OoY', 'W_gX82Ok1tYYtRZmAe9CjyGVkoIg-F_XMJgngT17OoY', '2016-12-09 16:09:34'),
(1, '8bsYgABLXV0ds7VSRiTsk0pBDjGMVCHbvVgv_KEhWuc', '8bsYgABLXV0ds7VSRiTsk0pBDjGMVCHbvVgv_KEhWuc', '2016-12-09 16:09:59'),
(7, 'NS5e5SXDWtIrnN3QznYtdzOOTAjzOEt7S1aHdDm9Ljs', 'NS5e5SXDWtIrnN3QznYtdzOOTAjzOEt7S1aHdDm9Ljs', '2016-12-09 16:11:08'),
(1, 'GiTvhn_ekRsc9b3Y0_9lpT63Jj8r7bc2PYDXbuHbeCM', 'GiTvhn_ekRsc9b3Y0_9lpT63Jj8r7bc2PYDXbuHbeCM', '2016-12-09 16:11:21'),
(6, 'xdHk-qWRSYjRBujxDVHeI4Cm-7qQgSKoVTZEZNUtGcw', 'xdHk-qWRSYjRBujxDVHeI4Cm-7qQgSKoVTZEZNUtGcw', '2016-12-09 16:26:38'),
(7, 'QspC6WgVjGuewMePfs8eGIGzx_fzQl19xfVbH-32Ud8', 'QspC6WgVjGuewMePfs8eGIGzx_fzQl19xfVbH-32Ud8', '2016-12-09 16:26:55'),
(1, '3MWcNx-Z7HPmN8HsVsEgtTAyz14USsGEPOIaL1puf7s', '3MWcNx-Z7HPmN8HsVsEgtTAyz14USsGEPOIaL1puf7s', '2016-12-09 16:27:34'),
(7, 'AihNMMEfLEeOEF5EGj6Z8k7CcEPt0tzqVD4RY8MIccY', 'AihNMMEfLEeOEF5EGj6Z8k7CcEPt0tzqVD4RY8MIccY', '2016-12-09 16:28:19'),
(1, '1NbBMVN6oD1a3-NcW3PBasjrYpGAWFG6MqKA3SFa4-Y', '1NbBMVN6oD1a3-NcW3PBasjrYpGAWFG6MqKA3SFa4-Y', '2016-12-09 16:28:30'),
(4, 's2ll2oFGGAc9m5Mawz4ztk2J5WKJ8kAmqQADbromCsc', 's2ll2oFGGAc9m5Mawz4ztk2J5WKJ8kAmqQADbromCsc', '2016-12-09 16:29:05'),
(7, 'zxONbNRRuOKq5uBeL00SiTfbxBEPsctucwe3B4nnEMo', 'zxONbNRRuOKq5uBeL00SiTfbxBEPsctucwe3B4nnEMo', '2016-12-09 16:29:37');

-- --------------------------------------------------------

--
-- Structure de la table `phpc_occurrences`
--

CREATE TABLE `phpc_occurrences` (
  `oid` int(11) UNSIGNED NOT NULL,
  `eid` int(11) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `time_type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_occurrences`
--

INSERT INTO `phpc_occurrences` (`oid`, `eid`, `start_date`, `end_date`, `start_ts`, `end_ts`, `time_type`) VALUES
(109, 25, NULL, NULL, '2016-12-20 16:00:00', '2016-12-20 17:00:00', 0),
(108, 24, NULL, NULL, '2016-12-09 16:00:00', '2016-12-09 17:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `phpc_permissions`
--

CREATE TABLE `phpc_permissions` (
  `cid` int(11) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL,
  `write` tinyint(1) NOT NULL,
  `readonly` tinyint(1) NOT NULL,
  `modify` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_permissions`
--

INSERT INTO `phpc_permissions` (`cid`, `uid`, `read`, `write`, `readonly`, `modify`, `admin`) VALUES
(1, 4, 1, 1, 0, 1, 0),
(1, 5, 1, 1, 0, 1, 0),
(1, 6, 1, 1, 0, 1, 0),
(1, 7, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phpc_users`
--

CREATE TABLE `phpc_users` (
  `uid` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `password_editable` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_users`
--

INSERT INTO `phpc_users` (`uid`, `username`, `password`, `admin`, `password_editable`, `timezone`, `language`, `gid`) VALUES
(1, 'root', 'd41d8cd98f00b204e9800998ecf8427e', 1, 1, 'Europe/Paris', 'fr', NULL),
(4, 'Marc_P', '97e1e59c0375e0f55c10d4314db20466', 0, 1, NULL, NULL, NULL),
(5, 'Karim_B', '2167a6ac80340b69f3b05b800417d6c7', 0, 1, NULL, NULL, NULL),
(6, 'Sergio_R', '3bffa4ebdf4874e506c2b12405796aa5', 0, 1, NULL, NULL, NULL),
(7, 'Gareth_B', 'a681aec86b6823bb3ce08c1e90ae3345', 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `phpc_user_groups`
--

CREATE TABLE `phpc_user_groups` (
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_user_groups`
--

INSERT INTO `phpc_user_groups` (`gid`, `uid`) VALUES
(1, 4),
(5, 5),
(2, 6),
(1, 7),
(7, 7),
(8, 6),
(9, 5),
(6, 4);

-- --------------------------------------------------------

--
-- Structure de la table `phpc_version`
--

CREATE TABLE `phpc_version` (
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phpc_version`
--

INSERT INTO `phpc_version` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE `professionnel` (
  `Id_pro` int(20) NOT NULL,
  `Nom_pro` varchar(20) NOT NULL,
  `Num_tel_pro` varchar(15) NOT NULL,
  `Adresse_mailp` varchar(30) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `professionnel`
--

INSERT INTO `professionnel` (`Id_pro`, `Nom_pro`, `Num_tel_pro`, `Adresse_mailp`, `Adresse`, `uid`) VALUES
(3, 'Smith', '06', 'ad@ad.com', 'Paris', 12),
(4, 'Snow', '06', 'ad@ad.com', 'Paris', 12);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `phpc_calendars`
--
ALTER TABLE `phpc_calendars`
  ADD PRIMARY KEY (`cid`);

--
-- Index pour la table `phpc_categories`
--
ALTER TABLE `phpc_categories`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `cid` (`cid`);

--
-- Index pour la table `phpc_events`
--
ALTER TABLE `phpc_events`
  ADD PRIMARY KEY (`eid`);

--
-- Index pour la table `phpc_groups`
--
ALTER TABLE `phpc_groups`
  ADD PRIMARY KEY (`gid`);

--
-- Index pour la table `phpc_logins`
--
ALTER TABLE `phpc_logins`
  ADD PRIMARY KEY (`uid`,`series`);

--
-- Index pour la table `phpc_occurrences`
--
ALTER TABLE `phpc_occurrences`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `eid` (`eid`);

--
-- Index pour la table `phpc_permissions`
--
ALTER TABLE `phpc_permissions`
  ADD UNIQUE KEY `cid` (`cid`,`uid`);

--
-- Index pour la table `phpc_users`
--
ALTER TABLE `phpc_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD PRIMARY KEY (`Id_pro`),
  ADD KEY `Nom_pro` (`Nom_pro`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `phpc_calendars`
--
ALTER TABLE `phpc_calendars`
  MODIFY `cid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `phpc_categories`
--
ALTER TABLE `phpc_categories`
  MODIFY `catid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `phpc_events`
--
ALTER TABLE `phpc_events`
  MODIFY `eid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `phpc_groups`
--
ALTER TABLE `phpc_groups`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `phpc_occurrences`
--
ALTER TABLE `phpc_occurrences`
  MODIFY `oid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT pour la table `phpc_users`
--
ALTER TABLE `phpc_users`
  MODIFY `uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `professionnel`
--
ALTER TABLE `professionnel`
  MODIFY `Id_pro` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
