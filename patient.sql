-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 28 oct. 2019 à 17:50
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `patient`
--

-- --------------------------------------------------------

--
-- Structure de la table `bloc`
--

CREATE TABLE `bloc` (
  `id_secteur` int(11) NOT NULL,
  `id_docteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bloc`
--

INSERT INTO `bloc` (`id_secteur`, `id_docteur`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 4),
(1, 5),
(2, 5),
(2, 6),
(2, 7),
(1, 8),
(1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `docteur`
--

CREATE TABLE `docteur` (
  `id` int(11) NOT NULL,
  `doct_prenom` varchar(100) NOT NULL,
  `doct_nom` varchar(100) NOT NULL,
  `doct_adresse` varchar(100) NOT NULL,
  `doct_phone` varchar(100) NOT NULL,
  `doct_avatar` varchar(100) NOT NULL,
  `doct_email` varchar(100) NOT NULL,
  `doct_specialite` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `docteur`
--

INSERT INTO `docteur` (`id`, `doct_prenom`, `doct_nom`, `doct_adresse`, `doct_phone`, `doct_avatar`, `doct_email`, `doct_specialite`) VALUES
(1, 'awa', 'ndiaye', 'pikine rue 10', '770254923', 'image1', 'awa10@gmail.com', 'oto-rhino-laryngologue'),
(2, 'mamadou', 'kasse', 'pikine rue 10', '771253259', 'image2', 'mamadou02@gmail.com', 'medecin generaliste'),
(3, 'paul', 'mendy', 'medina rue 22', '701582654', 'image2', 'paul.mendy@gmail.com', 'Neurochirurgien'),
(4, 'moussa', 'bah', 'grand dakar', '761252623', 'image2', 'moussa.bah@gmail.com', 'Gastro-enterologue'),
(5, 'pierre', 'gomis', 'rufisque', '707821520', 'image2', 'pierre.gomis@gmail.com', 'dermatologue'),
(6, 'junior\r\n', 'mendy', 'castor', '781521620', 'image1', 'junior.mendy@gmail.com', 'gynecologue'),
(7, 'jean maurice', 'diatta', 'thies', '770212501', 'image2', 'maurice.jean@gmail.com', 'Anesthesite-reanimateur'),
(8, 'habit', 'sow', 'mbour stade', '778611582', 'image2', 'habit23@gmail.com', 'chirurgien orthopeliste et traumatologue'),
(9, 'ivan', 'nkonko', 'dakar jone A', '770125249', 'image01', 'ivan@gmail.com', 'cardiology'),
(10, 'issaga', 'balde', 'paris la france', '00334582', 'pp.jpg', 'issaga@balde.com', 'Anaesthetics'),
(11, 'Mm astou', 'sall', 'gambie', '+4252158412', 'services.png', 'mmastou@gmail.com', 'oto-rhino-laryngologue');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `pat_prenom` varchar(100) NOT NULL,
  `pat_nom` varchar(100) NOT NULL,
  `pat_age` int(11) NOT NULL,
  `pat_adresse` varchar(100) NOT NULL,
  `pat_phone` int(11) NOT NULL,
  `pat_image` varchar(100) NOT NULL,
  `pat_email` varchar(100) NOT NULL,
  `pat_symptone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `pat_prenom`, `pat_nom`, `pat_age`, `pat_adresse`, `pat_phone`, `pat_image`, `pat_email`, `pat_symptone`) VALUES
(1, 'francisco', 'lopez', 27, 'pikine rue 10', 770124015, 'image5', 'francisco.lopez@gmail.com', 'mal au ventre'),
(2, 'pierre John', 'jobb', 25, 'grand yoff', 770231524, 'image1', 'pierre.jobb@gmail.com', 'peau et visage'),
(3, 'thiane', 'dieng', 10, 'matan', 770215213, 'image2\r\n', 'thiane.dieng@gmail.com', 'fracture du bras'),
(4, 'binou', 'niang', 24, 'thiaroye sur mer', 781244520, 'image3', 'binou12@gmail.com', 'en etat de grossesse'),
(5, 'marie jeanne', 'mendy', 25, 'keur massar', 772451252, 'image6', 'marie.jeanne@gmail.com', 'fracture jambe'),
(6, 'aminata', 'diop', 30, 'podor', 701245248, 'image7', 'aminata12@gmail.com', 'probleme yeux'),
(7, 'malick', 'sow', 26, 'tambacouda', 701254232, 'image6', 'malick.sow@gmail.com', 'mal au ventre'),
(8, 'pape moussa', 'loum', 19, 'matam', 773595624, 'image01.jpg', 'pape.moussa@gmail.com', 'probleme des yeux'),
(9, 'moustapha', 'dioum', 15, 'pikine', 770252456, 'Votre parcours X2.png', 'moustapha@gmail.com', 'blessure');

-- --------------------------------------------------------

--
-- Structure de la table `rv`
--

CREATE TABLE `rv` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `heure` time NOT NULL,
  `id_patient` int(11) NOT NULL,
  `id_secteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rv`
--

INSERT INTO `rv` (`id`, `date`, `heure`, `id_patient`, `id_secteur`) VALUES
(1, '2019-10-09 00:00:00', '15:00:00', 1, 1),
(2, '2019-10-27 00:00:00', '19:54:00', 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `secrecteur`
--

CREATE TABLE `secrecteur` (
  `id` int(11) NOT NULL,
  `sec_prenom` varchar(100) NOT NULL,
  `sec_nom` varchar(100) NOT NULL,
  `sec_adresse` varchar(100) NOT NULL,
  `sec_phone` int(11) NOT NULL,
  `sec_email` varchar(100) NOT NULL,
  `sec_avatar` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `secrecteur`
--

INSERT INTO `secrecteur` (`id`, `sec_prenom`, `sec_nom`, `sec_adresse`, `sec_phone`, `sec_email`, `sec_avatar`, `username`, `password`) VALUES
(1, 'awa', 'cisse', 'mbour', 772312856, 'awa.cisse@gmail.com', 'image4\r\n', 'awa', '12345'),
(2, 'fatoumata', 'ndiaye', 'dakar yoff', 773451202, 'fatoumata.ndiaye@gmail.com', 'image5', 'fatou', '01234'),
(3, 'marie', 'mendy', 'zac mboa', 701245241, 'marie@gmail.com', 'image6', 'marie', '12345');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `id_secteur` int(11) NOT NULL,
  `nom_secteur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`id_secteur`, `nom_secteur`) VALUES
(1, 'gastro'),
(2, 'dermatologue'),
(3, 'yeux');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `idsecteur` int(11) NOT NULL,
  `idsecreteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idsecteur`, `idsecreteur`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

CREATE TABLE `traitement` (
  `id_docteur` int(11) NOT NULL,
  `id_patient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`id_docteur`, `id_patient`) VALUES
(1, 1),
(2, 2),
(5, 3),
(5, 4),
(4, 5),
(4, 6),
(1, 7),
(1, 8),
(1, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bloc`
--
ALTER TABLE `bloc`
  ADD KEY `saisir` (`id_docteur`),
  ADD KEY `boulot` (`id_secteur`);

--
-- Index pour la table `docteur`
--
ALTER TABLE `docteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rv`
--
ALTER TABLE `rv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tout avoir` (`id_patient`),
  ADD KEY `arrive` (`id_secteur`);

--
-- Index pour la table `secrecteur`
--
ALTER TABLE `secrecteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`id_secteur`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD KEY `travail` (`idsecreteur`),
  ADD KEY `bureau` (`idsecteur`);

--
-- Index pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD KEY `maladie` (`id_patient`),
  ADD KEY `consulte` (`id_docteur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `docteur`
--
ALTER TABLE `docteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `rv`
--
ALTER TABLE `rv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `secrecteur`
--
ALTER TABLE `secrecteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `id_secteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bloc`
--
ALTER TABLE `bloc`
  ADD CONSTRAINT `boulot` FOREIGN KEY (`id_secteur`) REFERENCES `secteur` (`id_secteur`),
  ADD CONSTRAINT `saisir` FOREIGN KEY (`id_docteur`) REFERENCES `docteur` (`id`);

--
-- Contraintes pour la table `rv`
--
ALTER TABLE `rv`
  ADD CONSTRAINT `arrive` FOREIGN KEY (`id_secteur`) REFERENCES `secteur` (`id_secteur`),
  ADD CONSTRAINT `tout avoir` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `bureau` FOREIGN KEY (`idsecteur`) REFERENCES `secteur` (`id_secteur`),
  ADD CONSTRAINT `travail` FOREIGN KEY (`idsecreteur`) REFERENCES `secrecteur` (`id`);

--
-- Contraintes pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD CONSTRAINT `consulte` FOREIGN KEY (`id_docteur`) REFERENCES `docteur` (`id`),
  ADD CONSTRAINT `maladie` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
