CREATE TABLE IF NOT EXISTS `fyac_ban` (
  `player` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`license`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- qbtoesx.fyac_ban: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `fyac_ban` DISABLE KEYS */;
INSERT INTO `fyac_ban` (`player`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `reason`) VALUES
	('250484', 'license:xx', 'steam:xx', 'Not Linked', 'Not Linked', '<@584859449332596785>', '88.228.68.103', 'Executor Detection');
/*!40000 ALTER TABLE `fyac_ban` ENABLE KEYS */;

-- tablo yapısı dökülüyor qbtoesx.fyac_info
CREATE TABLE IF NOT EXISTS `fyac_info` (
  `hex` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `event` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `sebep` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `zaman` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- qbtoesx.fyac_info: ~153 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `fyac_info` DISABLE KEYS */;
INSERT INTO `fyac_info` (`hex`, `job`, `event`, `sebep`, `zaman`) VALUES
	('steam:xx', 'unemployed', 'esx_policejob:requestarrest', 'Handcuffing without police', '2022-02-12 01:24:22'),
	('steam:xx', 'unemployed', 'esx_policejob:message', 'The bottom left tried to attack the announcements.', '2022-02-13 02:00:31');
/*!40000 ALTER TABLE `fyac_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
