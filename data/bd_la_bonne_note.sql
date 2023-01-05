-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 04 Janvier 2023 à 23:12
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_la_bonne_note`
--

-- --------------------------------------------------------

--
-- Structure de la table `favori`
--

CREATE TABLE `favori` (
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `favori`
--

INSERT INTO `favori` (`IdProf`, `IdEleve`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `infoprof`
--

CREATE TABLE `infoprof` (
  `IdProf` int(11) NOT NULL,
  `IdNiveau` int(11) NOT NULL,
  `IdMatiere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `infoprof`
--

INSERT INTO `infoprof` (`IdProf`, `IdNiveau`, `IdMatiere`) VALUES
(1, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `infosup`
--

CREATE TABLE `infosup` (
  `IdUtilisateur` int(11) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Complément` varchar(50) NOT NULL,
  `Arrandissement` int(11) NOT NULL,
  `Date de naissance` date NOT NULL,
  `Prof` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `infosup`
--

INSERT INTO `infosup` (`IdUtilisateur`, `Adresse`, `Complément`, `Arrandissement`, `Date de naissance`, `Prof`) VALUES
(1, '27 Rue Stéphane Proust', '', 16, '2003-08-08', 1),
(2, '2 villa de la réunion', '', 16, '2003-10-23', 0),
(3, 'babville', '', 16, '2003-01-01', 1),
(4, 'babville', '', 16, '2003-01-01', 1),
(5, 'tacville', '', 16, '2003-01-01', 0);

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `IdUtilisateur` int(11) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `matière`
--

CREATE TABLE `matière` (
  `IdMatiere` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matière`
--

INSERT INTO `matière` (`IdMatiere`, `Nom`) VALUES
(1, 'Math'),
(2, 'Français'),
(3, 'Histoire-Géo'),
(4, 'Anglais'),
(5, 'SVT'),
(6, 'Physique-Chimie'),
(7, 'Espagnol'),
(8, 'Allemand'),
(9, 'Philosophie');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `IdNiveau` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`IdNiveau`, `Nom`) VALUES
(1, '6eme'),
(2, '5eme'),
(3, '4eme'),
(4, '3eme'),
(5, 'Seconde'),
(6, 'Première'),
(7, 'Terminal');

-- --------------------------------------------------------

--
-- Structure de la table `potentiel`
--

CREATE TABLE `potentiel` (
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `potentiel`
--

INSERT INTO `potentiel` (`IdProf`, `IdEleve`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `suivi`
--

CREATE TABLE `suivi` (
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `suivi`
--

INSERT INTO `suivi` (`IdProf`, `IdEleve`) VALUES
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `IdUtilisateur` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prénom` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`IdUtilisateur`, `Nom`, `Prénom`, `Email`, `Password`) VALUES
(1, 'Domingues Ramos', 'André', 'andre@gmail.com', 'andre'),
(2, 'Hazami', 'Sofia', 'sofia@gmail.com', 'sofia'),
(3, 'Isk', 'Bab', 'bab@gmail.com', 'bab'),
(4, 'test1', 't', 't@gmail.com', 't'),
(5, 'tac', 'tac', 'tac@gmail.com', 'tac');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `favori`
--
ALTER TABLE `favori`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`);

--
-- Index pour la table `infoprof`
--
ALTER TABLE `infoprof`
  ADD PRIMARY KEY (`IdProf`);

--
-- Index pour la table `infosup`
--
ALTER TABLE `infosup`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- Index pour la table `matière`
--
ALTER TABLE `matière`
  ADD PRIMARY KEY (`IdMatiere`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`IdNiveau`);

--
-- Index pour la table `potentiel`
--
ALTER TABLE `potentiel`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`);

--
-- Index pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `matière`
--
ALTER TABLE `matière`
  MODIFY `IdMatiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `IdNiveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `infosup`
--
ALTER TABLE `infosup`
  ADD CONSTRAINT `Fk_InfoSup_IdUtilisateur` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`);

--
-- Contraintes pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD CONSTRAINT `Fk_IdUtilisateur` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;