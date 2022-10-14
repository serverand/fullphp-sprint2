-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.22-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para optica
DROP DATABASE IF EXISTS `optica`;
CREATE DATABASE IF NOT EXISTS `optica` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `optica`;

-- Volcando estructura para tabla optica.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `adresa` varchar(150) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `data_registre` date DEFAULT curdate(),
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla optica.clients: ~100 rows (aproximadamente)
INSERT INTO `clients` (`id`, `nom`, `adresa`, `telefon`, `email`, `data_registre`, `client_id`) VALUES
	(1, 'Merola Brame', 'Vidon', '4122644932', 'mbrame0@forbes.com', '2022-09-23', 42),
	(2, 'Dyanna Vanichev', 'Schlimgen', '7199573525', NULL, '2022-06-24', NULL),
	(3, 'Toni Chinnick', 'Mifflin', '6628265599', 'tchinnick2@discovery.com', '2021-11-03', NULL),
	(4, 'Vittorio Wickey', 'Rieder', '2778401914', NULL, '2022-02-20', NULL),
	(5, 'Wileen Kingscote', 'Shasta', '5207915298', 'wkingscote4@eventbrite.com', '2022-03-28', NULL),
	(6, 'Lance Alker', 'Darwin', '6161668285', 'lalker5@purevolume.com', '2022-01-06', NULL),
	(7, 'Dulcy Jurewicz', 'Oakridge', '4998768716', NULL, '2022-01-09', 11),
	(8, 'Pierette Bedford', 'Westport', '3017202484', NULL, '2022-09-07', NULL),
	(9, 'Fina Schoenfisch', 'Northwestern', '7415571913', 'fschoenfisch8@arizona.edu', '2022-06-08', 94),
	(10, 'Jenine Stoyell', '5th', '3794336482', 'jstoyell9@sbwire.com', '2022-07-10', NULL),
	(11, 'Marion Alders', 'Bowman', '9512230569', 'maldersa@miibeian.gov.cn', '2022-09-23', NULL),
	(12, 'Erny Fluger', 'Hooker', '9077037753', NULL, '2022-04-09', 61),
	(13, 'Walsh Bagenal', 'Lillian', '2024302318', 'wbagenalc@yelp.com', '2022-06-25', 91),
	(14, 'Fanni Erdis', 'Mendota', '2416821050', 'ferdisd@google.pl', '2022-07-19', NULL),
	(15, 'Hobie Handyside', 'Valley Edge', '7284597149', 'hhandysidee@tiny.cc', '2021-10-17', 12),
	(16, 'Bell MacCawley', 'Maple', '2738267897', NULL, '2021-11-13', NULL),
	(17, 'Arny Fildery', 'Homewood', '5166292019', 'afilderyg@google.pl', '2021-10-17', NULL),
	(18, 'Kathryn Cosens', 'Summerview', '5083792271', 'kcosensh@plala.or.jp', '2022-03-27', NULL),
	(19, 'Cristina Greader', 'Cody', '2177796388', NULL, '2022-06-29', NULL),
	(20, 'Gilles Kunkel', 'Debs', '2946167967', 'gkunkelj@a8.net', '2022-06-14', NULL),
	(21, 'Gerald Fellini', 'Fallview', '9167465699', NULL, '2022-03-27', NULL),
	(22, 'Bordy Hing', 'Kenwood', '1743842290', 'bhingl@booking.com', '2022-01-27', NULL),
	(23, 'Lorne Bahde', 'Prairieview', '6811740125', NULL, '2022-02-09', 69),
	(24, 'Ulrich Befroy', 'Luster', '3648743653', 'ubefroyn@princeton.edu', '2022-09-04', 68),
	(25, 'Flin Coppledike', 'Trailsway', '1972889229', 'fcoppledikeo@forbes.com', '2022-10-06', NULL),
	(26, 'Genna Brome', 'Jenifer', '7193830386', NULL, '2022-05-20', NULL),
	(27, 'Bee McGrah', 'Petterle', '4938238294', 'bmcgrahq@icio.us', '2022-05-09', 19),
	(28, 'Corette Liston', 'Schlimgen', '9081686517', 'clistonr@google.es', '2022-06-07', 52),
	(29, 'Carson Tenby', 'Hoepker', '1981345239', 'ctenbys@com.com', '2022-07-17', NULL),
	(30, 'Joannes Spriddle', 'Jackson', '4244010845', 'jspriddlet@amazon.co.jp', '2022-08-16', NULL),
	(31, 'Retha Josephson', 'Union', '9334117112', 'rjosephsonu@mac.com', '2022-06-02', 96),
	(32, 'Cesare Fever', 'Superior', '1125296164', 'cfeverv@howstuffworks.com', '2022-10-05', NULL),
	(33, 'Arvy Ciccotto', 'Columbus', '9196683169', NULL, '2022-04-11', NULL),
	(34, 'Isobel Cumbers', 'Basil', '2801632645', NULL, '2021-12-27', NULL),
	(35, 'Katuscha Tynewell', 'Holy Cross', '9742681162', NULL, '2021-10-16', NULL),
	(36, 'Barnebas Kahan', 'Miller', '5412690301', 'bkahanz@cocolog-nifty.com', '2022-02-25', 87),
	(37, 'Sheffield Swetland', 'Jana', '5163334005', 'sswetland10@cnn.com', '2022-01-14', 33),
	(38, 'Darcee Prime', 'Prairieview', '6105505652', 'dprime11@mapy.cz', '2022-01-01', 2),
	(39, 'Venita Tonn', 'Maple Wood', '2848465588', 'vtonn12@hubpages.com', '2021-12-20', NULL),
	(40, 'Jonis Jurgensen', 'Fuller', '2535353354', 'jjurgensen13@vk.com', '2022-07-07', 19),
	(41, 'Elane Hessle', 'Swallow', '5065465545', 'ehessle14@jiathis.com', '2022-03-22', 23),
	(42, 'Quintilla Pockett', 'Norway Maple', '6332453594', 'qpockett15@scientificamerican.com', '2021-12-08', NULL),
	(43, 'Alexis Blacksland', 'Buell', '4739527975', 'ablacksland16@craigslist.org', '2022-03-07', NULL),
	(44, 'Madeleine Merrydew', 'Northview', '2073113847', 'mmerrydew17@prnewswire.com', '2022-03-22', NULL),
	(45, 'Jorry Scholig', 'Carberry', '1215452706', 'jscholig18@mozilla.com', '2021-10-19', 98),
	(46, 'Agathe Premble', 'Gale', '1613018318', 'apremble19@exblog.jp', '2022-03-03', 22),
	(47, 'Sherline McTavish', 'Hoepker', '4317342704', 'smctavish1a@webmd.com', '2022-09-24', NULL),
	(48, 'Mallissa Snaith', 'Mallard', '2832739027', NULL, '2022-05-28', 46),
	(49, 'Leslie Donaher', 'Manley', '7333458153', NULL, '2022-05-25', NULL),
	(50, 'Vinnie Barrass', 'Pawling', '8043203836', 'vbarrass1d@is.gd', '2022-08-27', 31),
	(51, 'Janeen Forkan', 'Barnett', '7584941849', 'jforkan1e@squarespace.com', '2021-12-13', 36),
	(52, 'Kip Whyteman', 'Old Shore', '9351429013', 'kwhyteman1f@tiny.cc', '2021-11-25', NULL),
	(53, 'Arlan Beardow', 'Coleman', '2737240318', NULL, '2022-01-31', 38),
	(54, 'Hasty Mephan', 'Heath', '3487827512', 'hmephan1h@istockphoto.com', '2022-04-09', 38),
	(55, 'Britt Willoughway', 'Vernon', '4543445368', 'bwilloughway1i@xrea.com', '2022-02-01', 98),
	(56, 'Geno Liddall', 'Transport', '5213538915', 'gliddall1j@skyrock.com', '2022-01-09', NULL),
	(57, 'Humberto Mannion', 'Surrey', '7662431885', 'hmannion1k@ft.com', '2021-10-25', NULL),
	(58, 'Rowland Hallin', 'Miller', '7025815751', 'rhallin1l@phoca.cz', '2022-09-10', NULL),
	(59, 'Laurella Boxe', 'Namekagon', '8287350288', 'lboxe1m@weibo.com', '2022-06-26', 86),
	(60, 'Eddi Pleasaunce', 'American', '3989103515', 'epleasaunce1n@wikia.com', '2022-02-19', 24),
	(61, 'Jack Smitheram', 'Colorado', '4874428730', NULL, '2022-02-07', 1),
	(62, 'Almeta Urien', 'Menomonie', '1408632221', 'aurien1p@google.fr', '2022-02-26', NULL),
	(63, 'Ax Berget', 'Brickson Park', '4572001053', 'aberget1q@un.org', '2022-03-27', 55),
	(64, 'Joly Thornewell', 'Boyd', '8196812145', 'jthornewell1r@tumblr.com', '2022-06-22', NULL),
	(65, 'Aprilette Cosgreave', 'Sage', '4245386660', NULL, '2022-03-24', NULL),
	(66, 'Debbi MacAlpine', 'Pearson', '7037797019', 'dmacalpine1t@canalblog.com', '2022-07-31', NULL),
	(67, 'Alano Kleinhausen', 'Bunker Hill', '8762166520', 'akleinhausen1u@moonfruit.com', '2021-11-17', NULL),
	(68, 'Ula O\'Rourke', 'Hovde', '7643097036', 'uorourke1v@nytimes.com', '2022-01-10', 34),
	(69, 'Paul Hull', 'Golf View', '4625825739', 'phull1w@tumblr.com', '2022-03-10', NULL),
	(70, 'Cozmo Brobeck', 'Crowley', '2358559707', NULL, '2022-02-01', 49),
	(71, 'Adrianne Nolte', 'Golf View', '1446119595', 'anolte1y@auda.org.au', '2021-10-14', NULL),
	(72, 'Gary Brightey', 'Prairie Rose', '7159134222', 'gbrightey1z@artisteer.com', '2021-11-01', 54),
	(73, 'Carny Colbourn', 'Gerald', '9977918327', NULL, '2021-10-11', NULL),
	(74, 'Wendie Leppo', 'Dawn', '1816804021', NULL, '2022-03-04', NULL),
	(75, 'Sigismund Harnell', 'Spaight', '4107137133', NULL, '2022-01-19', 69),
	(76, 'Brennen Blade', 'Debra', '4449299623', NULL, '2022-02-17', NULL),
	(77, 'Wilow Scotford', 'Macpherson', '3219877581', 'wscotford24@nyu.edu', '2022-05-26', NULL),
	(78, 'Dayna Stych', 'Lakewood Gardens', '9206331833', 'dstych25@paypal.com', '2022-04-06', NULL),
	(79, 'Ginevra Belchamber', 'Esch', '4175131426', 'gbelchamber26@cbc.ca', '2021-10-27', NULL),
	(80, 'Dean Columbine', 'Northport', '6258380040', 'dcolumbine27@lycos.com', '2022-07-24', 38),
	(81, 'Marni Caron', 'Troy', '1063436293', 'mcaron28@webnode.com', '2021-11-18', 49),
	(82, 'Balduin Simmank', 'Coleman', '7876030261', 'bsimmank29@wisc.edu', '2021-11-08', 94),
	(83, 'Tandie Keyse', 'Corry', '1879818601', 'tkeyse2a@ebay.co.uk', '2021-11-04', NULL),
	(84, 'Gothart Giacobbo', 'Red Cloud', '1699325783', 'ggiacobbo2b@typepad.com', '2022-03-08', NULL),
	(85, 'Jeanna Meers', 'Dwight', '9908534192', 'jmeers2c@wufoo.com', '2021-11-06', 18),
	(86, 'Effie Colin', 'Hanover', '2525597473', 'ecolin2d@europa.eu', '2022-07-23', 25),
	(87, 'Carry Abrey', 'West', '9457668796', 'cabrey2e@google.com', '2022-03-28', NULL),
	(88, 'Claiborn Roffey', 'Reinke', '5422356180', 'croffey2f@ustream.tv', '2021-12-14', NULL),
	(89, 'Rocky Deesly', 'Emmet', '6968888383', NULL, '2022-01-22', 64),
	(90, 'Theodora Foyster', 'Waywood', '7627421008', 'tfoyster2h@vimeo.com', '2022-02-20', 74),
	(91, 'Lyndsie Merrin', 'Waywood', '3808814713', 'lmerrin2i@webnode.com', '2022-05-10', NULL),
	(92, 'Trixy Deighton', 'Loftsgordon', '9819726587', 'tdeighton2j@newsvine.com', '2022-09-28', NULL),
	(93, 'Ingaberg Marsay', 'Monterey', '7403930187', NULL, '2022-07-27', NULL),
	(94, 'Almira Copnall', 'Paget', '6712695227', NULL, '2022-07-20', 97),
	(95, 'Crysta Bracer', 'Stone Corner', '1073836601', 'cbracer2m@narod.ru', '2022-03-21', 89),
	(96, 'Kriste Althorpe', 'Elka', '2613047218', 'kalthorpe2n@bluehost.com', '2021-11-27', NULL),
	(97, 'Devina Schlagman', 'Briar Crest', '1007227905', 'dschlagman2o@list-manage.com', '2021-11-13', 5),
	(98, 'Etta Di Francesco', 'Blue Bill Park', '2697827744', 'edi2p@ftc.gov', '2022-07-15', NULL),
	(99, 'Gustave Baniard', 'Valley Edge', '9765519815', 'gbaniard2q@epa.gov', '2022-01-08', NULL),
	(100, 'Joycelin Raddish', 'Hallows', '7958399545', 'jraddish2r@instagram.com', '2022-01-18', NULL);

-- Volcando estructura para tabla optica.clients_ulleres
DROP TABLE IF EXISTS `clients_ulleres`;
CREATE TABLE IF NOT EXISTS `clients_ulleres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `ullera_id` int(11) NOT NULL,
  `empleat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla optica.clients_ulleres: ~100 rows (aproximadamente)
INSERT INTO `clients_ulleres` (`id`, `client_id`, `ullera_id`, `empleat_id`) VALUES
	(1, 52, 7, 1),
	(2, 37, 63, 4),
	(3, 31, 84, 4),
	(4, 15, 56, 4),
	(5, 93, 95, 3),
	(6, 31, 85, 2),
	(7, 87, 91, 1),
	(8, 66, 58, 4),
	(9, 17, 17, 4),
	(10, 3, 71, 2),
	(11, 18, 34, 2),
	(12, 79, 24, 2),
	(13, 73, 69, 3),
	(14, 74, 18, 2),
	(15, 2, 50, 3),
	(16, 21, 36, 4),
	(17, 68, 53, 5),
	(18, 87, 47, 4),
	(19, 12, 100, 4),
	(20, 60, 70, 3),
	(21, 31, 29, 1),
	(22, 1, 3, 4),
	(23, 73, 62, 1),
	(24, 99, 14, 1),
	(25, 13, 75, 3),
	(26, 97, 96, 3),
	(27, 71, 51, 1),
	(28, 95, 37, 1),
	(29, 74, 38, 1),
	(30, 38, 77, 5),
	(31, 14, 26, 5),
	(32, 75, 55, 4),
	(33, 53, 42, 5),
	(34, 10, 68, 2),
	(35, 32, 57, 4),
	(36, 61, 93, 5),
	(37, 88, 99, 5),
	(38, 81, 82, 3),
	(39, 3, 41, 3),
	(40, 71, 72, 5),
	(41, 63, 83, 4),
	(42, 72, 98, 4),
	(43, 78, 20, 1),
	(44, 82, 86, 1),
	(45, 43, 13, 1),
	(46, 45, 76, 2),
	(47, 83, 25, 1),
	(48, 15, 9, 1),
	(49, 23, 64, 3),
	(50, 83, 16, 1),
	(51, 6, 32, 3),
	(52, 23, 44, 5),
	(53, 83, 27, 5),
	(54, 16, 54, 1),
	(55, 92, 12, 4),
	(56, 38, 58, 1),
	(57, 5, 81, 5),
	(58, 4, 10, 1),
	(59, 24, 40, 3),
	(60, 33, 19, 4),
	(61, 69, 73, 3),
	(62, 95, 45, 3),
	(63, 91, 11, 2),
	(64, 12, 65, 1),
	(65, 91, 90, 5),
	(66, 86, 8, 5),
	(67, 75, 87, 1),
	(68, 29, 31, 3),
	(69, 75, 30, 1),
	(70, 83, 52, 4),
	(71, 70, 97, 5),
	(72, 18, 5, 1),
	(73, 32, 23, 2),
	(74, 12, 4, 4),
	(75, 23, 6, 5),
	(76, 72, 21, 4),
	(77, 70, 35, 2),
	(78, 75, 67, 1),
	(79, 31, 89, 5),
	(80, 74, 88, 1),
	(81, 1, 1, 1),
	(82, 1, 2, 4),
	(83, 79, 46, 1),
	(84, 99, 80, 3),
	(85, 22, 33, 4),
	(86, 48, 15, 3),
	(87, 1, 60, 4),
	(88, 29, 79, 3),
	(89, 54, 48, 2),
	(90, 82, 66, 1),
	(91, 68, 94, 4),
	(92, 5, 74, 5),
	(93, 31, 28, 5),
	(94, 30, 49, 2),
	(95, 5, 39, 4),
	(96, 91, 43, 2),
	(97, 18, 92, 4),
	(98, 26, 61, 4),
	(99, 86, 78, 1),
	(100, 58, 22, 2);

-- Volcando estructura para tabla optica.empleat
DROP TABLE IF EXISTS `empleat`;
CREATE TABLE IF NOT EXISTS `empleat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla optica.empleat: ~5 rows (aproximadamente)
INSERT INTO `empleat` (`id`, `nom`) VALUES
	(1, 'Gay Rendle'),
	(2, 'Cyrillus Crilly'),
	(3, 'Arden Tanfield'),
	(4, 'Christoper Reddihough'),
	(5, 'Yolanthe Davenport');

-- Volcando estructura para tabla optica.marca_ulleres
DROP TABLE IF EXISTS `marca_ulleres`;
CREATE TABLE IF NOT EXISTS `marca_ulleres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveidor_id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla optica.marca_ulleres: ~10 rows (aproximadamente)
INSERT INTO `marca_ulleres` (`id`, `proveidor_id`, `nom`) VALUES
	(1, 1, 'Ray-Ban'),
	(2, 1, 'Oakley'),
	(3, 1, 'Polaroid'),
	(4, 1, 'Carrera'),
	(5, 1, 'Arnette'),
	(6, 2, 'Tous'),
	(7, 2, 'Police'),
	(8, 2, 'Carolina Herrera'),
	(9, 3, 'Tag Heuer'),
	(10, 3, 'Timberland');

-- Volcando estructura para tabla optica.proveidor
DROP TABLE IF EXISTS `proveidor`;
CREATE TABLE IF NOT EXISTS `proveidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `carrer` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `pis` int(2) DEFAULT NULL,
  `porta` int(2) DEFAULT NULL,
  `ciutat` varchar(50) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `nif` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla optica.proveidor: ~3 rows (aproximadamente)
INSERT INTO `proveidor` (`id`, `nom`, `carrer`, `numero`, `pis`, `porta`, `ciutat`, `cp`, `pais`, `telefon`, `fax`, `nif`) VALUES
	(1, 'Murazik', 'Clemons', '82', 5, 3, 'Bojen Kulon', '21789', 'Indonesia', '815 191 1559', '165 453 5798', '466951611-6'),
	(2, 'Ward LLC', 'Oneill', '79', 1, 4, 'Karlskrona', '81711', 'Sweden', '651 443 9754', NULL, '925764469-3'),
	(3, 'Corkery', 'Declaration', '10', 2, 4, 'Tanza', '44829', 'Philippines', '721 344 5445', '128 809 1729', '800612592-9');

-- Volcando estructura para tabla optica.ulleres
DROP TABLE IF EXISTS `ulleres`;
CREATE TABLE IF NOT EXISTS `ulleres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca_id` int(11) NOT NULL,
  `graduacio_esquerra` float(4,2) NOT NULL,
  `graduacio_dreta` float(4,2) NOT NULL,
  `tipus_muntura` varchar(20) NOT NULL,
  `color_muntura` varchar(20) NOT NULL,
  `color_vidre_esquerra` varchar(20) NOT NULL,
  `color_vidre_dreta` varchar(20) NOT NULL,
  `preu` float(6,2) NOT NULL,
  `dia_compra` datetime DEFAULT curdate(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla optica.ulleres: ~100 rows (aproximadamente)
INSERT INTO `ulleres` (`id`, `marca_id`, `graduacio_esquerra`, `graduacio_dreta`, `tipus_muntura`, `color_muntura`, `color_vidre_esquerra`, `color_vidre_dreta`, `preu`, `dia_compra`) VALUES
	(1, 5, 3.66, 2.64, 'metàl·lica', 'Pink', 'Crimson', 'Aquamarine', 916.58, '2022-07-13 00:00:00'),
	(2, 2, 0.05, 0.25, 'metàl·lica', 'Fuscia', 'Indigo', 'Aquamarine', 926.53, '2022-04-22 00:00:00'),
	(3, 8, 1.75, 3.25, 'flotant', 'Maroon', 'Aquamarine', 'Puce', 741.80, '2022-02-04 00:00:00'),
	(4, 1, 2.13, 2.97, 'metàl·lica', 'Teal', 'Blue', 'Aquamarine', 379.48, '2022-04-21 00:00:00'),
	(5, 3, 0.50, 1.75, 'metàl·lica', 'Orange', 'Turquoise', 'Indigo', 101.04, '2021-12-25 00:00:00'),
	(6, 8, 1.64, 0.08, 'flotant', 'Violet', 'Pink', 'Teal', 926.09, '2022-10-01 00:00:00'),
	(7, 6, 0.88, 3.65, 'metàl·lica', 'Indigo', 'Fuscia', 'Maroon', 410.32, '2021-10-23 00:00:00'),
	(8, 2, 2.80, 1.38, 'flotant', 'Green', 'Puce', 'Indigo', 217.35, '2022-07-24 00:00:00'),
	(9, 2, 2.79, 2.29, 'metàl·lica', 'Purple', 'Yellow', 'Pink', 411.32, '2022-06-23 00:00:00'),
	(10, 7, 2.27, 1.61, 'metàl·lica', 'Fuscia', 'Orange', 'Teal', 875.07, '2022-05-27 00:00:00'),
	(11, 3, 2.64, 3.91, 'metàl·lica', 'Teal', 'Purple', 'Turquoise', 102.86, '2022-03-29 00:00:00'),
	(12, 5, 0.83, 0.59, 'metàl·lica', 'Teal', 'Puce', 'Blue', 488.24, '2022-04-04 00:00:00'),
	(13, 4, 2.35, 1.41, 'metàl·lica', 'Blue', 'Maroon', 'Teal', 239.64, '2022-06-06 00:00:00'),
	(14, 8, 1.48, 0.10, 'flotant', 'Yellow', 'Indigo', 'Fuscia', 416.48, '2022-02-11 00:00:00'),
	(15, 8, 2.39, 0.65, 'flotant', 'Maroon', 'Orange', 'Pink', 860.09, '2021-12-26 00:00:00'),
	(16, 3, 1.85, 2.82, 'metàl·lica', 'Violet', 'Turquoise', 'Violet', 301.95, '2022-08-11 00:00:00'),
	(17, 5, 2.90, 3.92, 'metàl·lica', 'Khaki', 'Indigo', 'Blue', 906.10, '2022-06-16 00:00:00'),
	(18, 4, 1.98, 2.40, 'metàl·lica', 'Goldenrod', 'Mauv', 'Aquamarine', 178.93, '2022-09-10 00:00:00'),
	(19, 7, 1.33, 2.99, 'flotant', 'Indigo', 'Yellow', 'Purple', 192.72, '2022-06-06 00:00:00'),
	(20, 4, 0.11, 1.13, 'metàl·lica', 'Turquoise', 'Purple', 'Violet', 965.32, '2022-07-20 00:00:00'),
	(21, 5, 2.90, 1.94, 'metàl·lica', 'Aquamarine', 'Indigo', 'Green', 484.47, '2022-02-16 00:00:00'),
	(22, 5, 2.84, 2.79, 'flotant', 'Maroon', 'Green', 'Purple', 153.13, '2021-12-16 00:00:00'),
	(23, 4, 2.48, 0.79, 'flotant', 'Goldenrod', 'Blue', 'Goldenrod', 382.67, '2021-10-16 00:00:00'),
	(24, 10, 3.13, 2.52, 'metàl·lica', 'Aquamarine', 'Teal', 'Puce', 336.31, '2022-02-06 00:00:00'),
	(25, 9, 1.17, 2.45, 'flotant', 'Turquoise', 'Green', 'Red', 666.71, '2021-11-29 00:00:00'),
	(26, 8, 2.94, 2.64, 'metàl·lica', 'Teal', 'Violet', 'Maroon', 855.44, '2021-11-18 00:00:00'),
	(27, 3, 2.36, 1.98, 'metàl·lica', 'Teal', 'Blue', 'Indigo', 571.83, '2022-01-28 00:00:00'),
	(28, 1, 0.29, 3.81, 'flotant', 'Red', 'Crimson', 'Red', 581.42, '2022-09-25 00:00:00'),
	(29, 8, 2.35, 2.32, 'flotant', 'Indigo', 'Khaki', 'Orange', 247.44, '2022-03-26 00:00:00'),
	(30, 7, 0.81, 3.07, 'flotant', 'Crimson', 'Turquoise', 'Pink', 552.58, '2022-08-19 00:00:00'),
	(31, 10, 1.01, 1.63, 'flotant', 'Indigo', 'Red', 'Fuscia', 566.53, '2021-12-25 00:00:00'),
	(32, 10, 3.02, 1.95, 'metàl·lica', 'Fuscia', 'Mauv', 'Teal', 640.30, '2022-06-18 00:00:00'),
	(33, 10, 0.80, 0.65, 'flotant', 'Crimson', 'Teal', 'Fuscia', 935.87, '2021-11-11 00:00:00'),
	(34, 1, 3.46, 3.66, 'metàl·lica', 'Mauv', 'Indigo', 'Goldenrod', 522.90, '2022-09-15 00:00:00'),
	(35, 6, 2.71, 3.63, 'flotant', 'Pink', 'Aquamarine', 'Mauv', 957.00, '2022-06-07 00:00:00'),
	(36, 4, 1.12, 1.29, 'metàl·lica', 'Maroon', 'Aquamarine', 'Indigo', 892.49, '2022-09-12 00:00:00'),
	(37, 9, 3.08, 0.35, 'metàl·lica', 'Aquamarine', 'Puce', 'Yellow', 128.26, '2022-02-20 00:00:00'),
	(38, 9, 0.04, 3.41, 'metàl·lica', 'Purple', 'Aquamarine', 'Red', 759.74, '2022-01-24 00:00:00'),
	(39, 8, 1.00, 2.71, 'metàl·lica', 'Turquoise', 'Purple', 'Violet', 199.46, '2021-10-19 00:00:00'),
	(40, 4, 0.14, 3.29, 'metàl·lica', 'Aquamarine', 'Maroon', 'Crimson', 526.26, '2022-08-04 00:00:00'),
	(41, 7, 3.56, 3.11, 'flotant', 'Pink', 'Indigo', 'Maroon', 602.65, '2021-12-26 00:00:00'),
	(42, 3, 0.07, 3.72, 'metàl·lica', 'Violet', 'Maroon', 'Red', 347.56, '2021-10-10 00:00:00'),
	(43, 10, 0.01, 2.94, 'metàl·lica', 'Red', 'Khaki', 'Red', 615.88, '2022-10-07 00:00:00'),
	(44, 8, 0.94, 0.88, 'flotant', 'Puce', 'Goldenrod', 'Turquoise', 353.03, '2022-04-03 00:00:00'),
	(45, 2, 2.99, 2.04, 'flotant', 'Maroon', 'Khaki', 'Crimson', 928.54, '2022-01-09 00:00:00'),
	(46, 8, 1.95, 0.88, 'metàl·lica', 'Orange', 'Violet', 'Blue', 727.33, '2022-08-16 00:00:00'),
	(47, 4, 1.82, 1.91, 'flotant', 'Blue', 'Goldenrod', 'Mauv', 897.68, '2021-11-14 00:00:00'),
	(48, 4, 3.76, 3.37, 'flotant', 'Maroon', 'Khaki', 'Green', 485.09, '2022-02-20 00:00:00'),
	(49, 1, 1.83, 0.87, 'flotant', 'Green', 'Purple', 'Teal', 613.38, '2022-03-15 00:00:00'),
	(50, 4, 0.84, 2.75, 'flotant', 'Turquoise', 'Teal', 'Aquamarine', 279.37, '2022-05-30 00:00:00'),
	(51, 8, 1.44, 0.90, 'metàl·lica', 'Blue', 'Mauv', 'Indigo', 232.33, '2021-10-25 00:00:00'),
	(52, 2, 3.14, 0.76, 'metàl·lica', 'Fuscia', 'Green', 'Green', 679.16, '2022-08-22 00:00:00'),
	(53, 9, 1.87, 0.91, 'flotant', 'Indigo', 'Puce', 'Orange', 590.13, '2022-07-29 00:00:00'),
	(54, 9, 0.97, 0.18, 'metàl·lica', 'Crimson', 'Aquamarine', 'Red', 231.93, '2022-01-14 00:00:00'),
	(55, 1, 2.33, 1.05, 'metàl·lica', 'Orange', 'Pink', 'Teal', 109.44, '2022-02-10 00:00:00'),
	(56, 9, 2.55, 1.97, 'metàl·lica', 'Aquamarine', 'Indigo', 'Puce', 410.82, '2022-01-28 00:00:00'),
	(57, 5, 1.71, 0.10, 'flotant', 'Indigo', 'Turquoise', 'Pink', 406.09, '2022-04-17 00:00:00'),
	(58, 5, 3.61, 2.14, 'metàl·lica', 'Violet', 'Green', 'Mauv', 915.33, '2022-09-20 00:00:00'),
	(59, 7, 1.43, 1.53, 'metàl·lica', 'Blue', 'Mauv', 'Goldenrod', 130.81, '2021-10-26 00:00:00'),
	(60, 10, 2.91, 3.87, 'flotant', 'Pink', 'Mauv', 'Blue', 608.70, '2022-08-23 00:00:00'),
	(61, 7, 0.01, 3.18, 'metàl·lica', 'Green', 'Khaki', 'Turquoise', 644.14, '2022-04-16 00:00:00'),
	(62, 3, 0.85, 0.29, 'metàl·lica', 'Yellow', 'Green', 'Yellow', 354.00, '2022-01-23 00:00:00'),
	(63, 9, 0.73, 1.94, 'metàl·lica', 'Blue', 'Aquamarine', 'Red', 777.52, '2022-03-09 00:00:00'),
	(64, 6, 1.41, 3.31, 'metàl·lica', 'Fuscia', 'Mauv', 'Purple', 168.08, '2022-09-09 00:00:00'),
	(65, 2, 0.91, 2.14, 'metàl·lica', 'Green', 'Mauv', 'Khaki', 339.83, '2022-06-09 00:00:00'),
	(66, 2, 3.81, 0.23, 'metàl·lica', 'Goldenrod', 'Puce', 'Purple', 509.92, '2022-03-30 00:00:00'),
	(67, 8, 0.02, 0.53, 'metàl·lica', 'Purple', 'Red', 'Fuscia', 506.85, '2022-07-11 00:00:00'),
	(68, 10, 3.54, 3.91, 'metàl·lica', 'Maroon', 'Crimson', 'Khaki', 576.04, '2022-05-12 00:00:00'),
	(69, 2, 2.46, 0.77, 'flotant', 'Pink', 'Blue', 'Puce', 418.68, '2022-04-25 00:00:00'),
	(70, 6, 0.05, 0.40, 'flotant', 'Red', 'Aquamarine', 'Green', 912.37, '2022-03-20 00:00:00'),
	(71, 1, 1.67, 1.10, 'metàl·lica', 'Blue', 'Mauv', 'Fuscia', 668.85, '2022-05-28 00:00:00'),
	(72, 8, 2.71, 1.85, 'metàl·lica', 'Crimson', 'Mauv', 'Goldenrod', 191.82, '2022-05-04 00:00:00'),
	(73, 1, 3.82, 0.43, 'flotant', 'Red', 'Green', 'Blue', 498.64, '2022-08-06 00:00:00'),
	(74, 9, 2.76, 2.79, 'flotant', 'Puce', 'Blue', 'Green', 979.04, '2022-09-11 00:00:00'),
	(75, 2, 2.66, 1.36, 'flotant', 'Yellow', 'Green', 'Crimson', 358.92, '2022-03-13 00:00:00'),
	(76, 10, 2.74, 3.11, 'metàl·lica', 'Blue', 'Fuscia', 'Violet', 366.60, '2021-12-14 00:00:00'),
	(77, 9, 1.51, 3.78, 'metàl·lica', 'Green', 'Turquoise', 'Red', 802.20, '2022-06-21 00:00:00'),
	(78, 6, 2.70, 1.29, 'flotant', 'Fuscia', 'Aquamarine', 'Khaki', 142.76, '2022-02-18 00:00:00'),
	(79, 7, 2.98, 1.89, 'flotant', 'Purple', 'Turquoise', 'Pink', 903.44, '2022-04-24 00:00:00'),
	(80, 7, 1.62, 2.61, 'metàl·lica', 'Turquoise', 'Green', 'Turquoise', 265.13, '2022-06-19 00:00:00'),
	(81, 10, 2.66, 3.18, 'flotant', 'Red', 'Puce', 'Violet', 926.33, '2022-05-30 00:00:00'),
	(82, 2, 3.16, 2.66, 'metàl·lica', 'Khaki', 'Yellow', 'Goldenrod', 217.19, '2021-11-16 00:00:00'),
	(83, 7, 2.63, 2.83, 'metàl·lica', 'Puce', 'Purple', 'Teal', 731.46, '2021-12-27 00:00:00'),
	(84, 1, 2.00, 3.46, 'flotant', 'Violet', 'Green', 'Khaki', 473.61, '2022-07-25 00:00:00'),
	(85, 5, 0.01, 1.26, 'metàl·lica', 'Blue', 'Teal', 'Orange', 871.60, '2022-09-07 00:00:00'),
	(86, 8, 3.56, 2.40, 'metàl·lica', 'Khaki', 'Aquamarine', 'Orange', 933.71, '2022-03-27 00:00:00'),
	(87, 4, 2.77, 1.79, 'metàl·lica', 'Yellow', 'Turquoise', 'Turquoise', 603.10, '2022-09-06 00:00:00'),
	(88, 3, 0.29, 1.55, 'metàl·lica', 'Aquamarine', 'Green', 'Green', 586.45, '2022-03-16 00:00:00'),
	(89, 1, 2.80, 3.46, 'metàl·lica', 'Teal', 'Purple', 'Crimson', 912.02, '2022-08-15 00:00:00'),
	(90, 3, 0.82, 1.49, 'metàl·lica', 'Mauv', 'Crimson', 'Yellow', 965.87, '2022-01-02 00:00:00'),
	(91, 8, 2.78, 3.85, 'metàl·lica', 'Red', 'Red', 'Indigo', 621.10, '2022-06-23 00:00:00'),
	(92, 6, 1.30, 1.75, 'metàl·lica', 'Aquamarine', 'Indigo', 'Aquamarine', 337.80, '2021-12-20 00:00:00'),
	(93, 2, 2.78, 2.39, 'metàl·lica', 'Orange', 'Turquoise', 'Puce', 763.20, '2022-04-01 00:00:00'),
	(94, 3, 2.22, 0.87, 'metàl·lica', 'Yellow', 'Indigo', 'Red', 637.81, '2022-09-08 00:00:00'),
	(95, 2, 0.40, 1.62, 'metàl·lica', 'Khaki', 'Pink', 'Green', 454.31, '2022-07-16 00:00:00'),
	(96, 1, 1.72, 2.39, 'metàl·lica', 'Mauv', 'Green', 'Turquoise', 830.02, '2022-09-02 00:00:00'),
	(97, 3, 0.20, 3.50, 'flotant', 'Indigo', 'Blue', 'Maroon', 836.69, '2022-08-23 00:00:00'),
	(98, 1, 0.40, 0.74, 'metàl·lica', 'Teal', 'Turquoise', 'Maroon', 305.15, '2022-09-21 00:00:00'),
	(99, 2, 3.64, 1.59, 'flotant', 'Teal', 'Violet', 'Aquamarine', 891.64, '2022-07-16 00:00:00'),
	(100, 3, 2.62, 3.15, 'metàl·lica', 'Purple', 'Aquamarine', 'Purple', 777.33, '2022-08-31 00:00:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
