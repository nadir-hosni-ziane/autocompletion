-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 mai 2021 à 22:14
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `titres`
--

DROP TABLE IF EXISTS `titres`;
CREATE TABLE IF NOT EXISTS `titres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `artiste` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `image_album` varchar(255) NOT NULL,
  `link_lyrics` varchar(535) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `titres`
--

INSERT INTO `titres` (`id`, `titre`, `artiste`, `album`, `image_album`, `link_lyrics`) VALUES
(1, 'DA', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-da-lyrics'),
(3, 'NAHA', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-naha-lyrics'),
(4, 'Dans la legende', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-dans-la-legende-lyrics'),
(5, 'Mira', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-mira-lyrics'),
(6, 'Jsuis QLF', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-jsuis-qlf-lyrics'),
(7, 'La vie est belle', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-la-vie-est-belle-lyrics'),
(8, 'Kratos', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-kratos-lyrics'),
(9, 'Luz de luna', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-luz-de-luna-lyrics'),
(10, 'Tu sais pas', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-tu-sais-pais-lyrics'),
(11, 'Sheita', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-sheita-lyrics'),
(12, 'Humain', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-humain-lyrics'),
(13, 'Bambina', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-bambina-lyrics'),
(14, 'Bene', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-kratos-lyrics'),
(15, 'Uranus', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-uranus-lyrics'),
(16, 'Onizuka', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-onizuka-lyrics'),
(17, 'Jusqu au dernier gramme', 'PNL', 'Dans la legende', 'danslalegende.jpg', 'https://genius.com/Pnl-jusquau-dernier-gramme-lyrics'),
(18, 'Le monde ou rien', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-le-monde-ou-rien-lyrics'),
(19, 'Sur Paname', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-sur-paname-lyrics'),
(20, 'Oh Lala', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-oh-lala-lyrics'),
(21, 'J vend', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-jvends-lyrics'),
(22, 'Abonne', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-abonne-lyrics'),
(23, 'J suis PNL', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-jsuis-pnl-lyrics'),
(24, 'Mexico', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-mexico-lyrics'),
(25, 'Porte de Mesrine', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-porte-de-mesrine-lyrics'),
(26, 'Dans ta rue', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-dans-ta-rue-lyrics'),
(27, 'Laisse', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-laisse-lyrics'),
(28, 'Loin des hommes', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-loin-des-hommes-lyrics'),
(29, 'Le M', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-le-m-lyrics'),
(30, 'Rebenga (Ft. RKM)', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-rebenga-lyrics'),
(31, 'Plus Tony que Sosa', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-plus-tony-que-sosa-lyrics'),
(32, 'Que la Mif', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-que-la-mif-lyrics'),
(33, 'Tempête', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-tempete-lyrics'),
(34, 'Dans la soucoupe', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-dans-la-soucoupe-lyrics'),
(35, 'Le Monde Chico', 'PNL', 'Le monde chico', 'lemondechico.jpg', 'https://genius.com/Pnl-le-monde-chico-lyrics'),
(36, 'A. Nwaar Is The New Black', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-nwaar-is-the-new-black-lyrics'),
(37, 'B. #QuedusaalVie', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-b-quedusaalvie-lyrics'),
(38, 'C. Mosaique solitaire', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-mosaique-solitaire-lyrics'),
(39, 'D. Dieu ne ment jamais', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-dieu-ne-ment-jamais-lyrics'),
(40, 'E. Signaler', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-signaler-lyrics'),
(41, 'Z. Kietu', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-kietu-lyrics'),
(42, 'H. Gova', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-gova-lyrics'),
(43, 'O. Macarena', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-macarena-lyrics'),
(44, 'l. Peur d etre pere', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-peur-detre-pere-lyrics'),
(45, 'K. Kin la belle', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-kin-la-belle-lyrics'),
(46, 'V. Love', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-love-lyrics'),
(47, 'M. Noob Saibot', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-noob-saibot-lyrics'),
(48, 'N. J Respect R', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-n-j-respect-r-lyrics'),
(49, 'E. Une ame pour deux\r\n', 'Damso', 'Ipseite', 'ipseite.jpg', 'https://genius.com/Damso-une-ame-pour-deux-lyrics');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
