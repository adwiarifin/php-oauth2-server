-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.18 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table oauth2.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oauth2.oauth_access_tokens: ~4 rows (approximately)
DELETE FROM `oauth_access_tokens`;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
	('18ba25b3fa9cb0fe93b3943a94ff00dcc709e721', 'testclient', NULL, '2018-02-02 23:01:59', NULL),
	('32516ff1b471da604c38f942a62a982367eb78a8', 'testclient', NULL, '2018-02-02 23:34:59', NULL),
	('dc142d6d143921710529d797d0169d21354c6a38', 'testclient', NULL, '2018-02-02 15:20:21', NULL),
	('e3f476e1f1c7e175f9b0196cb3a009c5640800cd', 'testclient', NULL, '2018-02-02 15:20:13', NULL);
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table oauth2.oauth_authorization_codes
CREATE TABLE IF NOT EXISTS `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oauth2.oauth_authorization_codes: ~2 rows (approximately)
DELETE FROM `oauth_authorization_codes`;
/*!40000 ALTER TABLE `oauth_authorization_codes` DISABLE KEYS */;
INSERT INTO `oauth_authorization_codes` (`authorization_code`, `client_id`, `user_id`, `redirect_uri`, `expires`, `scope`, `id_token`) VALUES
	('4ddfa01ded3420fd408b2be0bb0ef8234f896286', 'testclient', NULL, NULL, '2018-02-02 22:13:18', NULL, NULL),
	('d22c193640cda2bfcd6c1047c42e4449a6eabc9b', 'testclient', NULL, NULL, '2018-02-02 22:11:10', NULL, NULL);
/*!40000 ALTER TABLE `oauth_authorization_codes` ENABLE KEYS */;

-- Dumping structure for table oauth2.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oauth2.oauth_clients: ~1 rows (approximately)
DELETE FROM `oauth_clients`;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
	('testclient', 'testpass', 'http://fake/', NULL, NULL, NULL);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table oauth2.oauth_jwt
CREATE TABLE IF NOT EXISTS `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oauth2.oauth_jwt: ~0 rows (approximately)
DELETE FROM `oauth_jwt`;
/*!40000 ALTER TABLE `oauth_jwt` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_jwt` ENABLE KEYS */;

-- Dumping structure for table oauth2.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oauth2.oauth_refresh_tokens: ~1 rows (approximately)
DELETE FROM `oauth_refresh_tokens`;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
	('ea42bd248295a16c9dd7efa059dfd67cb852befa', 'testclient', NULL, '2018-02-16 22:34:59', NULL);
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table oauth2.oauth_scopes
CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `scope` varchar(50) NOT NULL,
  `is_default` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oauth2.oauth_scopes: ~0 rows (approximately)
DELETE FROM `oauth_scopes`;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;

-- Dumping structure for table oauth2.oauth_users
CREATE TABLE IF NOT EXISTS `oauth_users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) unsigned DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table oauth2.oauth_users: ~0 rows (approximately)
DELETE FROM `oauth_users`;
/*!40000 ALTER TABLE `oauth_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
