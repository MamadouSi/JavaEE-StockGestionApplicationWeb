-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 27 août 2023 à 16:30
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `inventaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `achats`
--

CREATE TABLE `achats` (
  `id_achat` int(11) NOT NULL,
  `id_materiel` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `date_achat` date DEFAULT NULL,
  `montant_unitaire` float DEFAULT NULL,
  `quantite` float DEFAULT NULL,
  `montant_total` float DEFAULT NULL,
  `Observations` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `achats`
--

INSERT INTO `achats` (`id_achat`, `id_materiel`, `id_fournisseur`, `date_achat`, `montant_unitaire`, `quantite`, `montant_total`, `Observations`) VALUES
(18, 1, 1, '2023-08-02', 12, 1, 1, 'ok'),
(38, 1, 1, NULL, 1, 1, 1, ' bon'),
(40, 1, 1, '2023-08-19', 45, 45, 85, 'ok'),
(46, 1, 1, NULL, 5, 4, 5, 'ok'),
(50, 1, 1, NULL, 1, 1, 1, ' cs'),
(52, 1, 1, NULL, 5000, 8, 40000, ' ok'),
(53, 1, 1, NULL, 45, 1, 45, ' ok');

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `id_affectation` int(11) NOT NULL,
  `id_materiel` int(11) DEFAULT NULL,
  `id_personnel` int(11) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`id_affectation`, `id_materiel`, `id_personnel`, `date_debut`, `date_fin`) VALUES
(21, 1, 1, '2023-08-13', '2023-08-25'),
(22, 1, 1, '2023-08-24', '2023-08-31'),
(23, 1, 1, NULL, NULL),
(24, 1, 1, NULL, NULL),
(25, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'Catégorie 1'),
(2, 'Catégorie 2'),
(3, 'Catégorie 3'),
(4, 'Catégorie 4');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `id_fournisseur` int(11) NOT NULL,
  `nom_entreprise` varchar(255) DEFAULT NULL,
  `NIF` varchar(20) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `numero_tel` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Observations` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`id_fournisseur`, `nom_entreprise`, `NIF`, `adresse`, `numero_tel`, `email`, `Observations`) VALUES
(1, 'entreprise A', '001', 'Adresse a', 1234, 'a@gmail.com', '10'),
(26, '    Adia_Corp', '    223', ' pk', 5, 'adia@malimeteo.com', '    Bonne'),
(31, 'MAMA', '45', 'OK', 85, 'OK@kf.com', 'ok'),
(32, 'fkeof', '58', 'di,ed,', 78, 'okF@KK.com', 'ok'),
(33, 'ADIA', '78', 'ofezko', 78, 'ok@gief.vc', 'ok'),
(34, 'fekkfje', '95', ',fverio', 78, 'ok@gjnfze.Com', 'cvs');

-- --------------------------------------------------------

--
-- Structure de la table `materiels`
--

CREATE TABLE `materiels` (
  `id_materiel` int(11) NOT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `etat` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `Observations` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `materiels`
--

INSERT INTO `materiels` (`id_materiel`, `id_categorie`, `nom`, `etat`, `description`, `Observations`) VALUES
(1, 1, 'Matériels B', 'Bon', 'appareil de mesure', 'rien'),
(29, 2, ' TIER8', ' BON', ' PARFAIT', ' NICKEL'),
(35, 1, 'ko', 'ko', 'ko', 'ko'),
(36, 1, 'ok', 'ok', 'ok', 'ok'),
(37, 1, 'ujyf', 'uyf', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id_personnel` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id_personnel`, `nom`, `prenom`) VALUES
(1, 'SIDIBE', 'Mamadou');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `identifiant` varchar(255) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`identifiant`, `password`) VALUES
('admin', 'admin'),
('Mamadou', '16022002');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achats`
--
ALTER TABLE `achats`
  ADD PRIMARY KEY (`id_achat`),
  ADD KEY `id_materiel` (`id_materiel`),
  ADD KEY `id_fournisseur` (`id_fournisseur`);

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`id_affectation`),
  ADD KEY `id_materiel` (`id_materiel`),
  ADD KEY `id_personnel` (`id_personnel`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `materiels`
--
ALTER TABLE `materiels`
  ADD PRIMARY KEY (`id_materiel`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id_personnel`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`identifiant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achats`
--
ALTER TABLE `achats`
  MODIFY `id_achat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `affectation`
--
ALTER TABLE `affectation`
  MODIFY `id_affectation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `materiels`
--
ALTER TABLE `materiels`
  MODIFY `id_materiel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id_personnel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achats`
--
ALTER TABLE `achats`
  ADD CONSTRAINT `achats_ibfk_1` FOREIGN KEY (`id_materiel`) REFERENCES `materiels` (`id_materiel`),
  ADD CONSTRAINT `achats_ibfk_2` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseurs` (`id_fournisseur`);

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`id_materiel`) REFERENCES `materiels` (`id_materiel`),
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id_personnel`);

--
-- Contraintes pour la table `materiels`
--
ALTER TABLE `materiels`
  ADD CONSTRAINT `materiels_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
