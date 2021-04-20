-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 20 avr. 2021 à 11:46
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `group_shm_exe`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` enum('m','f','o','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `full_name`, `gender`) VALUES
(1, 'Israel Berford', 'm'),
(2, 'Tod Nias', 'm'),
(3, 'Abbie Sheering', 'm'),
(4, 'Caddric Borzoni', 'm'),
(5, 'Rozanne Elner', 'f'),
(6, 'Timoteo Snelling', 'm'),
(7, 'Hilary Giblin', 'm'),
(8, 'Jae Hark', 'm'),
(9, 'Napoleon Fewkes', 'm'),
(10, 'Jackelyn Skeen', 'f'),
(11, 'Marv Farryann', 'm'),
(12, 'Karly Comberbeach', 'f'),
(13, 'Katuscha Bower', 'f'),
(14, 'Burty Brideoke', 'm'),
(15, 'Robbie Greenstead', 'f'),
(16, 'Darby Dunton', 'm'),
(17, 'Mirella Godridge', 'f'),
(18, 'Drona Barta', 'f'),
(19, 'Orland Greenard', 'm'),
(20, 'Stephenie Gladtbach', 'f'),
(21, 'Lilith Minnock', 'f'),
(22, 'Marcellina Brotherhead', 'f'),
(23, 'Dulce Lamberts', 'f'),
(24, 'Barron Gamblin', 'm'),
(25, 'Elliot Fearns', 'm'),
(26, 'Antony Woolham', 'm'),
(27, 'Jenda Larmet', 'f'),
(28, 'Blondie Noakes', 'f'),
(29, 'Con Cullimore', 'm'),
(30, 'Emmanuel Cowhig', 'm'),
(31, 'Robinetta Cavell', 'f'),
(32, 'Melisse Hackworthy', 'f'),
(33, 'Avie Creasey', 'f'),
(34, 'Timi Bicksteth', 'f'),
(35, 'Meris Clinton', 'f'),
(36, 'Abbe Stoacley', 'm'),
(37, 'Orton Crozier', 'm'),
(38, 'Lara Wasselin', 'f'),
(39, 'Lorianna Bazell', 'f'),
(40, 'Maurene Leuren', 'f'),
(41, 'Chet Watters', 'm'),
(42, 'Sheelagh Piotrkowski', 'f'),
(43, 'Kayley Ludee', 'f'),
(44, 'Temp McQuarrie', 'm'),
(45, 'Myca Primmer', 'm'),
(46, 'Cheslie Hindmoor', 'f'),
(47, 'Georg Fenlon', 'm'),
(48, 'Dotty Becom', 'f'),
(49, 'Harri Tamas', 'f'),
(50, 'Edyth Spry', 'f');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Documentary', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.'),
(2, 'Comedy|Crime|Drama', 'Aliquam erat volutpat. In congue.'),
(3, 'Fantasy|Horror|Romance|Thriller', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio'),
(4, 'Comedy|Western', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.'),
(5, 'Adventure|Children|Fantasy', 'Proin risus.'),
(6, 'Crime|Drama|Thriller', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(7, 'Animation', 'Vivamus tortor. Duis mattis egestas metus.'),
(8, 'Drama|Horror|Thriller', 'Nam dui.'),
(9, 'Documentary|Drama', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(10, 'Romance', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.'),
(11, 'Action|Crime|Drama', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(12, 'Children|Comedy', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),
(13, 'Action|Adventure|Drama', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.'),
(14, 'Comedy|Romance', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.'),
(15, 'Drama', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `date_of_release` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `movie_link` varchar(255) DEFAULT NULL,
  `synopsis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `movie_content`
--

CREATE TABLE `movie_content` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_creation` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `playlist_content`
--

CREATE TABLE `playlist_content` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_cat` (`category_id`);

--
-- Index pour la table `movie_content`
--
ALTER TABLE `movie_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_id` (`movie_id`),
  ADD KEY `fk_actor_id` (`actor_id`);

--
-- Index pour la table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Index pour la table `playlist_content`
--
ALTER TABLE `playlist_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_playlist` (`movie_id`),
  ADD KEY `fk_playlist_id` (`playlist_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `movie_content`
--
ALTER TABLE `movie_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `playlist_content`
--
ALTER TABLE `playlist_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movie_cat` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `movie_content`
--
ALTER TABLE `movie_content`
  ADD CONSTRAINT `fk_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `fk_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Contraintes pour la table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `playlist_content`
--
ALTER TABLE `playlist_content`
  ADD CONSTRAINT `fk_movie_playlist` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `fk_playlist_id` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
