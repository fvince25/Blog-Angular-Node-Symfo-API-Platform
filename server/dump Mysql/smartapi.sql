-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 01 fév. 2021 à 13:29
-- Version du serveur :  5.7.26
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `smartapi`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `draft` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `name`, `reference`, `content`, `draft`, `created_at`, `update_at`, `user_id`) VALUES
(27, 'article prot', '1234', 'hello', 1, '2021-01-29 22:39:48', '2021-01-29 22:39:48', 5),
(32, 'Mai 68', '1234', 'Les évènements de mai-juin 1968, ou plus brièvement Mai 68, désignent une période durant laquelle se déroulent, en France, des manifestations d\'étudiants, ainsi que des grèves générales et sauvages.\n\nL\'historiographie de Mai 68 a rappelé à partir des années 1990 que près de dix millions de personnes ont fait grève juste avant la négociation des accords de Grenelle qui actent un relèvement de 35% du SMIC, la révolte étudiante parisienne, ayant gagné le monde ouvrier et pratiquement toutes les catégories de population sur l\'ensemble du territoire, pour constituer le plus important mouvement social de l\'histoire de France du xxe siècle. Une modif', 0, '2021-01-31 21:19:03', '2021-01-31 23:01:45', 3),
(33, 'Albert Camus', '1234', 'Albert Camus, né le 7 novembre 1913 à Mondovi (aujourd’hui Dréan), près de Bône (aujourd’hui Annaba), en Algérie, et mort accidentellement le 4 janvier 1960 à Villeblevin, dans l\'Yonne en France, est un écrivain, philosophe, romancier, dramaturge, essayiste et nouvelliste français. Il est aussi journaliste militant engagé dans la Résistance française et, proche des courants libertaires, dans les combats moraux de l\'après-guerre.', 1, '2021-01-31 21:22:00', '2021-01-31 21:22:33', 3),
(34, 'Échecs', '1234', 'Le jeu d’échecs, ou les échecs, (prononcer [eʃɛk]) oppose deux joueurs de part et d’autre d’un tablier appelé échiquier composé de soixante-quatre cases claires et sombres nommées les cases blanches et les cases noires. Les joueurs jouent à tour de rôle en déplaçant l\'une de leurs seize pièces (ou deux pièces en cas de roque), claires pour le camp des blancs, sombres pour le camp des noirs. Chaque joueur possède au départ un roi, une dame, deux tours, deux fous, deux cavaliers et huit pions. Le but du jeu est d\'infliger à son adversaire un échec et mat, une situation dans laquelle le roi d\'un joueur est en prise sans qu\'il soit possible d\'y remédier.', 0, '2021-01-31 21:28:10', '2021-01-31 21:51:46', 4),
(35, 'Tarte flambée', '1234', 'La tarte flambée ou Flammekueche est une recette traditionnelle des cuisine alsacienne, cuisine lorraine de la Moselle germanophone, et de la cuisine allemande des régions adjacentes du Pays de Bade, du Palatinat.\n\nElle est composée d\'une fine abaisse de pâte composée de farine, d\'eau, d\'huile et de sel, puis recouverte de crème fraîche épaisse ou de fromage blanc (ou d\'un mélange des deux : le Bibeleskäs), d\'oignons en rondelles et de lardons, puis rapidement cuite au four à pain très chaud. Elle peut également se décliner en multiples variantes.', 1, '2021-01-31 21:30:53', '2021-01-31 21:31:30', 4),
(36, 'Château fort', '1234', 'Un château fort est une structure fortifiée médiévale remplaçant la motte castrale à partir de la Renaissance du xiie siècle, habitée par la noblesse essentiellement en Europe, au Moyen-Orient et en Asie. Fait de pierre et non plus de terre et de bois, il se caractérise par sa double fonction : défensive et administrative. Le mot « château » vient du latin castellum (d\'où le terme de castellologie, l\'étude des châteaux).\n\nLes chercheurs actuels débattent sur ce que recouvre le terme de château fort, mais le considèrent généralement comme « le lieu de résidence fortifié d\'un détenteur du droit de ban, à l\'origine d\'une circonscription territoriale, mandement, châtellenie ou bourg », c\'est-à-dire la résidence fortifiée privée d\'un noble ou d\'un seigneur. Cette définition le distingue ainsi d\'un palais qui n\'était pas fortifié, d\'une fortification qui n\'était pas la résidence d\'un noble ou d\'une ville fortifiée ou d\'une citadelle qui étaient une défense publique. Néanmoins, il y a beaucoup de similitudes entre ces différents types de construction. L\'usage du terme a varié au cours du temps et a été appliqué à tort à des structures aussi diverses que des maisons fortes ou des castros.\nSuite', 1, '2021-01-31 21:32:45', '2021-02-01 10:28:13', 4),
(37, 'Libéralisme', '1234', 'Le libéralisme est un courant de pensée qui prône la défense des droits individuels (liberté, sécurité, propriété,...), au nom d\'une vision fondée sur l\'individu et la coopération volontaire entre les Hommes. Le système libéral repose donc sur la responsabilité individuelle et le travail. Cependant, le libéralisme peut également être compris comme la défense des passions individuelles.\n\nLes conclusions ne sont pas les mêmes selon que l\'on se place du point de vue des droits naturels de l\'individu ou de ses passions. Dans le premier cas, les libéraux sont enclins à penser que, en dépit de ce qu\'ils souhaitent, un ordre contraire à celui du marché peut subsister (violence, coercition étatique, guerres...) et il faut y remédier 1. Dans le deuxième cas, les libéraux estiment, à partir de l\'observation et de l\'expérience, que l\'exploitation des pauvres par les plus riches, l\'étatisme, le crime organisé, les délits d\'initié, les asymétries d\'information et la corruption sont des phénomènes sociaux nécessaires à une économie prospère (Bernard Mandeville)2. Dans les deux cas, le libéral n\'accorde aucun crédit au régime politique prétendant réformer les « vices » des individus3,4. Si l\'ordre public est au service des libertés individuelles, les autorités libérales sont tenues de réprimer le désordre plutôt que de le prévenir. Dans la pensée mandevillienne, les mesures libérales sont en réalité opportunistes et hypocrites. Le libéralisme peut apparaître ici comme un art immoral de gouverner tirant parti de l\'orgueil des individus et non une philosophie du droit5. Il s\'agit alors de souligner l\'existence d\'un système opaque et arbitraire dissimulé derrière un cadre normatif. La transparence, exigée par les libéraux classiques, ne serait que pur sophisme.', 0, '2021-01-31 21:37:12', '2021-02-01 12:52:15', 3),
(38, 'Bouddhisme', '1234', 'Le bouddhisme est une religion et une philosophie dont les origines se situent en Inde aux vie – ve siècles av. J.-C. à la suite de l\'éveil de Siddhartha Gautama à Bodhgaya et de la diffusion de son enseignement.\n\nEn 2018, on compte (mais le chiffre doit être pris avec prudence) quelque 623 millions de bouddhistes dans le monde1, ce qui fait du bouddhisme la quatrième religion mondiale, derrière (dans l\'ordre décroissant) le christianisme, l\'islam et l\'hindouisme. L\'historien des religions Odon Vallet mentionne que c\'est « la seule grande religion au monde à avoir régressé au xxe siècle », en raison, notamment, des persécutions menées contre le bouddhisme par les régimes communistes en Chine et en Indochine2.', 0, '2021-01-31 21:38:30', '2021-01-31 21:39:03', 3),
(39, 'la Lune', '1234', 'La Lunenote 1, ou Terre Inote 2) est l\'unique satellite naturel permanent de la planète Terre. Il s\'agit du cinquième plus grand satellite naturel du Système solaire et du plus grand des satellites planétaires par rapport à la taille de la planète autour de laquelle il orbite. Elle est le deuxième satellite le plus dense du Système solaire après Io, un satellite de Jupiternote 3.\nUne modification', 1, '2021-01-31 22:11:52', '2021-02-01 11:05:20', 8),
(41, 'Lily Renée', '1234', 'Lily Renée Wilhelm naît en 1925 à Vienne en Autriche dans une famille juive. Après l\'Anschluss, elle parvient à quitter son pays et à se réfugier en Angleterre. Elle quitte ensuite le Royaume-Uni pour les États-Unis où elle retrouve ses parents qui avaient fui l\'Autriche après elle1. Elle commence à travailler comme dessinatrice, tout comme Ruth Atkinson, Fran Hopper, Nina Albright et Marcia Snyder, pour le studio de Jerry Iger qui cherchait à remplacer ses dessinateurs appelés par l\'armée2. Après avoir commencé comme simple assistante chargée de nettoyer les planches des dessinateurs, elle monte en grade et commence à dessiner elle-même des comics1. Elle travaille surtout pour Fiction House de 1943 à 1948 sur des titres comme Werewolf Hunter, Jane Martin, Señorita Rio et The Lost World3. Elle se marie en 1947 avec Eric Peters. Elle travaille avec son mari pour St. John sur des romance comics et des comics mettant en scène Abbott et Costello. Ils divorcent peu après et en 1949 Lily Renée se remarie avec Randolph Phillips dont elle a deux enfants. Elle quitte le monde des comics et écrit deux romans pour la jeunesse, Red is the Heart et Magic Next Door1.', 0, '2021-02-01 11:03:59', '2021-02-01 11:04:19', 13);

-- --------------------------------------------------------

--
-- Structure de la table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE IF NOT EXISTS `article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `IDX_919694F97294869C` (`article_id`),
  KEY `IDX_919694F9BAD26311` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`) VALUES
(32, 3),
(32, 11),
(32, 13),
(33, 7),
(33, 14),
(34, 14),
(35, 16),
(36, 13),
(36, 14),
(37, 3),
(37, 5),
(37, 11),
(39, 3),
(39, 12),
(41, 7),
(41, 14);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`),
  KEY `IDX_9474526CA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `user_id`, `content`, `created_at`, `update_at`) VALUES
(21, 37, 6, 'Très clair ! Bravo', '2021-01-31 21:48:37', '2021-01-31 21:48:37'),
(22, 38, 4, 'Bien dit !', '2021-01-31 21:52:20', '2021-01-31 21:52:20'),
(23, 32, 5, 'C\'est clair.', '2021-01-31 21:53:29', '2021-01-31 21:53:29'),
(24, 32, 6, 'Bien dit.', '2021-01-31 21:54:43', '2021-01-31 21:54:43'),
(25, 32, 8, 'Je suis d\'accord', '2021-01-31 22:08:22', '2021-01-31 22:08:22'),
(28, 38, 12, 'Je valide', '2021-02-01 10:23:20', '2021-02-01 10:23:20'),
(29, 37, 13, 'Je suis d\'accord', '2021-02-01 11:02:15', '2021-02-01 11:02:15');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20210126111050', '2021-01-26 11:12:21'),
('20210126140523', '2021-01-26 14:05:51'),
('20210126145541', '2021-01-26 14:55:57');

-- --------------------------------------------------------

--
-- Structure de la table `reaction`
--

DROP TABLE IF EXISTS `reaction`;
CREATE TABLE IF NOT EXISTS `reaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A4D707F77294869C` (`article_id`),
  KEY `IDX_A4D707F7A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reaction`
--

INSERT INTO `reaction` (`id`, `article_id`, `user_id`, `type`, `created_at`, `update_at`) VALUES
(28, 38, 4, 'like', '2021-01-31 21:52:22', '2021-01-31 21:52:22'),
(29, 38, 4, 'heart', '2021-01-31 21:52:23', '2021-01-31 21:52:23'),
(30, 32, 4, 'idea', '2021-01-31 21:52:42', '2021-01-31 21:52:42'),
(33, 32, 8, 'like', '2021-01-31 22:09:05', '2021-01-31 22:09:05'),
(38, 34, 5, 'heart', '2021-01-31 22:53:02', '2021-01-31 22:53:02'),
(40, 34, 5, 'idea', '2021-01-31 22:57:06', '2021-01-31 22:57:06'),
(41, 34, 5, 'like', '2021-01-31 22:57:08', '2021-01-31 22:57:08'),
(42, 32, 5, 'heart', '2021-01-31 23:02:19', '2021-01-31 23:02:19'),
(46, 32, 6, 'idea', '2021-01-31 23:48:10', '2021-01-31 23:48:10'),
(52, 38, 6, 'like', '2021-02-01 00:54:26', '2021-02-01 00:54:26'),
(53, 38, 6, 'idea', '2021-02-01 00:54:31', '2021-02-01 00:54:31'),
(55, 38, 12, 'heart', '2021-02-01 10:23:52', '2021-02-01 10:23:52'),
(56, 37, 13, 'heart', '2021-02-01 11:02:27', '2021-02-01 11:02:27'),
(57, 37, 5, 'idea', '2021-02-01 12:51:03', '2021-02-01 12:51:03');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `title`, `created_at`, `update_at`) VALUES
(1, 'éducation', '2021-01-14 00:00:00', '2021-01-21 00:00:00'),
(3, 'société', '2021-01-13 00:00:00', '2021-01-13 00:00:00'),
(5, 'économie', '2021-01-13 00:00:00', '2021-01-21 00:00:00'),
(6, 'santé', '2021-01-20 00:00:00', '2021-01-16 00:00:00'),
(7, 'litérature', '2021-01-08 00:00:00', '2021-01-20 00:00:00'),
(8, 'religion', '2021-01-07 00:00:00', '2021-01-19 00:00:00'),
(10, 'philosophie', '2021-01-13 00:00:00', '2021-01-27 00:00:00'),
(11, 'politique', '2021-01-14 00:00:00', '2021-01-20 00:00:00'),
(12, 'sciences', '2021-01-13 00:00:00', '2021-01-14 00:00:00'),
(13, 'histoire', '2021-01-14 00:00:00', '2021-01-21 00:00:00'),
(14, 'culture', '2021-01-21 00:00:00', '2021-01-22 00:00:00'),
(15, 'sport', '2021-01-14 00:00:00', '2021-01-14 00:00:00'),
(16, 'gastronomie', '2021-01-15 00:00:00', '2021-01-21 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `update_at`) VALUES
(3, 'Marvin', 'marvin@marvin.fr', '$2b$08$phIQq7NpKLzrozoEGG/enuHXp6.Aa3bxOmPbjORapju.lEJyGA7f2', 'standard', '2021-01-27 22:07:13', '2021-01-27 22:07:13'),
(4, 'Sophie', 'sophie@sophie.fr', '$2b$08$vMZe4oZWcyNQdhqFa68wp.ojNRBTCCRwgR7yp0UEAtHVudsjEuKxm', 'standard', '2021-01-28 15:39:43', '2021-01-28 15:39:43'),
(5, 'Vincent', 'vincent@vincent.fr', '$2b$08$mop6Go5farpjUKY0eCCySeYjZt/ImnKvAdp7e1z5B7ZbVFWK9nKfC', 'admin', '2021-01-29 22:13:03', '2021-01-29 22:13:03'),
(6, 'Stefan', 'stefan@stefan.fr', '$2b$08$YtdxM2QBLV0W/74xGdUdMesxPD81zeHa.6eusDmh6CV3Wf.juboXO', 'standard', '2021-01-31 21:44:08', '2021-01-31 21:44:08'),
(7, 'martin', 'martin@martin.fr', '$2b$08$g5LZXSAFEiiLFwrMi8tbOeqTQ6P18BtYKfZbzOiE7zOTv4lJUSNZ.', 'standard', '2021-01-31 22:00:41', '2021-01-31 22:00:41'),
(8, 'Jak', 'jak@jak.fr', '$2b$08$YaPw42vygdgI7n7NUS1KAeGHb2DEWkOrQ5EV8/4WfOIzwymLT77j2', 'standard', '2021-01-31 22:05:29', '2021-01-31 22:05:29'),
(10, 'Truc', 'truc@truc.fr', '$2b$08$dJWeznFWeMHPkNT3Oie5O.8Wjf3cp/MT3RkO93WczePE1AjYPt2wO', 'standard', '2021-02-01 10:10:32', '2021-02-01 10:10:32'),
(11, 'John', 'john@john.fr', '$2b$08$VWaQ6X2Jko2Gp4sanpB1J.bcSSDbYxd0sozppOgYsnck8/C./e3C2', 'standard', '2021-02-01 10:13:13', '2021-02-01 10:13:13'),
(12, 'Fred', 'fred@fred.fr', '$2b$08$olLbmBUUy9nsIIsUpJV41eTAtO2PWehWV3.iVIWZt7Dd6bYxDTiZ2', 'standard', '2021-02-01 10:18:28', '2021-02-01 10:18:28'),
(13, 'Jean', 'jean@jean.fr', '$2b$08$Phf9vUkqR61Klhw1LWxgD.23Zj6dus/ksSHFGP1gnURYtIb6dNBNW', 'standard', '2021-02-01 10:59:06', '2021-02-01 10:59:06');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `FK_919694F97294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_919694F9BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reaction`
--
ALTER TABLE `reaction`
  ADD CONSTRAINT `FK_A4D707F77294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_A4D707F7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
