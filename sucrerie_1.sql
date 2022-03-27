-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sucrerie`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `code_c` int NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `cp` char(5) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `ntel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`code_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`code_c`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `ntel`) VALUES
(17, 'TARINAUX', 'Lucien', '12 rue de la Justice', '51100', 'REIMS', '0326254887'),
(46, 'MARTUSE', NULL, '103 avenue Lear', '51100', 'REIMS', '0326032526'),
(47, 'RABIN', 'Sandrine', '21 rue de la Méditerranée', '51100', 'REIMS', '0326141525'),
(48, 'SILLARD', 'Laurence', '15 rue Pasentiers', '51100', 'REIMS', '0326111125'),
(49, 'COTOY', 'Sylvie', '12 rue des écus', '51100', 'REIMS', '0326102575'),
(50, 'HELLOU', 'Bernard', '21 rue de la Méditerranée', '51100', 'REIMS', '0326122542'),
(51, 'HENTION', 'Martine', '50 allée des bons enfants', '51100', 'REIMS', '0326122586'),
(52, 'SIBAT', 'Evelyne', '14 rue de la Baltique', '51100', 'REIMS', '0326122333'),
(53, 'MARIN', 'Dominique', '24 rue de la Baltique', '51100', 'REIMS', '0326101023'),
(54, 'DURDUX', 'Monique', '15 allée des Béarnais', '51150', 'VITRY LE FRANCOIS', '0326424233'),
(55, 'CANILLE', 'Walter', '14 rue Lanterneau', '51100', 'REIMS', '0326121287'),
(56, 'BOUQUET', 'Antoinette', '1, rue de la Méditerranée', '51140', 'ROMAIN', '0326788954'),
(57, 'GAUTON', 'Nadine', '5 place des Oiseaux', '51200', 'FISMES', '0326535655'),
(58, 'LEGROS', 'Christian', '18 place des Oiseaux', '51200', 'FISMES', '0326445566'),
(59, 'DUMOITIERS', 'Lucille', '12 place Centrale', '02320', 'LONGUEVAL', '0326864325'),
(60, 'BOUCHE', 'Carole', '4 rue Brulé', '51200', 'FISMES', '0326339685');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `numero` int NOT NULL,
  `code_v` int DEFAULT NULL,
  `code_c` int DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `total_ht` decimal(5,2) DEFAULT NULL,
  `total_tva` decimal(4,2) DEFAULT NULL,
  `etat` int DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `FK_COM_VEN` (`code_v`),
  KEY `FK_COM_CLI` (`code_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`numero`, `code_v`, `code_c`, `date_livraison`, `date_commande`, `total_ht`, `total_tva`, `etat`) VALUES
(10178, 15, 47, '2008-09-05', '2008-09-05', '177.00', '9.75', 1),
(10179, 15, 47, '2008-10-13', '2008-10-13', '192.00', '10.50', 1),
(10180, 15, 48, '2008-10-10', '2008-10-10', '98.00', '5.40', 1),
(10181, 15, 49, '2008-10-11', '2008-10-11', '175.00', '9.60', 1),
(10182, 15, 50, '2008-10-11', '2008-10-11', '116.00', '6.40', 1),
(10183, 15, 51, '2008-10-11', '2008-10-11', '118.00', '6.50', 1),
(10184, 15, 52, '2008-10-12', '2008-10-12', '102.00', '5.60', 1),
(10185, 15, 53, '2008-10-12', '2008-10-12', '19.00', '1.05', 1),
(10186, 15, 54, '2008-10-10', '2008-10-10', '101.00', '5.55', 1),
(10187, 15, 55, '2008-10-10', '2008-10-10', '65.00', '3.58', 1),
(10188, 17, 56, '2008-10-12', '2008-10-12', '121.00', '6.66', 1),
(10189, 17, 57, '2008-10-10', '2008-10-10', '110.00', '6.05', 1),
(10190, 17, 58, '2008-10-13', '2008-10-13', '123.00', '6.76', 1),
(10191, 17, 59, '2008-10-13', '2008-10-13', '107.50', '5.91', 1),
(10192, 17, 60, '2008-11-10', '2008-11-10', '237.00', '13.04', 1),
(10193, 17, 50, NULL, NULL, '237.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commission`
--

DROP TABLE IF EXISTS `commission`;
CREATE TABLE IF NOT EXISTS `commission` (
  `Code` varchar(2) NOT NULL,
  `Libcom` varchar(20) DEFAULT NULL,
  `Pourc` int DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `commission`
--

INSERT INTO `commission` (`Code`, `Libcom`, `Pourc`) VALUES
('A', 'LibA', 5),
('B', 'LibB', 10);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

DROP TABLE IF EXISTS `ligne_commande`;
CREATE TABLE IF NOT EXISTS `ligne_commande` (
  `nocom` int NOT NULL,
  `numero_ligne` int NOT NULL,
  `reference` varchar(4) NOT NULL,
  `quantite_demandee` int DEFAULT NULL,
  `pourventageRemise` decimal(2,1) DEFAULT '0.0',
  PRIMARY KEY (`nocom`,`numero_ligne`),
  KEY `FK_LC_PRO` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `ligne_commande`
--

INSERT INTO `ligne_commande` (`nocom`, `numero_ligne`, `reference`, `quantite_demandee`, `pourventageRemise`) VALUES
(10178, 1, '4015', 1, '0.0'),
(10178, 2, '4025', 1, '0.0'),
(10178, 3, '4031', 1, '0.0'),
(10178, 4, '4036', 1, '0.0'),
(10178, 5, '4004', 1, '0.0'),
(10178, 6, '4053', 1, '0.0'),
(10178, 7, '4042', 1, '0.0'),
(10179, 1, '4031', 1, '0.0'),
(10179, 2, '4032', 1, '0.0'),
(10179, 3, '4037', 1, '0.0'),
(10179, 4, '4002', 1, '0.0'),
(10179, 5, '4054', 1, '0.0'),
(10179, 6, '4057', 1, '0.0'),
(10179, 7, '1007', 2, '0.0'),
(10180, 1, '4053', 1, '0.0'),
(10180, 2, '4055', 1, '0.0'),
(10180, 3, '3016', 1, '0.0'),
(10181, 1, '4020', 1, '0.0'),
(10181, 2, '4026', 1, '0.0'),
(10181, 3, '4045', 1, '0.0'),
(10181, 4, '4002', 2, '0.0'),
(10181, 5, '4012', 2, '0.0'),
(10181, 6, '4054', 1, '0.0'),
(10182, 1, '4034', 1, '0.0'),
(10182, 2, '4012', 1, '0.0'),
(10182, 3, '4055', 1, '0.0'),
(10182, 4, '4057', 1, '0.0'),
(10183, 1, '4025', 1, '0.0'),
(10183, 2, '4027', 1, '0.0'),
(10183, 3, '4029', 1, '0.0'),
(10183, 4, '4039', 1, '0.0'),
(10183, 5, '4013', 1, '0.0'),
(10184, 1, '4025', 1, '0.0'),
(10184, 2, '4031', 2, '0.0'),
(10184, 3, '4004', 1, '0.0'),
(10185, 1, '4002', 1, '0.0'),
(10186, 1, '1016', 1, '0.0'),
(10186, 2, '3002', 2, '0.0'),
(10187, 1, '4015', 1, '0.0'),
(10187, 2, '4010', 1, '0.0'),
(10187, 3, '4011', 1, '0.0'),
(10188, 1, '1016', 2, '0.0'),
(10188, 2, '4052', 1, '0.0'),
(10188, 3, '1004', 1, '0.0'),
(10189, 1, '1017', 1, '0.0'),
(10189, 2, '4016', 1, '0.0'),
(10189, 3, '4031', 1, '0.0'),
(10189, 4, '4033', 1, '0.0'),
(10190, 1, '3010', 1, '0.0'),
(10190, 2, '4015', 1, '0.0'),
(10190, 3, '4032', 1, '0.0'),
(10190, 4, '4053', 1, '0.0'),
(10191, 1, '1016', 1, '0.0'),
(10191, 2, '4052', 1, '0.0'),
(10191, 3, '4013', 1, '0.0'),
(10191, 4, '1015', 1, '0.0'),
(10192, 1, '4025', 1, '0.0'),
(10192, 2, '4030', 1, '0.0'),
(10192, 3, '1017', 1, '0.0'),
(10192, 4, '3016', 1, '0.0'),
(10192, 5, '4031', 1, '0.0'),
(10192, 6, '3017', 1, '0.0'),
(10192, 7, '4022', 1, '0.0'),
(10192, 8, '4052', 1, '0.0'),
(10192, 9, '3004', 1, '0.0'),
(10192, 10, '4019', 1, '0.0');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `reference` varchar(4) NOT NULL,
  `designation` varchar(40) DEFAULT NULL,
  `quantite` int DEFAULT NULL,
  `descriptif` varchar(1) DEFAULT NULL,
  `prix_unitaire_ht` decimal(4,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `poids_piece` int DEFAULT NULL,
  PRIMARY KEY (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`reference`, `designation`, `quantite`, `descriptif`, `prix_unitaire_ht`, `stock`, `poids_piece`) VALUES
('1004', 'FEU DE JOIE LIQUEUR ASSORT', 500, 'G', '23.00', 50, 0),
('1007', 'TENDRE FRUIT', 500, 'G', '18.00', 120, 0),
('1015', 'CARACAO', 500, 'G', '24.50', 50, 0),
('1016', 'COKTAIL', 500, 'G', '33.00', 40, 0),
('1017', 'ORFIN', 500, 'G', '32.00', 40, 0),
('3002', 'CARRE PECTO', 500, 'G', '29.00', 40, 0),
('3004', 'ZAN ALESAN', 25, 'P', '15.00', 50, 20),
('3010', 'PATES GRISES', 500, 'G', '35.00', 100, 0),
('3016', 'CARAMEL AU LAIT', 500, 'G', '20.00', 100, 0),
('3017', 'VIOLETTE TRADITION', 500, 'G', '25.00', 100, 0),
('4002', 'SUCETTE BOULE FRUIT', 25, 'P', '14.00', 100, 40),
('4004', 'SUCETTE BOULE POP', 25, 'P', '21.00', 50, 40),
('4010', 'CARAMBAR', 40, 'P', '18.00', 20, 15),
('4011', 'CARANOUGA', 40, 'P', '18.00', 100, 15),
('4012', 'CARAMBAR FRUIT', 40, 'P', '18.00', 100, 15),
('4013', 'CARAMBAR COLA', 40, 'P', '18.00', 50, 15),
('4015', 'SOURIS REGLISSE', 500, 'G', '24.00', 50, 0),
('4016', 'SOURIS CHOCO', 500, 'G', '24.00', 50, 0),
('4019', 'SCHTROUMPFS VERTS', 500, 'G', '24.00', 50, 0),
('4020', 'CROCODILE', 500, 'G', '21.00', 50, 0),
('4022', 'PERSICA', 500, 'G', '28.00', 20, 0),
('4025', 'COLA CITRIQUE', 500, 'G', '21.00', 50, 0),
('4026', 'COLA LISSE', 500, 'G', '25.00', 50, 0),
('4027', 'BANANE', 1000, 'G', '23.00', 20, 0),
('4029', 'OEUF SUR LE PLAT', 500, 'G', '25.00', 20, 0),
('4030', 'FRAISIBUS', 500, 'G', '25.00', 50, 0),
('4031', 'FRAISE TSOIN-TSOIN', 500, 'G', '25.00', 40, 0),
('4032', 'METRE REGLISSE ROULE', 500, 'G', '19.00', 50, 0),
('4033', 'MAXI COCOBAT', 1000, 'G', '19.00', 20, 0),
('4034', 'DENTS VAMPIRE', 500, 'G', '22.00', 50, 0),
('4036', 'LANGUE COLA CITRIQUE', 500, 'G', '21.00', 40, 0),
('4037', 'OURSON CANDI', 1000, 'G', '21.00', 50, 0),
('4039', 'SERPENT ACIDULE', 500, 'G', '21.00', 20, 0),
('4042', 'TETINE CANDI', 500, 'G', '20.00', 40, 0),
('4045', 'COLLIER PECCOS', 15, 'P', '21.00', 50, 50),
('4052', 'TWIST ASSORTIS', 500, 'G', '22.00', 50, 0),
('4053', 'OURSON GUIMAUVE', 500, 'G', '35.00', 10, 0),
('4054', 'BOULE COCO MULER', 500, 'G', '34.00', 10, 0),
('4055', 'COCOMALLOW', 500, 'G', '33.00', 10, 0),
('4057', 'CRIC-CRAC', 500, 'G', '33.00', 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

DROP TABLE IF EXISTS `vendeur`;
CREATE TABLE IF NOT EXISTS `vendeur` (
  `code_v` int NOT NULL,
  `nom` varchar(35) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `adresse` varchar(40) DEFAULT NULL,
  `cp` char(5) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `code_com` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`code_v`),
  KEY `FK_VEN_COMMISSION` (`code_com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `vendeur`
--

INSERT INTO `vendeur` (`code_v`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `telephone`, `code_com`) VALUES
(15, 'FILLARD', 'Sylvain', '77 rue du l\'Adriatique', '51100', 'REIMS', '0326122525', 'A'),
(17, 'BAUDOT', 'Marc', '16 rue de Reims', '51000', 'CHALONS EN CHAMPAGNE', '0326105859', 'B');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_COM_CLI` FOREIGN KEY (`code_c`) REFERENCES `client` (`code_c`),
  ADD CONSTRAINT `FK_COM_VEN` FOREIGN KEY (`code_v`) REFERENCES `vendeur` (`code_v`);

--
-- Contraintes pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD CONSTRAINT `FK_LC_COM` FOREIGN KEY (`nocom`) REFERENCES `commande` (`numero`),
  ADD CONSTRAINT `FK_LC_PRO` FOREIGN KEY (`reference`) REFERENCES `produit` (`reference`);

--
-- Contraintes pour la table `vendeur`
--
ALTER TABLE `vendeur`
  ADD CONSTRAINT `FK_VEN_COMMISSION` FOREIGN KEY (`code_com`) REFERENCES `commission` (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DELIMITER @
create function AFFICHEDATE(Unedate DATE) RETURNS VARCHAR(8)
    BEGIN
        DECLARE Mavar VARCHAR(8);
        CASE DAYOFWEEK(Unedate)
        WHEN 1 THEN SET Mavar ='Samedi';
        WHEN 6 THEN SET Mavar ='Vendredi';
        WHEN 5 THEN SET Mavar ='Jeudi';
        WHEN 4 THEN SET Mavar ='Mercredi';
        WHEN 3 THEN SET Mavar ='Mardi';
        WHEN 2 THEN SET Mavar ='Dimanche';
        WHEN 1 THEN SET Mavar ='Lundi';
        END CASE;
        RETURN Mavar; 
    END;
    @
  DELIMITER;


DELIMITER @
create function AFFICHEDATE1(Unedate DATE) RETURNS VARCHAR(50)
    BEGIN
        DECLARE Mavar VARCHAR(50);
        CASE MONTH(Unedate)
          WHEN 1 THEN SET Mavar = 'Janvier';
          WHEN 2 THEN SET Mavar = 'Fevrier';
          WHEN 3 THEN SET Mavar = 'Mars';
          WHEN 4 THEN SET Mavar = 'Avril';
          WHEN 5 THEN SET Mavar = 'Mai';
          WHEN 6 THEN SET Mavar = 'Juin';
          WHEN 7 THEN SET Mavar = 'Juillet';
          WHEN 8 THEN SET Mavar = 'Aout';
          WHEN 9 THEN SET Mavar = 'Septembre';
          WHEN 10 THEN SET Mavar = 'Octobre';
          WHEN 11 THEN SET Mavar = 'Novembre';
          WHEN 12 THEN SET Mavar = 'Decembre';
        END CASE;

        CASE DAYOFWEEK(Unedate)
          WHEN 1 THEN SET Mavar =CONCAT('Samedi',' ', DAY(Unedate),' ', Mavar,' ', YEAR(Unedate));
          WHEN 6 THEN SET Mavar =CONCAT('Vendredi',' ', DAY(Unedate),' ', Mavar,' ', YEAR(Unedate));
          WHEN 5 THEN SET Mavar =CONCAT('Jeudi',' ', DAY(Unedate),' ', Mavar,' ', YEAR(Unedate));
          WHEN 4 THEN SET Mavar =CONCAT('Mercredi',' ', DAY(Unedate),' ', Mavar,' ', YEAR(Unedate));
          WHEN 3 THEN SET Mavar =CONCAT('Mardi',' ', DAY(Unedate),' ', Mavar,' ', YEAR(Unedate));
          WHEN 2 THEN SET Mavar =CONCAT('Lundi',' ', DAY(Unedate),' ', Mavar,' ', YEAR(Unedate));
          WHEN 1 THEN SET Mavar =CONCAT('Dimanche',' ', DAY(Unedate),' ', Mavar,' ', YEAR(Unedate));
        END CASE;
        RETURN Mavar; 
    END;
    @
DELIMITER ;
-- les fonctions sont propres à une seule BDD elles ne se propagent pas

DELIMITER @
create function TTC(UnMontant decimal(6.2)) RETURNS decimal(6.2)
  BEGIN
    RETURN UnMontant*1.20;
  END;
  @
DELIMITER ;

-- step 1
ALTER TABLE CLIENT
ADD Nbcomm integer;

desc CLIENT;

Select * from Client;

-- step 2
DELIMITER $$
DROP PROCEDURE IF EXISTS AJOUTNBCOM;
CREATE PROCEDURE AJOUTNBCOM() 
      BEGIN
          ALTER TABLE CLIENT
          ADD Nbcomm integer DEFAULT 0;
          desc CLIENT;
          Select * from Client;
          UPDATE CLIENT SET Nbcomm = (select COUNT(*) from commande where code_c = client.code_c);
          Select * from Client;
      END
    $$
      DELIMITER ;

-- step 3
DELIMITER $$
DROP TRIGGER IF EXISTS IncNBCOM;
CREATE TRIGGER IncNBCOM
AFTER INSERT ON commande
  FOR EACH ROW
      BEGIN
          UPDATE vendeur SET Nbcomm = Nbcomm + 1 WHERE code_v = NEW.code_v
      END;
    $$
      DELIMITER;

-- step 4
DELIMITER $$
DROP TRIGGER IF EXISTS DecrNBCOM;
CREATE TRIGGER DecrNBCOM
AFTER DELETE ON commande
  FOR EACH ROW
      BEGIN
          UPDATE vendeur SET Nbcomm = Nbcomm - 1 WHERE code_v = OLD.code_v
      END;
    $$
      DELIMITER;

SELECT * FROM commande;
SELECT * FROM vendeur;
INSERT INTO commande VALUES(10197,15,47,'2008-09-05','2008-09-05',177.00, 9.75,1)
SELECT * FROM commande;