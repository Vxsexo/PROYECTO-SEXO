
CREATE TABLE IF NOT EXISTS `roda_peds` (
  `identifier` varchar(250) NOT NULL,
  `peds` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`peds`)),
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
