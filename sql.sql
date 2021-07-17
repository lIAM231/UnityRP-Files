-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gta
DROP DATABASE IF EXISTS `gta`;
CREATE DATABASE IF NOT EXISTS `gta` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `gta`;

-- Dumping structure for table gta.banklog
DROP TABLE IF EXISTS `banklog`;
CREATE TABLE IF NOT EXISTS `banklog` (
  `uid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `withdraw` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `business` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.character_current
DROP TABLE IF EXISTS `character_current`;
CREATE TABLE IF NOT EXISTS `character_current` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `model` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawables` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `props` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawtextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proptextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table gta.character_face
DROP TABLE IF EXISTS `character_face`;
CREATE TABLE IF NOT EXISTS `character_face` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `hairColor` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headBlend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headOverlay` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headStructure` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=563 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table gta.character_outfits
DROP TABLE IF EXISTS `character_outfits`;
CREATE TABLE IF NOT EXISTS `character_outfits` (
  `cid` int(11) NOT NULL,
  `slot` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawables` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `props` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawtextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proptextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hairColor` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table gta.delivery_job
DROP TABLE IF EXISTS `delivery_job`;
CREATE TABLE IF NOT EXISTS `delivery_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` float DEFAULT NULL,
  `jobType` varchar(50) DEFAULT NULL,
  `dropAmount` int(2) DEFAULT NULL,
  `pickup` varchar(255) DEFAULT NULL,
  `drop` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table gta.fine_types
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT 0,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table gta.mdt_reports
DROP TABLE IF EXISTS `mdt_reports`;
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.mdt_warrants
DROP TABLE IF EXISTS `mdt_warrants`;
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `expire` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.mech_materials
DROP TABLE IF EXISTS `mech_materials`;
CREATE TABLE IF NOT EXISTS `mech_materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Rubber` int(11) DEFAULT NULL,
  `Aluminum` int(11) DEFAULT NULL,
  `Scrap` int(11) DEFAULT NULL,
  `Plastic` int(11) DEFAULT NULL,
  `Copper` int(11) DEFAULT NULL,
  `Steel` int(11) DEFAULT NULL,
  `Glass` int(11) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table gta.phone_contacts
DROP TABLE IF EXISTS `phone_contacts`;
CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.phone_messages
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7520 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.phone_yp
DROP TABLE IF EXISTS `phone_yp`;
CREATE TABLE IF NOT EXISTS `phone_yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `advert` varchar(500) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.playerstattoos
DROP TABLE IF EXISTS `playerstattoos`;
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `identifier` int(11) DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.records
DROP TABLE IF EXISTS `records`;
CREATE TABLE IF NOT EXISTS `records` (
  `recordid` int(11) NOT NULL AUTO_INCREMENT,
  `issuer` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `player` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `notes` text COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`recordid`),
  KEY `index_records_player_type` (`player`,`type`),
  KEY `index_records_type` (`type`),
  KEY `index_records_player` (`player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.tweets
DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.user_boat
DROP TABLE IF EXISTS `user_boat`;
CREATE TABLE IF NOT EXISTS `user_boat` (
  `identifier` varchar(50) DEFAULT NULL,
  `boat_name` varchar(50) DEFAULT NULL,
  `boat_model` varchar(50) DEFAULT NULL,
  `boat_price` varchar(50) DEFAULT NULL,
  `boat_plate` varchar(50) DEFAULT NULL,
  `boat_state` varchar(50) DEFAULT NULL,
  `boat_colorprimary` varchar(50) DEFAULT NULL,
  `boat_colorsecondary` varchar(50) DEFAULT NULL,
  `boat_pearlescentcolor` varchar(50) DEFAULT NULL,
  `boat_wheelcolor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.user_convictions
DROP TABLE IF EXISTS `user_convictions`;
CREATE TABLE IF NOT EXISTS `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.user_inventory2
DROP TABLE IF EXISTS `user_inventory2`;
CREATE TABLE IF NOT EXISTS `user_inventory2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `information` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `quality` int(11) DEFAULT 100,
  `creationDate` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4556 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table gta.user_licenses
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.user_mdt
DROP TABLE IF EXISTS `user_mdt`;
CREATE TABLE IF NOT EXISTS `user_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL,
  `bail` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.vehicle_mdt
DROP TABLE IF EXISTS `vehicle_mdt`;
CREATE TABLE IF NOT EXISTS `vehicle_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `stolen` bit(1) DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.warehouse
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE IF NOT EXISTS `warehouse` (
  `identifier` varchar(50) DEFAULT NULL,
  `shell` varchar(50) DEFAULT NULL,
  `entrance` varchar(50) DEFAULT NULL,
  `keycode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.weeds
DROP TABLE IF EXISTS `weeds`;
CREATE TABLE IF NOT EXISTS `weeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `growth` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `strain` varchar(50) NOT NULL DEFAULT '',
  `x` varchar(50) NOT NULL DEFAULT '0',
  `y` varchar(50) NOT NULL DEFAULT '0',
  `z` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.__ammo
DROP TABLE IF EXISTS `__ammo`;
CREATE TABLE IF NOT EXISTS `__ammo` (
  `id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `newammo` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `ammoType` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `ammoTable` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.__business
DROP TABLE IF EXISTS `__business`;
CREATE TABLE IF NOT EXISTS `__business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.__characters
DROP TABLE IF EXISTS `__characters`;
CREATE TABLE IF NOT EXISTS `__characters` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `food` varchar(50) NOT NULL DEFAULT '100',
  `water` varchar(50) NOT NULL DEFAULT '100',
  `stress` varchar(50) NOT NULL DEFAULT '0',
  `armor` varchar(50) NOT NULL DEFAULT '0',
  `gender` tinyint(4) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `cash` int(11) NOT NULL DEFAULT 500,
  `bank` int(11) NOT NULL DEFAULT 5000,
  `story` varchar(255) NOT NULL,
  `job` varchar(50) NOT NULL DEFAULT 'None',
  `rank` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `stocks` longtext DEFAULT '5',
  `payslips` varchar(50) NOT NULL DEFAULT '0',
  `license` varchar(50) NOT NULL DEFAULT '0',
  `drivlicense` varchar(50) NOT NULL DEFAULT '0',
  `jail` int(11) NOT NULL DEFAULT 0,
  `callsign` int(50) NOT NULL,
  `huntlicense` varchar(50) NOT NULL DEFAULT '0',
  `banknumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.__emotes
DROP TABLE IF EXISTS `__emotes`;
CREATE TABLE IF NOT EXISTS `__emotes` (
  `cid` int(11) NOT NULL,
  `emote_data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.__employees
DROP TABLE IF EXISTS `__employees`;
CREATE TABLE IF NOT EXISTS `__employees` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `giver` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `rank` int(11) NOT NULL,
  `business_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.__housedata
DROP TABLE IF EXISTS `__housedata`;
CREATE TABLE IF NOT EXISTS `__housedata` (
  `cid` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `house_model` int(11) DEFAULT NULL,
  `upfront` int(11) DEFAULT NULL,
  `housename` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `storage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `clothing` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `garages` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `mortgaged` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `furniture` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.__housekeys
DROP TABLE IF EXISTS `__housekeys`;
CREATE TABLE IF NOT EXISTS `__housekeys` (
  `cid` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `house_model` int(11) DEFAULT NULL,
  `upfront` int(11) DEFAULT NULL,
  `housename` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `storage` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `clothing` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `garages` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `mortgaged` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table gta.__housing
DROP TABLE IF EXISTS `__housing`;
CREATE TABLE IF NOT EXISTS `__housing` (
  `cid` int(11) DEFAULT NULL,
  `roomType` int(11) DEFAULT NULL,
  `roomNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.__illegals
DROP TABLE IF EXISTS `__illegals`;
CREATE TABLE IF NOT EXISTS `__illegals` (
  `cid` int(11) NOT NULL DEFAULT 0,
  `plate` varchar(12) NOT NULL,
  `slicks` int(11) DEFAULT 0,
  `clutch` int(11) DEFAULT 0,
  `intercooler` int(11) DEFAULT 0,
  `fuelinjector` int(11) DEFAULT 0,
  `engineforge` int(11) DEFAULT 0,
  `ecuremap` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.__impcars
DROP TABLE IF EXISTS `__impcars`;
CREATE TABLE IF NOT EXISTS `__impcars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) NOT NULL,
  `commission` int(11) NOT NULL DEFAULT 10,
  `baseprice` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.__info
DROP TABLE IF EXISTS `__info`;
CREATE TABLE IF NOT EXISTS `__info` (
  `steam` varchar(150) NOT NULL,
  `license` varchar(150) NOT NULL,
  `xbl` varchar(150) NOT NULL,
  `ip` varchar(150) NOT NULL,
  `discord` varchar(150) NOT NULL,
  `liveid` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table gta.__job_accounts
DROP TABLE IF EXISTS `__job_accounts`;
CREATE TABLE IF NOT EXISTS `__job_accounts` (
  `id` int(11) NOT NULL,
  `bank` int(11) NOT NULL DEFAULT 15000,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table gta.__mdtusers
DROP TABLE IF EXISTS `__mdtusers`;
CREATE TABLE IF NOT EXISTS `__mdtusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.__pdmcars
DROP TABLE IF EXISTS `__pdmcars`;
CREATE TABLE IF NOT EXISTS `__pdmcars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) NOT NULL,
  `commission` int(11) NOT NULL DEFAULT 10,
  `baseprice` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.__users
DROP TABLE IF EXISTS `__users`;
CREATE TABLE IF NOT EXISTS `__users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL DEFAULT 'user',
  `whitelist` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `steam` (`steam`),
  UNIQUE KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table gta.__vehicles
DROP TABLE IF EXISTS `__vehicles`;
CREATE TABLE IF NOT EXISTS `__vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(30) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  `model` varchar(60) NOT NULL DEFAULT '0',
  `buy_price` int(32) NOT NULL DEFAULT 0,
  `payments` int(11) DEFAULT 14,
  `finance` int(32) NOT NULL DEFAULT 0,
  `financetimer` int(32) NOT NULL DEFAULT 0,
  `can_pay` mediumtext NOT NULL DEFAULT 'true',
  `shop` mediumtext DEFAULT NULL,
  `state` varchar(50) NOT NULL DEFAULT 'Out',
  `garage` varchar(200) DEFAULT 'A',
  `engine_damage` int(11) DEFAULT 1000,
  `body_damage` int(11) DEFAULT 1000,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `degredation` varchar(100) NOT NULL DEFAULT '100,100,100,100,100,100,100,100,100,100',
  `fullname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table gta.__veh_mods
DROP TABLE IF EXISTS `__veh_mods`;
CREATE TABLE IF NOT EXISTS `__veh_mods` (
  `plate` varchar(8) NOT NULL,
  `harness` varchar(5) NOT NULL DEFAULT 'true',
  `harnessDurability` decimal(2,1) NOT NULL DEFAULT 1.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
