-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for diccionario
DROP DATABASE IF EXISTS `diccionario`;
CREATE DATABASE IF NOT EXISTS `diccionario` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `diccionario`;

-- Dumping structure for table diccionario.diccionario
DROP TABLE IF EXISTS `diccionario`;
CREATE TABLE IF NOT EXISTS `diccionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palabra` varchar(100) DEFAULT NULL,
  `significado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table diccionario.diccionario: ~7 rows (approximately)
/*!40000 ALTER TABLE `diccionario` DISABLE KEYS */;
INSERT INTO `diccionario` (`id`, `palabra`, `significado`) VALUES
	(1, 'Ahuevao', 'persona que comprende o capta las cosas más lento que el promedio'),
	(2, 'Chuzo', 'interjección que utilizamos para verbalizar algún sentimiento o impresión.'),
	(3, 'Chambon', 'persona que no tiene muchas habilidades para desempeñarse en alguna actividad'),
	(4, 'Bulto', 'Un bulto es una persona que es mala, realmente mala en lo que se desempeña.'),
	(5, 'Birria', 'afición excesiva por alguna actividad lúdica.'),
	(6, 'Tongo', 'A los agentes de la fuerza del orden se les llama tongos'),
	(7, 'Rakataka', 'es visto como sinónimo de: vulgar, mal hablada, de problemática, no educación');
/*!40000 ALTER TABLE `diccionario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
