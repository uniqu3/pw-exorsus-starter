# --- WireDatabaseBackup {"time":"2019-12-17 09:28:16","user":"","dbName":"projects_2019_demo-exorsus","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `continents`;
CREATE TABLE `continents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=ascii;

INSERT INTO `continents` (`id`, `code`, `name`) VALUES('1', 'af', 'Africa');
INSERT INTO `continents` (`id`, `code`, `name`) VALUES('2', 'as', 'Asia');
INSERT INTO `continents` (`id`, `code`, `name`) VALUES('3', 'eu', 'Europe');
INSERT INTO `continents` (`id`, `code`, `name`) VALUES('4', 'na', 'North America');
INSERT INTO `continents` (`id`, `code`, `name`) VALUES('5', 'sa', 'South America');
INSERT INTO `continents` (`id`, `code`, `name`) VALUES('6', 'oc', 'Oceania');
INSERT INTO `continents` (`id`, `code`, `name`) VALUES('7', 'an', 'Antarctica');

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `iso` char(3) NOT NULL,
  `number` smallint(3) unsigned zerofill NOT NULL,
  `continent` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=ascii;

INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('1', 'af', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('2', 'ax', 'Aland Islands', 'Aland Islands', 'ALA', '248', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('3', 'al', 'Albania', 'Republic of Albania', 'ALB', '008', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('4', 'dz', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('5', 'as', 'American Samoa', 'American Samoa', 'ASM', '016', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('6', 'ad', 'Andorra', 'Principality of Andorra', 'AND', '020', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('7', 'ao', 'Angola', 'Republic of Angola', 'AGO', '024', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('8', 'ai', 'Anguilla', 'Anguilla', 'AIA', '660', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('9', 'aq', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', '010', 'an');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('10', 'ag', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('11', 'ar', 'Argentina', 'Argentine Republic', 'ARG', '032', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('12', 'am', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('13', 'aw', 'Aruba', 'Aruba', 'ABW', '533', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('14', 'au', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('15', 'at', 'Austria', 'Republic of Austria', 'AUT', '040', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('16', 'az', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('17', 'bs', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', '044', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('18', 'bh', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('19', 'bd', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('20', 'bb', 'Barbados', 'Barbados', 'BRB', '052', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('21', 'by', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('22', 'be', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('23', 'bz', 'Belize', 'Belize', 'BLZ', '084', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('24', 'bj', 'Benin', 'Republic of Benin', 'BEN', '204', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('25', 'bm', 'Bermuda', 'Bermuda', 'BMU', '060', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('26', 'bt', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('27', 'bo', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('28', 'bq', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('29', 'ba', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('30', 'bw', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('31', 'bv', 'Bouvet Island (Bouvetoya)', 'Bouvet Island (Bouvetoya)', 'BVT', '074', 'an');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('32', 'br', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('33', 'io', 'British Indian Ocean Territory (Chagos Archipelago)', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', '086', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('34', 'vg', 'British Virgin Islands', 'British Virgin Islands', 'VGB', '092', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('35', 'bn', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', '096', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('36', 'bg', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('37', 'bf', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('38', 'bi', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('39', 'kh', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('40', 'cm', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('41', 'ca', 'Canada', 'Canada', 'CAN', '124', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('42', 'cv', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('43', 'ky', 'Cayman Islands', 'Cayman Islands', 'CYM', '136', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('44', 'cf', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('45', 'td', 'Chad', 'Republic of Chad', 'TCD', '148', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('46', 'cl', 'Chile', 'Republic of Chile', 'CHL', '152', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('47', 'cn', 'China', 'People\'s Republic of China', 'CHN', '156', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('48', 'cx', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('49', 'cc', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('50', 'co', 'Colombia', 'Republic of Colombia', 'COL', '170', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('51', 'km', 'Comoros', 'Union of the Comoros', 'COM', '174', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('52', 'cd', 'Congo', 'Democratic Republic of the Congo', 'COD', '180', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('53', 'cg', 'Congo', 'Republic of the Congo', 'COG', '178', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('54', 'ck', 'Cook Islands', 'Cook Islands', 'COK', '184', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('55', 'cr', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('56', 'ci', 'Cote d\'Ivoire', 'Republic of Cote d\'Ivoire', 'CIV', '384', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('57', 'hr', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('58', 'cu', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('59', 'cw', 'Cura?ao', 'Cura?ao', 'CUW', '531', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('60', 'cy', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('61', 'cz', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('62', 'dk', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('63', 'dj', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('64', 'dm', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('65', 'do', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('66', 'ec', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('67', 'eg', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('68', 'sv', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('69', 'gq', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('70', 'er', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('71', 'ee', 'Estonia', 'Republic of Estonia', 'EST', '233', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('72', 'et', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('73', 'fo', 'Faroe Islands', 'Faroe Islands', 'FRO', '234', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('74', 'fk', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'FLK', '238', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('75', 'fj', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('76', 'fi', 'Finland', 'Republic of Finland', 'FIN', '246', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('77', 'fr', 'France', 'French Republic', 'FRA', '250', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('78', 'gf', 'French Guiana', 'French Guiana', 'GUF', '254', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('79', 'pf', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('80', 'tf', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'an');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('81', 'ga', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('82', 'gm', 'Gambia', 'Republic of the Gambia', 'GMB', '270', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('83', 'ge', 'Georgia', 'Georgia', 'GEO', '268', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('84', 'de', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('85', 'gh', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('86', 'gi', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('87', 'gr', 'Greece', 'Hellenic Republic Greece', 'GRC', '300', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('88', 'gl', 'Greenland', 'Greenland', 'GRL', '304', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('89', 'gd', 'Grenada', 'Grenada', 'GRD', '308', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('90', 'gp', 'Guadeloupe', 'Guadeloupe', 'GLP', '312', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('91', 'gu', 'Guam', 'Guam', 'GUM', '316', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('92', 'gt', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('93', 'gg', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', '831', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('94', 'gn', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('95', 'gw', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('96', 'gy', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('97', 'ht', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('98', 'hm', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'an');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('99', 'va', 'Holy See (Vatican City State)', 'Holy See (Vatican City State)', 'VAT', '336', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('100', 'hn', 'Honduras', 'Republic of Honduras', 'HND', '340', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('101', 'hk', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', '344', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('102', 'hu', 'Hungary', 'Hungary', 'HUN', '348', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('103', 'is', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('104', 'in', 'India', 'Republic of India', 'IND', '356', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('105', 'id', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('106', 'ir', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('107', 'iq', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('108', 'ie', 'Ireland', 'Ireland', 'IRL', '372', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('109', 'im', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('110', 'il', 'Israel', 'State of Israel', 'ISR', '376', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('111', 'it', 'Italy', 'Italian Republic', 'ITA', '380', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('112', 'jm', 'Jamaica', 'Jamaica', 'JAM', '388', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('113', 'jp', 'Japan', 'Japan', 'JPN', '392', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('114', 'je', 'Jersey', 'Bailiwick of Jersey', 'JEY', '832', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('115', 'jo', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('116', 'kz', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('117', 'ke', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('118', 'ki', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('119', 'kp', 'Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('120', 'kr', 'Korea', 'Republic of Korea', 'KOR', '410', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('121', 'kw', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('122', 'kg', 'Kyrgyz Republic', 'Kyrgyz Republic', 'KGZ', '417', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('123', 'la', 'Lao People\'s Democratic Republic', 'Lao People\'s Democratic Republic', 'LAO', '418', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('124', 'lv', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('125', 'lb', 'Lebanon', 'Lebanese Republic', 'LBN', '422', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('126', 'ls', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('127', 'lr', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('128', 'ly', 'Libya', 'Libya', 'LBY', '434', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('129', 'li', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('130', 'lt', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('131', 'lu', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('132', 'mo', 'Macao', 'Macao Special Administrative Region of China', 'MAC', '446', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('133', 'mk', 'Macedonia', 'Republic of Macedonia', 'MKD', '807', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('134', 'mg', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('135', 'mw', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('136', 'my', 'Malaysia', 'Malaysia', 'MYS', '458', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('137', 'mv', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('138', 'ml', 'Mali', 'Republic of Mali', 'MLI', '466', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('139', 'mt', 'Malta', 'Republic of Malta', 'MLT', '470', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('140', 'mh', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('141', 'mq', 'Martinique', 'Martinique', 'MTQ', '474', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('142', 'mr', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('143', 'mu', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('144', 'yt', 'Mayotte', 'Mayotte', 'MYT', '175', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('145', 'mx', 'Mexico', 'United Mexican States', 'MEX', '484', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('146', 'fm', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('147', 'md', 'Moldova', 'Republic of Moldova', 'MDA', '498', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('148', 'mc', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('149', 'mn', 'Mongolia', 'Mongolia', 'MNG', '496', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('150', 'me', 'Montenegro', 'Montenegro', 'MNE', '499', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('151', 'ms', 'Montserrat', 'Montserrat', 'MSR', '500', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('152', 'ma', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('153', 'mz', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('154', 'mm', 'Myanmar', 'Republic of the Union of Myanmar', 'MMR', '104', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('155', 'na', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('156', 'nr', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('157', 'np', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('158', 'nl', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('159', 'nc', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('160', 'nz', 'New Zealand', 'New Zealand', 'NZL', '554', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('161', 'ni', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('162', 'ne', 'Niger', 'Republic of Niger', 'NER', '562', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('163', 'ng', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('164', 'nu', 'Niue', 'Niue', 'NIU', '570', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('165', 'nf', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('166', 'mp', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', '580', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('167', 'no', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('168', 'om', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('169', 'pk', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('170', 'pw', 'Palau', 'Republic of Palau', 'PLW', '585', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('171', 'ps', 'Palestinian Territory', 'Occupied Palestinian Territory', 'PSE', '275', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('172', 'pa', 'Panama', 'Republic of Panama', 'PAN', '591', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('173', 'pg', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('174', 'py', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('175', 'pe', 'Peru', 'Republic of Peru', 'PER', '604', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('176', 'ph', 'Philippines', 'Republic of the Philippines', 'PHL', '608', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('177', 'pn', 'Pitcairn Islands', 'Pitcairn Islands', 'PCN', '612', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('178', 'pl', 'Poland', 'Republic of Poland', 'POL', '616', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('179', 'pt', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('180', 'pr', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('181', 'qa', 'Qatar', 'State of Qatar', 'QAT', '634', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('182', 're', 'R?union', 'R?union', 'REU', '638', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('183', 'ro', 'Romania', 'Romania', 'ROU', '642', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('184', 'ru', 'Russian Federation', 'Russian Federation', 'RUS', '643', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('185', 'rw', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('186', 'bl', 'Saint Barthelemy', 'Saint Barthelemy', 'BLM', '652', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('187', 'sh', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('188', 'kn', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', '659', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('189', 'lc', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('190', 'mf', 'Saint Martin', 'Saint Martin (French part)', 'MAF', '663', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('191', 'pm', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('192', 'vc', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('193', 'ws', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('194', 'sm', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('195', 'st', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', '678', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('196', 'sa', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('197', 'sn', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('198', 'rs', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('199', 'sc', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('200', 'sl', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('201', 'sg', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('202', 'sx', 'Sint Maarten (Dutch part)', 'Sint Maarten (Dutch part)', 'SXM', '534', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('203', 'sk', 'Slovakia (Slovak Republic)', 'Slovakia (Slovak Republic)', 'SVK', '703', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('204', 'si', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('205', 'sb', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('206', 'so', 'Somalia', 'Somali Republic', 'SOM', '706', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('207', 'za', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('208', 'gs', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'an');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('209', 'ss', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('210', 'es', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('211', 'lk', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('212', 'sd', 'Sudan', 'Republic of Sudan', 'SDN', '729', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('213', 'sr', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('214', 'sj', 'Svalbard & Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', '744', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('215', 'sz', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('216', 'se', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('217', 'ch', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('218', 'sy', 'Syrian Arab Republic', 'Syrian Arab Republic', 'SYR', '760', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('219', 'tw', 'Taiwan', 'Taiwan, Province of China', 'TWN', '158', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('220', 'tj', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('221', 'tz', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('222', 'th', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('223', 'tl', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('224', 'tg', 'Togo', 'Togolese Republic', 'TGO', '768', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('225', 'tk', 'Tokelau', 'Tokelau', 'TKL', '772', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('226', 'to', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('227', 'tt', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('228', 'tn', 'Tunisia', 'Tunisian Republic', 'TUN', '788', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('229', 'tr', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('230', 'tm', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('231', 'tc', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('232', 'tv', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('233', 'ug', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('234', 'ua', 'Ukraine', 'Ukraine', 'UKR', '804', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('235', 'ae', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('236', 'gb', 'United Kingdom of Great Britain & Northern Ireland', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', '826', 'eu');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('237', 'us', 'United States of America', 'United States of America', 'USA', '840', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('238', 'um', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('239', 'vi', 'United States Virgin Islands', 'United States Virgin Islands', 'VIR', '850', 'na');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('240', 'uy', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('241', 'uz', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('242', 'vu', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('243', 've', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'sa');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('244', 'vn', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('245', 'wf', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'oc');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('246', 'eh', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('247', 'ye', 'Yemen', 'Yemen', 'YEM', '887', 'as');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('248', 'zm', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'af');
INSERT INTO `countries` (`id`, `code`, `name`, `fullname`, `iso`, `number`, `continent`) VALUES('249', 'zw', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'af');

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_blocks`;
CREATE TABLE `field_blocks` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1035', '1139', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1035', '1140', '1');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1035', '1141', '2');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1184', '1186', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1184', '1187', '1');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1102', '1192', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1102', '1194', '1');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1126', '1196', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1228', '1231', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1228', '1232', '1');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1233', '1236', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1233', '1237', '1');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1238', '1241', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1238', '1242', '1');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1243', '1246', '0');
INSERT INTO `field_blocks` (`pages_id`, `data`, `sort`) VALUES('1243', '1247', '1');

DROP TABLE IF EXISTS `field_category_articles`;
CREATE TABLE `field_category_articles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1074', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1170', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1171', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1172', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1173', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1194', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1232', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1237', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1242', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1247', '1075', '0');
INSERT INTO `field_category_articles` (`pages_id`, `data`, `sort`) VALUES('1174', '1195', '0');

DROP TABLE IF EXISTS `field_category_people`;
CREATE TABLE `field_category_people` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_category_people` (`pages_id`, `data`, `sort`) VALUES('1080', '1069', '0');
INSERT INTO `field_category_people` (`pages_id`, `data`, `sort`) VALUES('1123', '1070', '0');
INSERT INTO `field_category_people` (`pages_id`, `data`, `sort`) VALUES('1164', '1070', '0');
INSERT INTO `field_category_people` (`pages_id`, `data`, `sort`) VALUES('1166', '1168', '0');

DROP TABLE IF EXISTS `field_content`;
CREATE TABLE `field_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1034` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1065', '<p class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<p>204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden. Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1074', '<p>Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1113', '', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1073', '', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1102', '<h1>H1 Heading in hgroup</h1>\n\n<h2>H2 Heading in hgroup</h2>\n\n<h1>H1 Heading <small class=\"tag is-small text-small is-notice\">36px</small></h1>\n\n<h2>H2 Heading <small class=\"tag is-small text-small is-notice\">30px</small></h2>\n\n<h3>H3 Heading <small class=\"tag is-small text-small is-notice\">26px</small></h3>\n\n<h4>H4 Heading <small class=\"tag is-small text-small is-notice\">22px</small></h4>\n\n<h5>H5 Heading <small class=\"tag is-small text-small is-notice\">18px</small></h5>\n\n<h6>H6 Heading <small class=\"tag is-small text-small is-notice\">16px</small></h6>\n\n<h4>Die Paragraphe können ebenfalls individuell ausgewählt werden.</h4>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel magna sit amet dui lobortis commodo vitae vel nulla sit amet ante hendrerit tempus. Sed dapibus, lectus sit amet adipiscing egestas, mauris est viverra nibh, <a href=\"#\">iaculis pretium</a> sem orci aliquet mauris. Suspendisse potenti. Potenti et eros sed justo commodo bibendum non at nunc. Aliquam <del>tincidunt velit</del> sit amet ante hendrerit tempus.</p>\n\n<p>Maecenas sit <q cite=\"http://www.heydonworks.com\">amet tellus nec mi gravida posuere</q> non pretium magna. Donec et nisi dictum felis, sollicitudin, congue Heydon™. Nulla auctor eleifend 23<sup>rd</sup> of May turpis consequat pharetra. Nulla vel magna sit amet dui <a href=\"#\">lobortis</a> commodo vitae vel nulla. Nulla vel magna sit amet dui lobortis commodo vitae vel nulla sit amet ante hendrerit tempus. Vestibulum sit amet ipsum lacus.</p>\n\n<h5>Sehr klein</h5>\n\n<p><span class=\"text-xsmall\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</span></p>\n\n<h5>Kleiner</h5>\n\n<p><span class=\"text-small\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</span></p>\n\n<h5>Normal (Standard)</h5>\n\n<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</p>\n\n<h5>Größer</h5>\n\n<p><span class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</span></p>\n\n<h5>Sehr groß</h5>\n\n<p><span class=\"text-xlarge\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</span></p>\n\n<h4>Schrift- särken und varianten</h4>\n\n<p><span class=\"text-extra-bold\">Sehr fett</span>, <span class=\"text-bold\">fett</span>, <span class=\"text-bolder\">fetter</span>, <span class=\"text-regular\">normal</span>, dünn, <span class=\"text-uppercase\">Hochgestellt</span>, <span class=\"text-capitalize\">immer erster buchstabe groß, <span class=\"text-lowercase\">Nur Kleinbuchstaben, </span></span><br />\n<span class=\"has-color-darker\">Farbe gedämpft</span>, <span class=\"has-color-primary\">Farbe Primär</span>, <span class=\"has-color-success\">Farbe Erfolg</span>, <span class=\"has-color-warning\">Farbe Warnung</span>, <span class=\"has-color-error\">Farbe Gefahr</span>, <span class=\"has-color-notice\">Farbe Notiz</span>, <span class=\"has-color-highlight\">Farbe Hervorgehoben</span>, <span class=\"has-color-black\">Farbe schwarz</span></p>\n\n<h4>Zitat und Blocksatz</h4>\n\n<blockquote>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor</p>\n<cite>Joe Doe</cite></blockquote>\n\n<h4>Semantische Elemente</h4>\n\n<p><dfn id=\"def-internet\">The Internet </dfn> <code>dfn</code><br />\n<abbr title=\"World-Wide Web\">WWW </abbr> <code>abbr</code><br />\n<cite>Zitat </cite> <code>cite</code><br />\n<del>Gelöscht</del> <code>del</code><br />\n<i>Italic </i> <code>i</code><br />\n<kbd>Ctrl + V</kbd> <code>kbd</code><br />\n<samp>Sample</samp> <code>samp</code><br />\nm<sup>2</sup><code>sup</code><br />\n<u>Underline</u> <code>u</code><br />\n<strong>Bold</strong> <code>strong</code><br />\n<code>function();</code> <code>code</code><br />\n<em>Emphasis</em> <code>em</code><br />\n<ins>Inserted</ins> <code>ins</code><br />\nHighlighted<code>mark</code><br />\n<s>Strikethrough</s> <code>s</code><br />\nH<sub>2</sub>O <code>sub</code><br />\n20:00<code>time</code><br />\n<var>var = x;</var> <code>var</code></p>\n\n<h4>Listen</h4>\n\n<h5>Unsortierte Aufzählungsliste</h5>\n\n<ul>\n	<li>List item 1</li>\n	<li>List item 2\n	<ul>\n		<li>List item 2.1</li>\n		<li>List item 2.2</li>\n		<li>List item 2.3</li>\n	</ul>\n	</li>\n	<li>List item 3</li>\n</ul>\n\n<h5>Sortierte (Nummerierte) Aufzählungsliste</h5>\n\n<ol>\n	<li>List item 1</li>\n	<li>List item 2\n	<ol>\n		<li>List item 2.1</li>\n		<li>List item 2.2</li>\n		<li>List item 2.3</li>\n	</ol>\n	</li>\n	<li>List item 3</li>\n</ol>\n\n<h5>Aufzählungsliste ohne Zeichen</h5>\n\n<ul class=\"list-none\">\n	<li>List item 1</li>\n	<li>List item 2\n	<ul>\n		<li>List item 2.1</li>\n		<li>List item 2.2</li>\n		<li>List item 2.3</li>\n	</ul>\n	</li>\n	<li>List item 3</li>\n</ul>\n\n<h5>Horizontale Aufzählungsliste</h5>\n\n<ul class=\"list-inline\">\n	<li>List item 1</li>\n	<li>List item 2</li>\n	<li>List item 3</li>\n	<li>List item 4</li>\n	<li>List item 5</li>\n</ul>\n\n<h5>Definitionsliste</h5>\n\n<dl>\n	<dt>Definition List Title</dt>\n	<dd>This is a definition list division.</dd>\n	<dt>Definition List Title</dt>\n	<dd>This is a definition list division.</dd>\n</dl>\n\n<h5>Horizontale Definitionsliste</h5>\n\n<dl class=\"list-horizontal\">\n	<dt>Definition List Title</dt>\n	<dd>This is a definition list division.</dd>\n	<dt>Definition List Title</dt>\n	<dd>This is a definition list division.</dd>\n</dl>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1', '<p class=\"text-large\">Sie befinden sich gerade in einer <strong>Demo Präsentation</strong> der CMS Konfiguration mit vordefinierten und mit bedacht aufbereiteten Vorlagen so wie diversen Einstellungen und Optionen für eine unkomplizierte und schnelle Verwaltung Ihrer Onlinepräsenz.</p>\n\n<p class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.</p>\n\n<p>Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum.</p>\n\n<p>Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1125', '<p class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<p>204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden. Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>\n\n<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1126', '<p><span class=\"text-large\">Mit den vorkonfigurierten Elementen ist es sehr einfach die Inhalte einzelner Seiten nach belieben zusammenzustellen. Ganz egal ob die Seite eine Seitenleiste enthalten soll, die aktuellsten News, Mitarbeiter, Galerien oder einfach nur Texte, Sie haben die freie Wahl wo, wann und wie.</span></p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<p>204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden. Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1127', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<p>204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1141', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1220', '<p><strong>idea arts kreativagentur</strong><br />\nFischerweg 14<br />\n9551 Bodensdorf<br />\nAustria</p>\n\n<p>Telefon: +43 (0)664 35 210 29<br />\nE-Mail: ja [at] ichmachdas [dot] eu<br />\nInternet: www.ichmachdas.eu</p>\n\n<p><strong>Umsatzsteuer-ID</strong><br />\nUmsatzsteuer-Identifikationsnummer gemäß §27 a Umsatzsteuergesetz:</p>\n\n<p><strong>Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV</strong><br />\nGoran Ilic<br />\nFischerweg 14<br />\n9551 Bodensdorf</p>\n\n<p><strong>Hinweis auf EU-Streitschlichtung</strong><br />\nDie Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit:<br />\n<a href=\"http://ec.europa.eu/consumers/odr\" rel=\"nofollow\" title=\"Europäische Kommission Online-Streitbeilegung (OS)\">ec.europa.eu/consumers/odr</a><br />\nUnsere E-Mail-Adresse finden sie oben</p>\n\n<h2>Urheberrechtshinweis</h2>\n\n<p>Alle Inhalte dieser Webseite (Bilder, Fotos, Texte, Videos) unterliegen dem Urheberrecht. Falls notwendig, werden wir die unerlaubte Nutzung von Teilen der Inhalte unserer Seite rechtlich verfolgen.</p>\n\n<h2>Bildernachweis</h2>\n\n<p>Die Bilder, Fotos und Grafiken auf dieser Webseite sind urheberrechtlich geschützt.</p>\n\n<p><a href=\"https://generated.photos\" rel=\"noreferrer noopener\" target=\"_blank\">Generated Photos</a>: AI Generierte Bilder der Personen<br />\nPhoto by <a href=\"https://www.pexels.com/@minan1398?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Min An </a>from <a href=\"https://www.pexels.com/photo/woman-rocking-climbing-near-waterfalls-1543756/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Frau beim bergsteigen<br />\nPhoto by <a href=\"https://www.pexels.com/@minervastudio?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Minervastudio </a>from <a href=\"https://www.pexels.com/photo/man-wearing-blue-suit-2897883/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Mann in blauen Anzug<br />\nBild von <a href=\"https://pixabay.com/de/users/rawpixel-4283981/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2449725\">rawpixel</a> auf <a href=\"https://pixabay.com/de/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2449725\">Pixabay</a>: Mann lachend am Arbeitsplatz<br />\nPhoto by <a href=\"https://www.pexels.com/@hemanthnirujogi?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Hemanth Nirujogi </a>from <a href=\"https://www.pexels.com/photo/beige-fabric-sofa-2555635/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Wohnzimmer mit Sofa<br />\nPhoto by <a href=\"https://www.pexels.com/@zvolskiy?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Dmitry Zvolskiy </a>from <a href=\"https://www.pexels.com/photo/inside-a-store-2199190/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Kleines Ladengeschäft<br />\nPhoto by <a href=\"https://www.pexels.com/@lstan?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Laura Stanley </a>from <a href=\"https://www.pexels.com/photo/people-overlooking-the-city-2519212/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Touristen in Paris<br />\nPhoto by <a href=\"https://www.pexels.com/@goodcitizen?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Humphrey Muleba </a>from <a href=\"https://www.pexels.com/photo/shallow-focus-photo-of-woman-sitting-on-couch-2602085/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Frau mit Notebook<br />\nPhoto by <a href=\"https://www.pexels.com/@geralt?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Gerd Altmann </a>from <a href=\"https://www.pexels.com/photo/marketing-school-business-idea-21696/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Schwarze Tafel mit \"Success\" Aufschrift<br />\nPhoto by <a href=\"https://www.pexels.com/@david-bartus-43782?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">David Bartus </a>from <a href=\"https://www.pexels.com/photo/blur-box-business-checkered-shirt-297933/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Hemden im Geschäft<br />\nBild von <a href=\"https://pixabay.com/photos/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=690048\">Free-Photos</a> auf <a href=\"https://pixabay.com/de/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=690048\">Pixabay</a>: Blauer Anzug<br />\nPhoto by <a href=\"https://www.pexels.com/@tatiana-18128?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Tatiana </a>from <a href=\"https://www.pexels.com/photo/empty-white-chairs-beside-table-2995012/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Weiße Stühle und Tisch<br />\nPhoto by <a href=\"https://www.pexels.com/@ajay-donga-1113836?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Ajay Donga </a>from <a href=\"https://www.pexels.com/photo/woman-and-man-riding-on-motorcycle-2174656/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Pärchen beim Vespa fahren<br />\nPhoto by <a href=\"https://www.pexels.com/@markusspiske?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Markus Spiske temporausch.com </a>from <a href=\"https://www.pexels.com/photo/programming-code-abstract-screen-of-software-developer-2194062/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Programmier Code am Bildschirm<br />\nPhoto by <a href=\"https://www.pexels.com/@thevibrantmachine?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">thevibrantmachine </a>from <a href=\"https://www.pexels.com/photo/person-holding-dandelion-2980635/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Person mit einer Pusteblume<br />\nPhoto by <a href=\"https://www.pexels.com/@mali?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">mali maeder </a>from <a href=\"https://www.pexels.com/photo/marketing-typography-close-up-view-letters-54257/?utm_content=attributionCopyText&amp;utm_medium=referral&amp;utm_source=pexels\">Pexels</a>: Foto einer Schrift</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1159', '', NULL);
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1170', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden.</p>\n\n<p>Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', NULL);
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1171', '<p>Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft.</p>\n\n<p>Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', NULL);
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1172', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.</p>\n\n<p>Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft.</p>\n\n<p>Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', NULL);
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1173', '<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft.</p>\n\n<p>Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', NULL);
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1174', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.</p>\n\n<p><strong>Sehr bekannt ist dieser</strong>: <em>The quick brown fox jumps over the lazy old dog</em>. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum.</p>\n\n<p>Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb. 204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden.Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', NULL);
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1184', '<p class=\"text-large\">Überzeugt? Dann nichts wie los, senden Sie uns eine Anfrage, wir antworten auf Ihre fragen schnellstmöglich.</p>\n\n<p class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</p>\n\n<p>Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('27', '<p class=\"text-large\">Der HTTP-Fehler <strong>404</strong>, oder besser gesagt \"<strong>404</strong>-Fehler\" bedeutet, dass die <strong>Seite</strong>, die Sie zu öffnen versuchen, <strong>nicht</strong> auf dem Server <strong>gefunden</strong> werden konnte.</p>\n\n<p>Möglicherweise wurde die Seite <strong>entfernt</strong> oder die <strong>URL</strong> wurde falsch aufgerufen.<br />\nBitte verwenden Sie die <strong>Seitennavigation</strong> oder die <strong>Seitensuche</strong> um zu den gewünschten Informationen zu gelangen.</p>', '<p class=\"text-large\">The HTTP <strong>404</strong> error, or rather <strong>404 error</strong>, means that the <strong>page</strong> you are trying to open could <strong>not</strong> be <strong>found</strong> on the server.</p>\n\n<p>The page may have been <strong>removed</strong> or the <strong>URL</strong> was invoked incorrectly.<br />\nPlease use the page <strong>navigation</strong> or the page <strong>search</strong> to get to the desired information.</p>');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1203', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog. Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus.</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1205', '', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1222', '', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1228', '<p><span class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</span></p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<h4>Standard Tabelle</h4>\n\n<table class=\"table margin-vertical-medium\">\n	<thead>\n		<tr>\n			<th>Product Name</th>\n			<th>Format</th>\n			<th>Price</th>\n		</tr>\n	</thead>\n	<tfoot>\n		<tr>\n			<td> </td>\n			<td><strong>Total:</strong></td>\n			<td><strong>171,10 €</strong></td>\n		</tr>\n	</tfoot>\n	<tbody>\n		<tr>\n			<td>Star Wars: The Complete Saga (Episodes I-VI)</td>\n			<td>Blu-ray</td>\n			<td>84,96 €</td>\n		</tr>\n		<tr>\n			<td>Guardians of the Galaxy</td>\n			<td>Blu-ray 3D</td>\n			<td>26,96 €</td>\n		</tr>\n	</tbody>\n</table>\n\n<h4>Gestreifte Tabelle</h4>\n\n<table class=\"table table-striped margin-vertical-medium\">\n	<thead>\n		<tr>\n			<th>Product Name</th>\n			<th>Format</th>\n			<th>Price</th>\n		</tr>\n	</thead>\n	<tfoot>\n		<tr>\n			<td> </td>\n			<td><strong>Total:</strong></td>\n			<td><strong>171,10 €</strong></td>\n		</tr>\n	</tfoot>\n	<tbody>\n		<tr>\n			<td>Star Wars: The Complete Saga (Episodes I-VI)</td>\n			<td>Blu-ray</td>\n			<td>84,96 €</td>\n		</tr>\n		<tr>\n			<td>Guardians of the Galaxy</td>\n			<td>Blu-ray 3D</td>\n			<td>26,96 €</td>\n		</tr>\n	</tbody>\n</table>\n\n<h4>Tabelle mit hover Effekt</h4>\n\n<table class=\"table table-striped table-hover margin-vertical-medium\">\n	<thead>\n		<tr>\n			<th>Product Name</th>\n			<th>Format</th>\n			<th>Price</th>\n		</tr>\n	</thead>\n	<tfoot>\n		<tr>\n			<td> </td>\n			<td><strong>Total:</strong></td>\n			<td><strong>171,10 €</strong></td>\n		</tr>\n	</tfoot>\n	<tbody>\n		<tr>\n			<td>Star Wars: The Complete Saga (Episodes I-VI)</td>\n			<td>Blu-ray</td>\n			<td>84,96 €</td>\n		</tr>\n		<tr>\n			<td>Guardians of the Galaxy</td>\n			<td>Blu-ray 3D</td>\n			<td>26,96 €</td>\n		</tr>\n	</tbody>\n</table>\n\n<h4>Scrollbare Tabelle</h4>\n\n<div class=\"size-md\">\n<table class=\"table table-scroll\">\n	<thead>\n		<tr>\n			<th>Product Name</th>\n			<th>Product Name</th>\n			<th>Product Name</th>\n			<th>Format</th>\n			<th>Price</th>\n		</tr>\n	</thead>\n	<tfoot>\n		<tr>\n			<td> </td>\n			<td><strong>Total:</strong></td>\n			<td><strong>171,10 €</strong></td>\n		</tr>\n	</tfoot>\n	<tbody>\n		<tr>\n			<td>Star Wars: The Complete Saga (Episodes I-VI)</td>\n			<td>Star Wars: The Complete Saga (Episodes I-VI)</td>\n			<td>Star Wars: The Complete Saga (Episodes I-VI)</td>\n			<td>Blu-ray</td>\n			<td>84,96 €</td>\n		</tr>\n		<tr>\n			<td>Guardians of the Galaxy</td>\n			<td>Guardians of the Galaxy</td>\n			<td>Guardians of the Galaxy</td>\n			<td>Blu-ray 3D</td>\n			<td>26,96 €</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n\n<h4>Responsive Tabelle</h4>\n\n<table class=\"table table-responsive margin-vertical-medium\">\n	<thead>\n		<tr>\n			<th>Product Name</th>\n			<th>Format</th>\n			<th>Price</th>\n		</tr>\n	</thead>\n	<tfoot>\n		<tr>\n			<td> </td>\n			<td><strong>Total:</strong></td>\n			<td><strong>171,10 €</strong></td>\n		</tr>\n	</tfoot>\n	<tbody>\n		<tr>\n			<td data-th=\"Product name\">Star Wars: The Complete Saga (Episodes I-VI)</td>\n			<td data-th=\"Type\">Blu-ray</td>\n			<td data-th=\"Price\">84,96 €</td>\n		</tr>\n		<tr>\n			<td data-th=\"Product name\">Guardians of the Galaxy</td>\n			<td data-th=\"Type\">Blu-ray 3D</td>\n			<td data-th=\"Price\">26,96 €</td>\n		</tr>\n	</tbody>\n</table>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1233', '<p><span class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</span></p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<p>204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden. Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1235', '', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1238', '<p><span class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</span></p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<p>204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden. Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1240', '', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1243', '<p><span class=\"text-large\">Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</span></p>\n\n<p>Oft werden in Typoblindtexte auch fremdsprachige Satzteile eingebaut (AVAIL® and Wefox™ are testing aussi la Kerning), um die Wirkung in anderen Sprachen zu testen. In Lateinisch sieht zum Beispiel fast jede Schrift gut aus. Quod erat demonstrandum. Seit 1975 fehlen in den meisten Testtexten die Zahlen, weswegen nach TypoGb.</p>\n\n<p>204 § ab dem Jahr 2034 Zahlen in 86 der Texte zur Pflicht werden. Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten. Je nach Software und Voreinstellungen können eingebaute Kapitälchen, Kerning oder Ligaturen (sehr pfiffig) nicht richtig dargestellt werden. Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks</p>', '');
INSERT INTO `field_content` (`pages_id`, `data`, `data1034`) VALUES('1245', '', '');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_external_url`;
CREATE TABLE `field_external_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_facebook`;
CREATE TABLE `field_facebook` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_facebook` (`pages_id`, `data`) VALUES('1035', 'https://www.facebook.com/');
INSERT INTO `field_facebook` (`pages_id`, `data`) VALUES('1123', 'http://www.facebook.com');
INSERT INTO `field_facebook` (`pages_id`, `data`) VALUES('1080', 'https://www.facebook.com/');

DROP TABLE IF EXISTS `field_files`;
CREATE TABLE `field_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_files_secure`;
CREATE TABLE `field_files_secure` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_force_passwd_change`;
CREATE TABLE `field_force_passwd_change` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_gallery`;
CREATE TABLE `field_gallery` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1173', 'architecture-business-coffee-2199190.jpg', '1', '[null]', '2019-10-18 14:43:29', '2019-10-18 14:43:29', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1173', 'beautiful-blur-brunette-2602085.jpg', '2', '[null]', '2019-10-18 14:43:29', '2019-10-18 14:43:29', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1113', 'architecture-business-coffee-2199190.jpg', '5', '[\"\"]', '2019-10-05 13:11:50', '2019-10-05 13:11:50', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1113', 'dandelion-dandelion-seeds-flora-2980635.jpg', '4', '[\"\"]', '2019-10-05 13:11:50', '2019-10-05 13:11:50', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1113', 'chairs-dining-dining-room-2995012.jpg', '3', '[\"\"]', '2019-10-05 13:11:50', '2019-10-05 13:11:50', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1113', 'coconut-trees-couple-daylight-2174656.jpg', '2', '[\"\"]', '2019-10-05 13:11:50', '2019-10-05 13:11:50', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1113', 'activity-adult-adventure-1543756.jpg', '1', '[\"\"]', '2019-10-05 13:11:50', '2019-10-05 13:11:50', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1113', 'ambiance-brick-wall-ceiling-2555635.jpg', '0', '[\"\"]', '2019-10-05 13:11:50', '2019-10-05 13:11:50', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1173', 'blur-checkered-shirt-close-up-297933.jpg', '3', '[null]', '2019-10-18 14:43:29', '2019-10-18 14:43:29', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1173', 'adjusting-blur-businessman-2897883.jpg', '0', '[null]', '2019-10-18 14:43:29', '2019-10-18 14:43:29', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1235', 'beautiful-blur-brunette-2602085.jpg', '0', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1235', 'chairs-dining-dining-room-2995012.jpg', '1', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1235', 'dandelion-dandelion-seeds-flora-2980635.jpg', '2', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1240', 'beautiful-blur-brunette-2602085.jpg', '0', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1240', 'chairs-dining-dining-room-2995012.jpg', '1', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1240', 'dandelion-dandelion-seeds-flora-2980635.jpg', '2', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1245', 'beautiful-blur-brunette-2602085.jpg', '0', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1245', 'chairs-dining-dining-room-2995012.jpg', '1', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');
INSERT INTO `field_gallery` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1245', 'dandelion-dandelion-seeds-flora-2980635.jpg', '2', '[\"\"]', '2019-10-25 16:54:25', '2019-10-25 16:54:25', '');

DROP TABLE IF EXISTS `field_google`;
CREATE TABLE `field_google` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_google` (`pages_id`, `data`) VALUES('1035', 'https://goo.gl/maps/VmH4psR32xqteE1k6');
INSERT INTO `field_google` (`pages_id`, `data`) VALUES('1123', 'http://www.google.com');
INSERT INTO `field_google` (`pages_id`, `data`) VALUES('1080', 'https://goo.gl/maps/VmH4psR32xqteE1k6');

DROP TABLE IF EXISTS `field_hero_caption`;
CREATE TABLE `field_hero_caption` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1105', '', '');
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1151', 'Kluge und Effektive', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1220', '', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1158', '', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1', '', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1176', 'Wir kümmern uns um Ihre Homepage', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1035', 'Kluge und Effektive', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1228', '', '');
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1222', '', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1184', '', NULL);
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1233', '', '');
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1238', '', '');
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1243', '', '');
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1249', '', '');
INSERT INTO `field_hero_caption` (`pages_id`, `data`, `data1034`) VALUES('1263', '', NULL);

DROP TABLE IF EXISTS `field_hero_caption_byline`;
CREATE TABLE `field_hero_caption_byline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1105', '', '');
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1151', 'Lösungen für Ihr Unternehmen', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1220', '', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1158', '', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1', '', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1176', 'damit Sie sich um Ihr Geschäft kümmern können', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1035', 'Lösungen für Ihr Unternehmen', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1228', '', '');
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1222', '', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1184', '', NULL);
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1233', '', '');
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1238', '', '');
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1243', '', '');
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1249', '', '');
INSERT INTO `field_hero_caption_byline` (`pages_id`, `data`, `data1034`) VALUES('1263', '', NULL);

DROP TABLE IF EXISTS `field_hero_image`;
CREATE TABLE `field_hero_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hero_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1105', 'adult-2449725_1920.jpg', '0', '[\"\"]', '2019-10-08 13:23:58', '2019-10-08 13:23:58', '');
INSERT INTO `field_hero_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1151', 'blur-checkered-shirt-close-up-297933.jpg', '0', '[\"\"]', '2019-10-08 13:16:05', '2019-10-08 13:16:05', '');
INSERT INTO `field_hero_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1176', 'business-suit-690048_1920.jpg', '0', '[\"\"]', '2019-10-08 16:09:34', '2019-10-08 16:09:34', '');

DROP TABLE IF EXISTS `field_hero_items`;
CREATE TABLE `field_hero_items` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1035', '1105', '1', '1104');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1220', '', '0', '1221');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1151,1176', '2', '1143');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1126', '', '0', '1149');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1228', '', '0', '1229');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1222', '', '0', '1223');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1184', '', '0', '1185');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1233', '', '0', '1234');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1238', '', '0', '1239');
INSERT INTO `field_hero_items` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1243', '', '0', '1244');

DROP TABLE IF EXISTS `field_hero_link`;
CREATE TABLE `field_hero_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_instagram`;
CREATE TABLE `field_instagram` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_internal_url`;
CREATE TABLE `field_internal_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1018', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1018', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageadd--processpageadd-module.json', '133', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '132', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processmodule--processmodule-module.json', '131', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processlogin--processlogin-module.json', '130', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processlogger--processlogger-module.json', '129', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processlist-module.json', '128', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processhome-module.json', '127', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processforgotpassword-module.json', '126', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processfield--processfieldexportimport-php.json', '125', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processfield--processfield-module.json', '124', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json', '123', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--pagerender-module.json', '122', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--pagepaths-module.json', '121', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json', '120', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--page--pagefrontedit--pagefrontedit-module.json', '119', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '118', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--markup--markuppagefields-module.json', '117', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--processlanguage-module.json', '116', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagetranslator-php.json', '115', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagetabs-module.json', '114', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '113', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupportinstall-php.json', '112', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupportfields-module.json', '111', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languagesupport-module.json', '110', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--languagesupport--languageparser-php.json', '109', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '108', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--jquery--jqueryui--jqueryui-module.json', '107', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldurl-module.json', '106', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldtextarea-module.json', '105', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldtext-module.json', '104', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '103', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '102', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '101', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldselect-module.json', '100', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '99', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json', '98', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '97', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '96', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '95', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '94', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '93', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '92', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '91', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '90', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldname-module.json', '89', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldmarkup-module.json', '88', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldinteger-module.json', '87', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '86', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json', '85', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldhidden-module.json', '84', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldform-module.json', '83', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldfloat-module.json', '82', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '81', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldfieldset-module.json', '80', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldemail-module.json', '79', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '78', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '77', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '76', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '75', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldbutton-module.json', '74', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '73', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--filecompilertags-module.json', '71', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--image--imagesizerengineanimatedgif--imagesizerengineanimatedgif-module.json', '72', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeurl-module.json', '70', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypetextareahelper-php.json', '69', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypetext-module.json', '68', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeselector-module.json', '67', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '66', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '65', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--fieldtypefieldsetpage-module.json', '64', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--fieldsetpageinstructions-php.json', '63', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtyperepeater--config-php.json', '62', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '61', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypepage-module.json', '60', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json', '59', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json', '58', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json', '57', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypemodule-module.json', '56', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypeinteger-module.json', '55', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypefloat-module.json', '54', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypefile-module.json', '53', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '52', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '51', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '50', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '49', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json', '48', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json', '47', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '46', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '45', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '44', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--config-php.json', '43', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--adminthemeuikit-module.json', '42', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--_sidenav-masthead-php.json', '41', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--_masthead-php.json', '40', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemeuikit--_footer-php.json', '39', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemereno--default-php.json', '38', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '37', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '36', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '35', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '34', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wireupload-php.json', '33', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wireshutdown-php.json', '32', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wirehttp-php.json', '31', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wiredatetime-php.json', '30', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--wirecache-php.json', '29', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--sessioncsrf-php.json', '28', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--session-php.json', '27', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--process-php.json', '25', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--sanitizer-php.json', '26', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--permissions-php.json', '24', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--password-php.json', '23', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--paginatedarray-php.json', '22', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--pagesexportimport-php.json', '21', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--pageseditor-php.json', '20', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--pageimage-php.json', '19', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--modulesduplicates-php.json', '18', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--modules-php.json', '17', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--markupqa-php.json', '16', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--inputfieldwrapper-php.json', '15', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--inputfield-php.json', '14', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--imagesizerengine-php.json', '13', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--functions-php.json', '12', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--filevalidatormodule-php.json', '11', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--filecompilermodule-php.json', '10', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--filecompiler-php.json', '9', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldtype-php.json', '7', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldtypemulti-php.json', '8', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldselectorinfo-php.json', '6', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fields-php.json', '5', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--fieldgroups-php.json', '4', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--adminthemeframework-php.json', '2', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--field-php.json', '3', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--admintheme-php.json', '1', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--core--admin-php.json', '0', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1034', 'wire--modules--languagesupport--languagesupport-module.json', '0', '[\"\"]', '2019-06-24 15:41:26', '2019-06-24 15:41:26', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageclone-module.json', '134', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageedit--pagebookmarks-php.json', '135', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageedit--processpageedit-module.json', '136', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '137', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '138', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelist-module.json', '139', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelistactions-php.json', '140', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelistrender-php.json', '141', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelist--processpagelistrenderjson-php.json', '142', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelister--processpagelister-module.json', '143', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json', '144', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '145', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagesexportimport--processpagesexportimport-module.json', '146', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagesort-module.json', '147', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagetrash-module.json', '148', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpagetype--processpagetype-module.json', '149', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpageview-module.json', '150', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processpermission--processpermission-module.json', '151', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processprofile--processprofile-module.json', '152', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '153', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processrole--processrole-module.json', '154', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processtemplate--processtemplate-module.json', '155', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '156', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processuser--processuser-module.json', '157', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--process--processuser--processuserconfig-php.json', '158', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '159', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '160', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '161', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '162', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '163', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--system--systemupdater--systemupdater-module.json', '164', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--textformatter--textformatterentities-module.json', '165', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json', '166', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json', '167', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--templates-admin--debug-inc.json', '168', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'wire--templates-admin--default-php.json', '169', '[null]', '2019-10-18 17:19:46', '2019-10-18 17:19:46', '');

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1034', 'site--templates--login-php.json', '0', '[\"\"]', '2019-09-03 17:08:50', '2019-09-03 17:08:50', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1034', 'site--templates--logout-php.json', '1', '[\"\"]', '2019-09-03 17:08:50', '2019-09-03 17:08:50', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1034', 'site--templates--_translations-php.json', '2', '[\"\"]', '2019-09-03 17:08:50', '2019-09-03 17:08:50', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--fieldtypecolorpicker--inputfieldcolorpicker-module.json', '23', '[\"\"]', '2019-10-23 15:51:24', '2019-10-23 15:51:24', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--pagetableextraactions--pagetableextraactions-module.json', '22', '[\"\"]', '2019-10-23 15:51:24', '2019-10-23 15:51:24', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--templates--_translations_contact_form-php.json', '17', '[null]', '2019-10-18 17:30:17', '2019-10-18 17:30:17', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--loginwithemail--loginwithemail-module.json', '18', '[\"\"]', '2019-10-23 15:51:24', '2019-10-23 15:51:24', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--markupsitemap--markupsitemap-module-php.json', '19', '[\"\"]', '2019-10-23 15:51:24', '2019-10-23 15:51:24', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--imageextra--imageextra-module.json', '20', '[\"\"]', '2019-10-23 15:51:24', '2019-10-23 15:51:24', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--fieldtyperepeatermatrix--inputfieldrepeatermatrix-module.json', '21', '[\"\"]', '2019-10-23 15:51:24', '2019-10-23 15:51:24', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--templates--login-php.json', '13', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--templates--logout-php.json', '14', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--templates--_translations-php.json', '15', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--templates--_protected-config-php.json', '16', '[null]', '2019-10-18 17:30:17', '2019-10-18 17:30:17', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--continentsandcountries--lib--continentsandcountriestranslation-php.json', '12', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--pageactiondelete--pageactiondelete-module.json', '11', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--pageactionemail--pageactionemail-module.json', '10', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--fieldtypetextareas--inputfieldtextareas-module.json', '9', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--markupseo--markupseo-module.json', '0', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--pageprotector--pageprotector-module-php.json', '1', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--fieldtypemapmarker--inputfieldmapmarker-module.json', '2', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--passwordforcechange--passwordforcechange-module-php.json', '3', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--processpagelisterpro--processpagelisterpro-module.json', '8', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--processpagelisterpro--listerproactions-php.json', '7', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--fieldtypetable--inputfieldtable-module.json', '6', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--processpagedelete--processpagedelete-module.json', '5', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1018', 'site--modules--pages2json--pages2json-module.json', '4', '[\"\"]', '2019-06-28 17:15:08', '2019-06-28 17:15:08', '');

DROP TABLE IF EXISTS `field_language_short_code`;
CREATE TABLE `field_language_short_code` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_short_code` (`pages_id`, `data`) VALUES('1018', 'de');
INSERT INTO `field_language_short_code` (`pages_id`, `data`) VALUES('1034', 'en');

DROP TABLE IF EXISTS `field_linkedin`;
CREATE TABLE `field_linkedin` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_menutext`;
CREATE TABLE `field_menutext` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1164', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1069', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1047', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1048', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1049', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1074', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1113', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1052', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1053', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1054', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1055', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1065', 'Menütext', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1073', 'News', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1070', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1068', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1075', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1163', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1078', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1079', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1080', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1081', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1082', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1132', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1086', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1123', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1097', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1126', 'Etiam sit', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1165', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1102', 'Typographie', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1125', 'Aenean', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1127', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1', 'Home', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1168', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1166', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1141', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1139', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1140', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1220', 'Impressum', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1167', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1159', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1170', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1171', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1172', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1173', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1174', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1200', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1177', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1203', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1222', 'Datenschutz', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1184', 'Kontakt', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1187', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1196', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1189', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1192', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1198', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1194', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1195', '', NULL);
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1202', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1205', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1226', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1228', 'Tabellen', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1231', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1232', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1233', 'Submenü', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1235', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1236', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1237', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1238', 'Submenü', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1240', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1241', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1242', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1243', 'Submenü', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1245', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1246', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1247', '', '');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1034`) VALUES('1262', '', NULL);

DROP TABLE IF EXISTS `field_notifications`;
CREATE TABLE `field_notifications` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `title` tinytext NOT NULL,
  `src_id` int(10) unsigned NOT NULL,
  `flags` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `qty` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `src_id` (`src_id`),
  KEY `flags` (`flags`),
  KEY `created` (`created`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_notifications` (`pages_id`, `data`, `sort`, `title`, `src_id`, `flags`, `created`, `modified`, `qty`) VALUES('41', '{\"id\":\"noIDce3946a0841b172af12d99f3209db035\"}', '0', 'Benutzer ausgeloggt: uniqu3', '23', '16448', '2019-12-13 11:59:22', '2019-12-17 09:26:24', '1');
INSERT INTO `field_notifications` (`pages_id`, `data`, `sort`, `title`, `src_id`, `flags`, `created`, `modified`, `qty`) VALUES('41', '{\"id\":\"noID1f0389a8c77538a66e3497fad73692f6\",\"html\":\"<p><b>Useragent:<\\/b> Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36<br \\/><b>Time:<\\/b> 2019-12-17 09:26:24<br \\/><b>IP:<\\/b> 88.116.89.194<\\/p>\"}', '1', 'Benutzer angemeldet: uniqu3', '23', '16448', '2019-12-17 09:26:24', '2019-12-17 09:26:24', '1');

DROP TABLE IF EXISTS `field_option_ajax_form`;
CREATE TABLE `field_option_ajax_form` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_option_align`;
CREATE TABLE `field_option_align` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_align` (`pages_id`, `data`, `sort`) VALUES('1035', '2', '0');

DROP TABLE IF EXISTS `field_option_column_size`;
CREATE TABLE `field_option_column_size` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL DEFAULT '0',
  `data_max` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`),
  KEY `data_range` (`data`,`data_max`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1127', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1228', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1220', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1184', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1203', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1222', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1233', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1238', '8', '0');
INSERT INTO `field_option_column_size` (`pages_id`, `data`, `data_max`) VALUES('1243', '8', '0');

DROP TABLE IF EXISTS `field_option_disable_aside`;
CREATE TABLE `field_option_disable_aside` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_disable_aside` (`pages_id`, `data`) VALUES('1065', '1');
INSERT INTO `field_option_disable_aside` (`pages_id`, `data`) VALUES('1', '1');
INSERT INTO `field_option_disable_aside` (`pages_id`, `data`) VALUES('1073', '1');

DROP TABLE IF EXISTS `field_option_disable_headline`;
CREATE TABLE `field_option_disable_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1187', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1186', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1194', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1232', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1235', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1237', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1240', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1242', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1245', '1');
INSERT INTO `field_option_disable_headline` (`pages_id`, `data`) VALUES('1247', '1');

DROP TABLE IF EXISTS `field_option_disable_hero`;
CREATE TABLE `field_option_disable_hero` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_disable_hero` (`pages_id`, `data`) VALUES('1125', '1');

DROP TABLE IF EXISTS `field_option_enable_aside`;
CREATE TABLE `field_option_enable_aside` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_enable_aside` (`pages_id`, `data`) VALUES('1035', '1');

DROP TABLE IF EXISTS `field_option_exclude_blocks`;
CREATE TABLE `field_option_exclude_blocks` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_exclude_blocks` (`pages_id`, `data`) VALUES('1184', '1');
INSERT INTO `field_option_exclude_blocks` (`pages_id`, `data`) VALUES('1102', '1');
INSERT INTO `field_option_exclude_blocks` (`pages_id`, `data`) VALUES('1228', '1');
INSERT INTO `field_option_exclude_blocks` (`pages_id`, `data`) VALUES('1233', '1');
INSERT INTO `field_option_exclude_blocks` (`pages_id`, `data`) VALUES('1238', '1');
INSERT INTO `field_option_exclude_blocks` (`pages_id`, `data`) VALUES('1243', '1');

DROP TABLE IF EXISTS `field_option_form_recipients`;
CREATE TABLE `field_option_form_recipients` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_form_recipients` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1184', '', '0', '1209');

DROP TABLE IF EXISTS `field_option_image_position`;
CREATE TABLE `field_option_image_position` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_image_position` (`pages_id`, `data`, `sort`) VALUES('1159', '2', '0');
INSERT INTO `field_option_image_position` (`pages_id`, `data`, `sort`) VALUES('1127', '1', '0');
INSERT INTO `field_option_image_position` (`pages_id`, `data`, `sort`) VALUES('1', '2', '0');
INSERT INTO `field_option_image_position` (`pages_id`, `data`, `sort`) VALUES('1097', '1', '0');

DROP TABLE IF EXISTS `field_option_limit`;
CREATE TABLE `field_option_limit` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL DEFAULT '0',
  `data_max` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`),
  KEY `data_range` (`data`,`data_max`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_limit` (`pages_id`, `data`, `data_max`) VALUES('1200', '3', '0');
INSERT INTO `field_option_limit` (`pages_id`, `data`, `data_max`) VALUES('1226', '3', '0');

DROP TABLE IF EXISTS `field_option_map`;
CREATE TABLE `field_option_map` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_option_pages`;
CREATE TABLE `field_option_pages` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1192', '1065', '0');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1231', '1065', '0');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1236', '1065', '0');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1241', '1065', '0');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1246', '1065', '0');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1097', '1102', '0');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1097', '1125', '2');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1192', '1125', '1');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1231', '1125', '1');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1236', '1125', '1');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1241', '1125', '1');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1246', '1125', '1');
INSERT INTO `field_option_pages` (`pages_id`, `data`, `sort`) VALUES('1097', '1126', '1');

DROP TABLE IF EXISTS `field_option_people`;
CREATE TABLE `field_option_people` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_people` (`pages_id`, `data`, `sort`) VALUES('1205', '1123', '0');
INSERT INTO `field_option_people` (`pages_id`, `data`, `sort`) VALUES('1205', '1166', '1');

DROP TABLE IF EXISTS `field_option_text_align`;
CREATE TABLE `field_option_text_align` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_text_align` (`pages_id`, `data`, `sort`) VALUES('1226', '2', '0');
INSERT INTO `field_option_text_align` (`pages_id`, `data`, `sort`) VALUES('1097', '3', '0');
INSERT INTO `field_option_text_align` (`pages_id`, `data`, `sort`) VALUES('1127', '1', '0');
INSERT INTO `field_option_text_align` (`pages_id`, `data`, `sort`) VALUES('1', '1', '0');
INSERT INTO `field_option_text_align` (`pages_id`, `data`, `sort`) VALUES('1159', '2', '0');

DROP TABLE IF EXISTS `field_option_text_blocks`;
CREATE TABLE `field_option_text_blocks` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL,
  `alpha` mediumtext,
  `beta` mediumtext,
  PRIMARY KEY (`data`),
  UNIQUE KEY `pages_id` (`pages_id`,`sort`),
  FULLTEXT KEY `alpha` (`alpha`),
  FULLTEXT KEY `beta` (`beta`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `field_option_text_blocks` (`pages_id`, `data`, `sort`, `alpha`, `beta`) VALUES('1198', '1', '0', '1018:<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.</p>', '1018:<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.</p>');

DROP TABLE IF EXISTS `field_option_thumbnail`;
CREATE TABLE `field_option_thumbnail` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_thumbnail` (`pages_id`, `data`) VALUES('1097', '1');
INSERT INTO `field_option_thumbnail` (`pages_id`, `data`) VALUES('1159', '1');
INSERT INTO `field_option_thumbnail` (`pages_id`, `data`) VALUES('1073', '1');
INSERT INTO `field_option_thumbnail` (`pages_id`, `data`) VALUES('1200', '1');

DROP TABLE IF EXISTS `field_option_type`;
CREATE TABLE `field_option_type` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_option_type` (`pages_id`, `data`, `sort`) VALUES('1159', '1', '0');
INSERT INTO `field_option_type` (`pages_id`, `data`, `sort`) VALUES('1097', '1', '0');
INSERT INTO `field_option_type` (`pages_id`, `data`, `sort`) VALUES('1073', '1', '0');
INSERT INTO `field_option_type` (`pages_id`, `data`, `sort`) VALUES('1200', '2', '0');

DROP TABLE IF EXISTS `field_partials`;
CREATE TABLE `field_partials` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_partials` (`pages_id`, `data`, `sort`) VALUES('1126', '1203', '0');
INSERT INTO `field_partials` (`pages_id`, `data`, `sort`) VALUES('1125', '1205', '0');
INSERT INTO `field_partials` (`pages_id`, `data`, `sort`) VALUES('1233', '1235', '0');
INSERT INTO `field_partials` (`pages_id`, `data`, `sort`) VALUES('1238', '1240', '0');
INSERT INTO `field_partials` (`pages_id`, `data`, `sort`) VALUES('1243', '1245', '0');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_person_email`;
CREATE TABLE `field_person_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_person_email` (`pages_id`, `data`, `data1034`) VALUES('1080', 'meier@mail.test', '');
INSERT INTO `field_person_email` (`pages_id`, `data`, `data1034`) VALUES('1166', 'joe.smith@mail.test', NULL);
INSERT INTO `field_person_email` (`pages_id`, `data`, `data1034`) VALUES('1164', 'jane.doe@mail.test', NULL);
INSERT INTO `field_person_email` (`pages_id`, `data`, `data1034`) VALUES('1123', 'm.mustermann@mail.test', '');
INSERT INTO `field_person_email` (`pages_id`, `data`, `data1034`) VALUES('1262', '', NULL);

DROP TABLE IF EXISTS `field_person_fax`;
CREATE TABLE `field_person_fax` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_person_fax` (`pages_id`, `data`, `data1034`) VALUES('1080', '', '');
INSERT INTO `field_person_fax` (`pages_id`, `data`, `data1034`) VALUES('1166', '', NULL);
INSERT INTO `field_person_fax` (`pages_id`, `data`, `data1034`) VALUES('1164', '', NULL);
INSERT INTO `field_person_fax` (`pages_id`, `data`, `data1034`) VALUES('1123', '', '');
INSERT INTO `field_person_fax` (`pages_id`, `data`, `data1034`) VALUES('1262', '', NULL);

DROP TABLE IF EXISTS `field_person_firstname`;
CREATE TABLE `field_person_firstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_person_firstname` (`pages_id`, `data`) VALUES('1080', 'Hans');
INSERT INTO `field_person_firstname` (`pages_id`, `data`) VALUES('1123', 'Max');
INSERT INTO `field_person_firstname` (`pages_id`, `data`) VALUES('1164', 'Jane');
INSERT INTO `field_person_firstname` (`pages_id`, `data`) VALUES('1166', 'Joe');

DROP TABLE IF EXISTS `field_person_mobile`;
CREATE TABLE `field_person_mobile` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_person_mobile` (`pages_id`, `data`, `data1034`) VALUES('1080', '01 55 22 55 143', '');
INSERT INTO `field_person_mobile` (`pages_id`, `data`, `data1034`) VALUES('1164', '012 356 979 21', NULL);
INSERT INTO `field_person_mobile` (`pages_id`, `data`, `data1034`) VALUES('1123', '01 52 62 223', '');
INSERT INTO `field_person_mobile` (`pages_id`, `data`, `data1034`) VALUES('1166', '046 875 369 45', NULL);
INSERT INTO `field_person_mobile` (`pages_id`, `data`, `data1034`) VALUES('1262', '', NULL);

DROP TABLE IF EXISTS `field_person_phone`;
CREATE TABLE `field_person_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_person_phone` (`pages_id`, `data`, `data1034`) VALUES('1080', '01 55 22 55 143', '');
INSERT INTO `field_person_phone` (`pages_id`, `data`, `data1034`) VALUES('1164', '01 55 22 55 143', '');
INSERT INTO `field_person_phone` (`pages_id`, `data`, `data1034`) VALUES('1166', '01 55 22 55 143', '');
INSERT INTO `field_person_phone` (`pages_id`, `data`, `data1034`) VALUES('1123', '01 55 66 222', '');
INSERT INTO `field_person_phone` (`pages_id`, `data`, `data1034`) VALUES('1262', '', NULL);

DROP TABLE IF EXISTS `field_person_position`;
CREATE TABLE `field_person_position` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_person_position` (`pages_id`, `data`, `sort`) VALUES('1080', '1054', '0');
INSERT INTO `field_person_position` (`pages_id`, `data`, `sort`) VALUES('1123', '1163', '0');
INSERT INTO `field_person_position` (`pages_id`, `data`, `sort`) VALUES('1164', '1165', '0');
INSERT INTO `field_person_position` (`pages_id`, `data`, `sort`) VALUES('1166', '1167', '0');

DROP TABLE IF EXISTS `field_person_vcf`;
CREATE TABLE `field_person_vcf` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_person_vcf` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1080', 'person-vcard.vcf', '0', '[\"\"]', '2019-12-12 14:57:28', '2019-12-12 14:57:28', '');
INSERT INTO `field_person_vcf` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1164', 'person-vcard.vcf', '0', '[\"\"]', '2019-12-12 14:56:24', '2019-12-12 14:56:24', '');
INSERT INTO `field_person_vcf` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1166', 'person-vcard.vcf', '0', '[\"\"]', '2019-12-12 14:58:05', '2019-12-12 14:58:05', '');
INSERT INTO `field_person_vcf` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1123', 'person-vcard.vcf', '0', '[\"\"]', '2019-12-12 14:57:48', '2019-12-12 14:57:48', '');

DROP TABLE IF EXISTS `field_preview_thumbnail`;
CREATE TABLE `field_preview_thumbnail` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_preview_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1126', 'blur-bottle-bright-273238.jpg', '0', '[\"\"]', '2019-10-04 16:08:01', '2019-10-04 16:08:01', '');
INSERT INTO `field_preview_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1102', 'board-game-businessman-challenge-1040157.jpg', '0', '[\"\"]', '2019-10-04 16:18:40', '2019-10-04 16:18:40', '');
INSERT INTO `field_preview_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1125', 'adult-casual-desk-806835.jpg', '0', '[\"\"]', '2019-10-04 16:20:33', '2019-10-04 16:20:33', '');
INSERT INTO `field_preview_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1228', 'board-game-businessman-challenge-1040157.jpg', '0', '[\"\"]', '2019-10-04 16:18:40', '2019-10-04 16:18:40', '');
INSERT INTO `field_preview_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1233', 'board-game-businessman-challenge-1040157.jpg', '0', '[\"\"]', '2019-10-04 16:18:40', '2019-10-04 16:18:40', '');
INSERT INTO `field_preview_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1238', 'board-game-businessman-challenge-1040157.jpg', '0', '[\"\"]', '2019-10-04 16:18:40', '2019-10-04 16:18:40', '');
INSERT INTO `field_preview_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1243', 'board-game-businessman-challenge-1040157.jpg', '0', '[\"\"]', '2019-10-04 16:18:40', '2019-10-04 16:18:40', '');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '209');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '169');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '170');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1020', '179');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1023', '180');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1025', '201');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1030', '208');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1031', '210');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1032', '226');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1036', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1160', '209');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1161', '209');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1213', '259');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1250', '263');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1253', '265');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1254', '266');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1257', '267');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1265', '269');

DROP TABLE IF EXISTS `field_publish_from`;
CREATE TABLE `field_publish_from` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_publish_from` (`pages_id`, `data`) VALUES('1074', '2019-06-25 00:00:00');
INSERT INTO `field_publish_from` (`pages_id`, `data`) VALUES('1170', '2019-08-07 00:00:00');
INSERT INTO `field_publish_from` (`pages_id`, `data`) VALUES('1171', '2019-08-21 00:00:00');
INSERT INTO `field_publish_from` (`pages_id`, `data`) VALUES('1172', '2019-09-09 00:00:00');
INSERT INTO `field_publish_from` (`pages_id`, `data`) VALUES('1173', '2019-10-03 00:00:00');
INSERT INTO `field_publish_from` (`pages_id`, `data`) VALUES('1174', '2019-10-08 00:00:00');

DROP TABLE IF EXISTS `field_publish_until`;
CREATE TABLE `field_publish_until` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_qr_image`;
CREATE TABLE `field_qr_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_qr_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1123', 'person-qr-image.gif', '0', '[\"\"]', '2019-12-12 14:57:48', '2019-12-12 14:57:48', '');
INSERT INTO `field_qr_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1080', 'person-qr-image.gif', '0', '[\"\"]', '2019-12-12 14:57:28', '2019-12-12 14:57:28', '');
INSERT INTO `field_qr_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1164', 'person-qr-image.gif', '0', '[\"\"]', '2019-12-12 14:56:24', '2019-12-12 14:56:24', '');
INSERT INTO `field_qr_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1166', 'person-qr-image.gif', '0', '[\"\"]', '2019-12-12 14:58:05', '2019-12-12 14:58:05', '');

DROP TABLE IF EXISTS `field_repeater_matrix_type`;
CREATE TABLE `field_repeater_matrix_type` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_repeater_matrix_type` (`pages_id`, `data`) VALUES('1130', '1');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sections`;
CREATE TABLE `field_sections` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1065', '1097', '0');
INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1065', '1113', '1');
INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1', '1127', '1');
INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1126', '1159', '0');
INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1125', '1177', '0');
INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1126', '1198', '1');
INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1125', '1200', '1');
INSERT INTO `field_sections` (`pages_id`, `data`, `sort`) VALUES('1', '1226', '0');

DROP TABLE IF EXISTS `field_seo_canonical`;
CREATE TABLE `field_seo_canonical` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1170', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1171', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1172', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1173', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1174', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1228', '', '');
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1220', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1184', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1222', '', NULL);
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1233', '', '');
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1238', '', '');
INSERT INTO `field_seo_canonical` (`pages_id`, `data`, `data1034`) VALUES('1243', '', '');

DROP TABLE IF EXISTS `field_seo_custom`;
CREATE TABLE `field_seo_custom` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1034` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1170', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1171', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1172', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1173', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1174', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1228', '', '');
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1220', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1184', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1222', '', NULL);
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1233', '', '');
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1238', '', '');
INSERT INTO `field_seo_custom` (`pages_id`, `data`, `data1034`) VALUES('1243', '', '');

DROP TABLE IF EXISTS `field_seo_description`;
CREATE TABLE `field_seo_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1170', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1171', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1172', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1173', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1174', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1228', '', '');
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1220', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1184', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1222', '', NULL);
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1233', '', '');
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1238', '', '');
INSERT INTO `field_seo_description` (`pages_id`, `data`, `data1034`) VALUES('1243', '', '');

DROP TABLE IF EXISTS `field_seo_image`;
CREATE TABLE `field_seo_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_seo_keywords`;
CREATE TABLE `field_seo_keywords` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1170', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1171', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1172', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1173', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1174', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1228', '', '');
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1220', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1184', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1222', '', NULL);
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1233', '', '');
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1238', '', '');
INSERT INTO `field_seo_keywords` (`pages_id`, `data`, `data1034`) VALUES('1243', '', '');

DROP TABLE IF EXISTS `field_seo_robots`;
CREATE TABLE `field_seo_robots` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_seo_tab`;
CREATE TABLE `field_seo_tab` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_seo_tab_end`;
CREATE TABLE `field_seo_tab_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_seo_title`;
CREATE TABLE `field_seo_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1', 'Willkommen beim Demo Paket', 'Landing page');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1049', 'Suche', 'Search');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1081', 'Login', 'Login');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1102', 'Die Typographie', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1125', 'Aenean massa nascetur', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1065', 'Überschrift', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1126', 'Etiam sit amet', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1074', 'News Beitrag Überschrift', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1170', 'Software und Voreinstellungen können', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1171', 'Software und Voreinstellungen können eingebaute Kapitälchen', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1172', 'Manchmal Sätze, die alle Buchstaben des', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1173', 'Oft werden in Typoblindtexte', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1174', 'The quick brown fox jumps over', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1073', 'Unsere Neuigkeiten', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1228', 'Test', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1220', 'Impressum', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1184', 'Kontaktieren Sie uns', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('27', 'Fehler 404', 'Error 404');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1222', 'Datenschutzerklärung', NULL);
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1233', 'Test', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1238', 'Test', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1243', 'Test', '');
INSERT INTO `field_seo_title` (`pages_id`, `data`, `data1034`) VALUES('1078', 'Sectionheader', NULL);

DROP TABLE IF EXISTS `field_settings_aside`;
CREATE TABLE `field_settings_aside` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_aside_end`;
CREATE TABLE `field_settings_aside_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_business_hours`;
CREATE TABLE `field_settings_business_hours` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned NOT NULL,
  `day` text,
  `time` text,
  PRIMARY KEY (`data`),
  UNIQUE KEY `pages_id` (`pages_id`,`sort`),
  FULLTEXT KEY `day` (`day`),
  FULLTEXT KEY `time` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_business_hours` (`pages_id`, `data`, `sort`, `day`, `time`) VALUES('1035', '1', '0', 'Mo - Fr', '9:00 - 12:00 und 13:30 - 17:30');

DROP TABLE IF EXISTS `field_settings_city`;
CREATE TABLE `field_settings_city` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_city` (`pages_id`, `data`, `data1034`) VALUES('1035', 'Bodensdorf', '');
INSERT INTO `field_settings_city` (`pages_id`, `data`, `data1034`) VALUES('1139', '', '');
INSERT INTO `field_settings_city` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);

DROP TABLE IF EXISTS `field_settings_company`;
CREATE TABLE `field_settings_company` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_company_end`;
CREATE TABLE `field_settings_company_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_company_name`;
CREATE TABLE `field_settings_company_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_company_name` (`pages_id`, `data`, `data1034`) VALUES('1035', 'idea arts kreativagentur', '');
INSERT INTO `field_settings_company_name` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);
INSERT INTO `field_settings_company_name` (`pages_id`, `data`, `data1034`) VALUES('1139', '', '');

DROP TABLE IF EXISTS `field_settings_country`;
CREATE TABLE `field_settings_country` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_country` (`pages_id`, `data`) VALUES('1035', 'ch');

DROP TABLE IF EXISTS `field_settings_email`;
CREATE TABLE `field_settings_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_email` (`pages_id`, `data`, `data1034`) VALUES('1035', 'ja@ichmachdas.eu', '');
INSERT INTO `field_settings_email` (`pages_id`, `data`, `data1034`) VALUES('1139', '', '');
INSERT INTO `field_settings_email` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);

DROP TABLE IF EXISTS `field_settings_fax`;
CREATE TABLE `field_settings_fax` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_fax` (`pages_id`, `data`, `data1034`) VALUES('1035', '', '');
INSERT INTO `field_settings_fax` (`pages_id`, `data`, `data1034`) VALUES('1139', '', '');
INSERT INTO `field_settings_fax` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);

DROP TABLE IF EXISTS `field_settings_footer`;
CREATE TABLE `field_settings_footer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_footer_end`;
CREATE TABLE `field_settings_footer_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_header`;
CREATE TABLE `field_settings_header` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_header_end`;
CREATE TABLE `field_settings_header_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_location`;
CREATE TABLE `field_settings_location` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  `lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `zoom` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `latlng` (`lat`,`lng`),
  KEY `zoom` (`zoom`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_location` (`pages_id`, `data`, `lat`, `lng`, `status`, `zoom`) VALUES('1186', '', '0.000000', '0.000000', '0', '12');
INSERT INTO `field_settings_location` (`pages_id`, `data`, `lat`, `lng`, `status`, `zoom`) VALUES('1130', '', '', '', '2', '15');

DROP TABLE IF EXISTS `field_settings_locations`;
CREATE TABLE `field_settings_locations` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_locations` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1035', '1130', '1', '1129');
INSERT INTO `field_settings_locations` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1177', '', '0', '1190');

DROP TABLE IF EXISTS `field_settings_phone`;
CREATE TABLE `field_settings_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_phone` (`pages_id`, `data`, `data1034`) VALUES('1035', '041 631 00 90', '');
INSERT INTO `field_settings_phone` (`pages_id`, `data`, `data1034`) VALUES('1139', '', '');
INSERT INTO `field_settings_phone` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);

DROP TABLE IF EXISTS `field_settings_social`;
CREATE TABLE `field_settings_social` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_social_end`;
CREATE TABLE `field_settings_social_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_street`;
CREATE TABLE `field_settings_street` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_street` (`pages_id`, `data`, `data1034`) VALUES('1035', 'Fischerweg 14', '');
INSERT INTO `field_settings_street` (`pages_id`, `data`, `data1034`) VALUES('1139', '', '');
INSERT INTO `field_settings_street` (`pages_id`, `data`, `data1034`) VALUES('1130', '', '');
INSERT INTO `field_settings_street` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);

DROP TABLE IF EXISTS `field_settings_visual`;
CREATE TABLE `field_settings_visual` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_visual_end`;
CREATE TABLE `field_settings_visual_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_settings_zip`;
CREATE TABLE `field_settings_zip` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_settings_zip` (`pages_id`, `data`) VALUES('1035', '9551');

DROP TABLE IF EXISTS `field_subheading`;
CREATE TABLE `field_subheading` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1065', 'Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1074', 'Dies ist ein Typoblindtext', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1097', 'Die Seiten einfach auswählen und verlinken', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1073', 'Beispiel der Neuigkeiten', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1125', 'Donec pede justo, fringilla vel', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1102', 'Für das Aussehen und einfache Formatierung ihrer Inhalte ist gesorgt.', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1113', 'Beispiel einer Bildergalerie', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1127', 'Dies ist ein Beispiel mit Inhaltsabschnitt', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1', 'Homepage gefällig?', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1126', 'Stellen Sie Ihre Seiten nach belieben zusamen', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1141', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1139', 'Sie finden uns hier', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1140', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1170', 'eingebaute Kapitälchen, Kerning oder Ligaturen', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1159', 'Ein Beispiel der Mitarbeiter oder Personen', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1220', 'Informationspflicht laut Art. 3 Abs. 1 lit. s UWG', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1171', 'Kerning oder Ligaturen (sehr pfiffig)', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1172', 'Alphabets enthalten - man nennt diese Sätze', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1173', 'auch fremdsprachige Satzteile eingebaut', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1174', 'the lazy old dog', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1198', 'Zweispalten Text-blöcke', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1184', 'Wir sind für Sie da', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1186', '', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1187', '', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1192', '', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1196', '', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1194', '', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1203', 'ob alle Buchstaben da sind und wie sie aussehen', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1200', 'Erfahren Sie was wir so gemacht haben', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('27', 'Die von Ihnen angeforderte Seite wurde nicht gefunden', 'The page that you have requested was not found');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1205', 'Individuell wählbare Optionen', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1222', 'Ihr Datenschutz ist uns wichtig', NULL);
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1226', 'Die wichtigsten Neuigkeiten für Sie im Überblick', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1228', 'zum Beispiel fast jede Schrift', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1231', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1232', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1233', 'zum Beispiel fast jede Schrift', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1235', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1236', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1237', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1238', 'zum Beispiel fast jede Schrift', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1240', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1241', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1242', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1243', 'zum Beispiel fast jede Schrift', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1245', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1246', '', '');
INSERT INTO `field_subheading` (`pages_id`, `data`, `data1034`) VALUES('1247', '', '');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1034` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1074', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</p>', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1126', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen.</p>', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1125', 'Nichteinhaltung wird mit bis zu 245 € oder 368 $ bestraft. Genauso wichtig in sind mittlerweile auch Âçcèñtë, die in neueren Schriften aber fast immer enthalten sind. Ein wichtiges aber schwierig zu integrierendes Feld sind OpenType-Funktionalitäten.', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1170', '', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1171', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.</p>', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1172', '', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1173', '<p>Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«. Sehr bekannt ist dieser: The quick brown fox jumps over the lazy old dog.</p>', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1174', '', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1228', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1220', '', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1184', '', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1222', '', NULL);
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1233', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1238', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1243', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1034`) VALUES('1102', 'Dies ist ein Typoblindtext. An ihm kann man sehen, ob alle Buchstaben da sind und wie sie aussehen. Manchmal benutzt man Worte wie Hamburgefonts, Rafgenduks oder Handgloves, um Schriften zu testen. Manchmal Sätze, die alle Buchstaben des Alphabets enthalten - man nennt diese Sätze »Pangrams«.', '');

DROP TABLE IF EXISTS `field_tab_content`;
CREATE TABLE `field_tab_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_content_end`;
CREATE TABLE `field_tab_content_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_files`;
CREATE TABLE `field_tab_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_files_end`;
CREATE TABLE `field_tab_files_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_headline`;
CREATE TABLE `field_tab_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_headline_end`;
CREATE TABLE `field_tab_headline_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_person_data`;
CREATE TABLE `field_tab_person_data` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_person_data_end`;
CREATE TABLE `field_tab_person_data_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_preview`;
CREATE TABLE `field_tab_preview` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_preview_end`;
CREATE TABLE `field_tab_preview_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_visual`;
CREATE TABLE `field_tab_visual` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_tab_visual_end`;
CREATE TABLE `field_tab_visual_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_thumbnail`;
CREATE TABLE `field_thumbnail` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'ballpen-cell-phone-company-796602.jpg', '0', '[\"Kleine Bildbeschreibung\"]', '2019-10-04 15:41:42', '2019-10-04 08:24:45', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1127', '320-800x700.jpg', '0', '[\"\"]', '2019-09-02 17:06:59', '2019-09-02 17:06:59', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1164', '099933.jpg', '0', '[\"\"]', '2019-10-07 13:51:14', '2019-10-07 13:51:14', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1080', '099892.jpg', '0', '[\"\"]', '2019-10-07 13:51:32', '2019-10-07 13:51:32', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1123', '099928.jpg', '0', '[\"\"]', '2019-10-07 13:51:50', '2019-10-07 13:51:50', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1166', '099867.jpg', '0', '[\"\"]', '2019-10-07 13:52:09', '2019-10-07 13:52:09', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1074', 'coconut-trees-couple-daylight-2174656.jpg', '0', '[\"\"]', '2019-10-07 15:30:27', '2019-10-07 15:30:27', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1170', 'backpack-blond-hair-blurred-background-2519212.jpg', '0', '[\"\"]', '2019-10-07 15:54:46', '2019-10-07 15:54:46', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1171', 'code-coder-codes-2194062.jpg', '0', '[\"\"]', '2019-10-08 09:37:32', '2019-10-08 09:37:32', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1172', 'blackboard-chalk-chalkboard-21696.jpg', '0', '[\"\"]', '2019-10-08 09:40:57', '2019-10-08 09:40:57', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1173', 'font-grind-language-54257.jpg', '0', '[\"\"]', '2019-10-08 09:44:29', '2019-10-08 09:44:29', '');
INSERT INTO `field_thumbnail` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1174', 'blur-communication-data-5963.jpg', '0', '[\"\"]', '2019-10-08 09:46:49', '2019-10-08 09:46:49', '');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1034` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1034` (`data1034`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1034` (`data1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('11', 'Templates', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('16', 'Fields', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('22', 'Setup', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('3', 'Pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('6', 'Add Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('8', 'Tree', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('9', 'Save Sort', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('10', 'Edit', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('21', 'Modules', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('29', 'Users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('30', 'Roles', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('2', 'Admin', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('7', 'Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('27', 'Fehler 404', 'Error 404');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('302', 'Insert Link', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('23', 'Login', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('304', 'Profile', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('301', 'Empty Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('300', 'Search', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('303', 'Insert Image', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('28', 'Access', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('31', 'Permissions', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('32', 'Edit pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('34', 'Delete pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('35', 'Move pages (change parent)', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('36', 'View pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('50', 'Sort child pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('51', 'Change templates on pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('52', 'Administer users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('53', 'User can update profile/password', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('54', 'Lock or unlock a page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1', 'Demo Paket', 'Landing page');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1006', 'Use Page Lister', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1007', 'Find', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1010', 'Recent', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1011', 'Can see recently edited pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1012', 'Logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1013', 'Can view system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1014', 'Can manage system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1015', 'Repeaters', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1016', 'Administer languages and static translation files', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1017', 'Languages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1018', 'Deutsch', 'German');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1019', 'Language Translator', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1020', 'Clone', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1021', 'Clone a page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1022', 'Clone a tree of pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1023', 'Export/Import', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1025', 'ModulesManager', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1026', 'Page Action: Delete/Trash Pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1027', 'Page Action: Send Email', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1028', 'Access to set the protected status of pages (Page Protector Module)', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1030', 'Delete Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1031', 'Upgrades', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1032', 'DB Backups', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1033', 'Manage database backups (recommended for superuser only)', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1034', 'Englisch', 'English');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1035', 'Globale Einstellungen', 'Global Settings');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1036', 'Globale Einstellungen', 'Global Settings');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1048', 'Personen', 'People');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1047', 'Kategorien & Tags', 'Categories & tags');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1069', 'Geschäftsführung', 'Managing directors');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1049', 'Suche', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1065', 'Manchmal benutzt man Worte wie', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1125', 'Aenean massa nascetur', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1052', 'Daten', 'Data');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1053', 'Personen Funktionen', 'Person positions');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1054', 'Geschäftsführer', 'Managing director');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1055', 'Buchhaltung', 'Accounting');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1068', 'News', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1070', 'Buchhaltung', 'Accounting');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1073', 'Unsere Neuigkeiten', 'News');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1074', 'News Beitrag Überschrift', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1075', 'Allgemein', 'General');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1163', 'Marketing Direktor', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1078', 'Sectionheader', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1079', 'Personen', 'People');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1080', 'Meier', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1081', 'Login', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1082', 'Logout', 'Logout');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1103', 'hero_items', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1086', 'Sections', 'Sections');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1104', 'global-settings', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1097', 'Interessante Inhalte oder Angebote', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1165', 'Buchhalterin', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1113', 'Bildergalerie', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1164', 'Doe', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1126', 'Inhalte so wie Sie sie brauchen', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1102', 'Die Typographie', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1162', 'Use Lister: Personen', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1123', 'Mustermann', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1127', 'Lorem ipsum dolor sit amet', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1128', 'settings_locations', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1129', 'global-settings', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1132', 'Seitenleiste', 'Aside');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1143', 'de', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1147', 'news', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1136', '2019-09-03-14-19-11', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1141', 'Allgemeine Informationen', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1139', 'Unsere Adresse', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1140', 'Unsere Öffnungszeiten', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1160', 'Artikel', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1148', 'test', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1146', 'aenean-massa', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1149', 'etiam-sit', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1150', 'test', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1159', 'Unser Team', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1220', 'Impressum', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1161', 'Personen', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1166', 'Smith', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1167', 'Techniker', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1168', 'Technik', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1169', 'Use Lister: Artikel', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1170', 'Software und Voreinstellungen können', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1171', 'Manchmal benutzt man Worte wie Hamburgefonts', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1172', 'Manchmal Sätze, die alle Buchstaben des', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1173', 'Oft werden in Typoblindtexte', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1174', 'The quick brown fox jumps over', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1177', 'Anfahrt', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1198', 'Manchmal Sätze, die alle Buchstaben', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1250', 'Batcher', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1221', 'impressum', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1184', 'Kontaktieren Sie uns', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1185', 'kontaktieren-sie-uns', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1186', 'Adresse', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1187', 'Öffnungszeiten', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1196', 'News Kategorien', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1189', 'Ajax Contact Form', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1190', '2019-10-11-11-34-09', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1192', 'Interessantes', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1194', 'Neuigkeiten', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1195', 'Events', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1203', 'Dies ist ein Typoblindtext. An ihm kann man sehen', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1200', 'Unsere Neuigkeiten', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1201', '', 'http404');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1202', 'Inhaltsabschnitte', 'Content sections');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1205', 'Ansprechpartner', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1254', 'Admin Actions', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1208', '', 'option_form_recipients');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1209', '', 'kontaktieren-sie-uns');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1213', 'Hanna Code', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1214', 'List and view Hanna Codes', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1215', '', 'Add/edit/delete Hanna Codes (text/html, javascript only)');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1216', '', 'Add/edit/delete Hanna Codes (text/html, javascript and PHP)');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1222', 'Datenschutzerklärung', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1223', 'datenschutzerklaerung', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1251', 'View Batcher Page', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1226', 'Unsere Neuigkeiten', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1255', 'Run selected AdminActions actions', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1228', 'Tabellen', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1229', 'test-1', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1253', 'Children CSV Export', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1231', 'Interessantes', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1232', 'Neuigkeiten', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1233', 'Submenü', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1234', 'test-2', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1235', 'Galerie im Inhalt', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1236', 'Interessantes', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1237', 'Neuigkeiten', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1238', 'Submenü', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1239', 'test-3', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1240', 'Galerie im Inhalt', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1241', 'Interessantes', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1242', 'Neuigkeiten', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1243', 'Submenü', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1244', 'test-4', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1245', 'Galerie im Inhalt', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1246', 'Interessantes', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1247', 'Neuigkeiten', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1252', 'Batch Child Editor', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1256', 'Run AdminActions restore feature', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1257', 'Changelog', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1258', 'Access changelog', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1262', '', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1034`) VALUES('1265', 'Export Site Profile', NULL);

DROP TABLE IF EXISTS `field_twitter`;
CREATE TABLE `field_twitter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_xing`;
CREATE TABLE `field_xing` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'item-person');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'fieldset_field_115');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'app-settings');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'fieldset_field_129');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'fieldset_field_125');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'page-landing');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'page-default');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'redirect');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'data');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'data-general');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'page-article');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'page-articles');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'sectionheader');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'fieldset_field_168');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('115', 'data-people');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('116', 'login');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('117', 'logout');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('118', 'section');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('119', 'section-pages');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('120', 'section-content');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('121', 'fieldset_field_172');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('122', 'repeater_hero_items');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('123', 'section-articles');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('134', 'page-styleguide');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('125', 'section-images');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('126', 'section-map');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('127', 'section-people');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('128', 'repeater_settings_locations');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('129', 'block');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('130', 'block-address');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('131', 'block-business-hours');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('132', 'block-general');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('133', 'block-pages');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('135', 'fieldset_field_211');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('136', 'fieldset_field_213');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('137', 'page-contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('138', 'ajax-form');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('139', 'block-articles');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('140', 'block-article-categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('141', 'section-text-blocks');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('143', 'partial');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('144', 'repeater_option_form_recipients');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('146', 'page-imprint');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '199', '31', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '112', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '121', '5', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '117', '1', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '120', '2', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '122', '3', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '119', '4', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '118', '0', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '213', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '137', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '133', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '138', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '131', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '213', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '163', '9', '{\"columnWidth\":40,\"description\":\"Das hier hochgeladene Bild wird neben dem Hauptinhalt an der ausgew\\u00e4hlten Position angezeigt.\",\"description1034\":\"Image uploaded here will be displayed next to main content at the selected position.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '126', '27', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '121', '20', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '116', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', '{\"collapsed\":\"4\",\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '142', '1', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '129', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '132', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '138', '4', '{\"columnWidth\":60}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '131', '5', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '139', '6', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '133', '7', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '134', '8', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '137', '9', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '135', '10', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '114', '1', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '179', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '141', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '142', '1', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '209', '31', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '207', '32', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '122', '18', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '119', '19', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '134', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '139', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '198', '25', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '208', '26', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside == \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '201', '27', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside != \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '119', '15', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '121', '16', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '116', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '168', '18', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '151', '19', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '150', '20', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '169', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '103', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '105', '44', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '122', '14', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '163', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '148', '6', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '145', '7', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '146', '8', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '147', '9', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '142', '1', '{\"collapsed\":\"4\",\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '142', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '214', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '184', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '211', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '210', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '149', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '159', '3', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '157', '4', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '130', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '115', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '142', '1', '{\"collapsed\":\"4\",\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '132', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '150', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '105', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '106', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '109', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '108', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '107', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '102', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '140', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '160', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '111', '5', '{\"columnWidth\":25}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '158', '6', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '115', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '208', '29', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside == \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '101', '41', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '143', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '109', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '108', '44', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '107', '45', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '142', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '151', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '179', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '126', '24', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '136', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '117', '12', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '120', '13', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '142', '0', '{\"collapsed\":\"4\",\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '184', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('138', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '154', '17', '{\"inputfieldClass\":\"InputfieldTextarea\",\"maxlength\":500}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '212', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '125', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '221', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '140', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '141', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '102', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '153', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('117', '142', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '1', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '142', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('117', '1', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '207', '31', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '200', '30', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '153', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '106', '42', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '108', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '107', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '185', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '120', '17', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '171', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '174', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '1', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('121', '155', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '155', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '140', '0', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '178', '1', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '141', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('122', '176', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '105', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '1', '4', '{\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '180', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '184', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '181', '9', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '192', '10', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '193', '11', '{\"showIf\":\"option_thumbnail=1,option_type=2\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('123', '185', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '107', '45', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '172', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '171', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '174', '2', '{\"columnWidth\":50,\"label\":\"\\u00dcberschrift Textausrichtung\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '142', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('135', '154', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '142', '1', '{\"collapsed\":\"4\",\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '142', '1', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '153', '8', '{\"required\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '164', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '166', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '101', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '199', '32', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '210', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '1', '4', '{\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '103', '39', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('136', '193', '1', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '181', '9', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '192', '10', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '193', '11', '{\"showIf\":\"option_thumbnail=1,option_type=2\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '105', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '175', '7', '{\"required\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '174', '3', '{\"columnWidth\":50,\"label\":\"\\u00dcberschrift Textausrichtung\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '1', '4', '{\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '153', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '184', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '163', '9', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '193', '10', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '195', '11', '{\"description\":\"Die Auswahl bestimmt die Gr\\u00f6\\u00dfe der Inhaltsspalte und wird nur angewendet wenn ein Vorschaubild f\\u00fcr diesen Abschnitt verwendet wird.\",\"description1034\":\"The selection defines the size of content column and is only applied if a thubmnail is used for this section.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('120', '185', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '1', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '172', '1', '{\"collapsed\":\"11\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '153', '7', '{\"collapsed\":\"11\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('125', '164', '8', '{\"required\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '102', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '196', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('126', '204', '3', '{\"description\":\"\",\"required\":1,\"requiredIf\":\"option_map=1\",\"showIf\":\"option_map=1\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '184', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '157', '8', '{\"show_if_custom_find\":\"option_people=0\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '197', '9', '{\"description\":\"Hier k\\u00f6nnen Sie einzelne Eintr\\u00e4ge f\\u00fcr die \\u00dcbersicht ausw\\u00e4hlen. Wenn Eintr\\u00e4ge durch diese Optionen ausgew\\u00e4hlt werden, so wird die Kategorie Auswahl ignoriert.\",\"description1034\":\"Here you can select specific entries to be display in the summary. Category option will be ignored if you choose to select entries through this option.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '184', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '181', '11', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '192', '12', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '193', '13', '{\"showIf\":\"option_thumbnail=1,option_type=2\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '185', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('118', '1', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '109', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '108', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '107', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '105', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '106', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '109', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '108', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '107', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '102', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '103', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '104', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '142', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '104', '40', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '105', '41', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '160', '36', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '200', '28', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '209', '29', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '101', '38', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '162', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '1', '{\"columnWidth\":50,\"label\":\"Nachname\",\"label1034\":\"Last name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '170', '32', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '163', '9', '{\"columnWidth\":40,\"description\":\"Das hier hochgeladene Bild wird neben dem Hauptinhalt an der ausgew\\u00e4hlten Position angezeigt.\",\"description1034\":\"Image uploaded here will be shown next to main content at the selected position.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '193', '10', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '123', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '125', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '140', '24', '{\"columnWidth\":50,\"description\":\"Hier eingetragene \\u00dcberschrift wird im Header voreingestellt wenn die Header-Eintr\\u00e4ge keine \\u00dcberschrift enthalten oder die einzelne Seite keine eigene Header-\\u00dcberschrift enth\\u00e4lt.\",\"description1034\":\"Here entered headline will be shown by default in header if header entries or single pages do not contain any header headline.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '141', '25', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '179', '26', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '1', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '118', '15', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '117', '16', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('129', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '134', '8', '{\"NS_matrix1\":{\"columnWidth\":33}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '136', '9', '{\"NS_matrix1\":{\"required\":1}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '113', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '132', '1', '{\"NS_matrix1\":{\"label\":\"Standort oder Firmenbezeichnung\",\"label1034\":\"Location or company name\",\"required\":\"\"}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '138', '2', '{\"NS_matrix1\":{\"columnWidth\":60,\"required\":\"\"}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '131', '3', '{\"NS_matrix1\":{\"columnWidth\":40,\"required\":\"\"}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '139', '4', '{\"NS_matrix1\":{\"columnWidth\":30,\"required\":\"\"}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '133', '5', '{\"NS_matrix1\":{\"columnWidth\":70,\"required\":\"\"}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '137', '6', '{\"NS_matrix1\":{\"columnWidth\":33}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('128', '135', '7', '{\"NS_matrix1\":{\"columnWidth\":34}}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '129', '7', '{\"collapsed\":\"2\",\"description\":\"Voreingestellt werden die Adressen dargestellt, welche in den Globalen Einstellungen unter Standorte eingerichtet wurden.\\nWenn Sie eine f\\u00fcr diesen Eintrag spezifische Adresse darstellen m\\u00f6chten, f\\u00fcllen Sie die unten angef\\u00fchrten Felder aus.\",\"label\":\"Adresse\",\"label1034\":\"Address\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '132', '8', '{\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '138', '9', '{\"columnWidth\":60,\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '131', '10', '{\"columnWidth\":40,\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '139', '11', '{\"columnWidth\":30,\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '133', '12', '{\"columnWidth\":70,\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '136', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '134', '14', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '137', '15', '{\"columnWidth\":34}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '135', '16', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '130', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '127', '33', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '128', '34', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '124', '35', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('130', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '153', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '106', '42', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '109', '43', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '175', '7', '{\"description\":\"Hier ausgew\\u00e4hlte Seiten werden im Block als Links dargestellt.\",\"required\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('133', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '210', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '154', '17', '{\"inputfieldClass\":\"InputfieldTextarea\",\"maxlength\":500}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '212', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '125', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '221', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '140', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '141', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '179', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '126', '24', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '174', '2', '{\"columnWidth\":50,\"label\":\"\\u00dcberschrift Textausrichtung\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('135', '210', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '211', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '207', '30', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '199', '31', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '170', '32', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '193', '10', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '195', '11', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '218', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '214', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '184', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '211', '15', '{\"description\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '165', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '185', '33', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '165', '34', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '162', '35', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '195', '11', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '218', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '214', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '102', '46', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '105', '41', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '185', '33', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '165', '34', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '162', '35', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '160', '36', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '166', '37', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '101', '38', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '103', '39', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '104', '40', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '198', '25', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '208', '26', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside == \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '201', '27', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside != \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '200', '28', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '209', '29', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '153', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '213', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '163', '12', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '193', '13', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '158', '0', '{\"columnWidth\":35,\"notes\":\"Durch die optionale Auswahl werden die Artikel auf die ausgew\\u00e4hlte Kategorie beschr\\u00e4nkt\",\"notes1034\":\"Through optional selection the articles will be limited to selected category\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '192', '1', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '181', '2', '{\"columnWidth\":35}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '172', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '171', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '174', '5', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '1', '6', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '142', '7', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '155', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '173', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '102', '46', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '142', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '172', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '166', '37', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '162', '38', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '160', '39', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '166', '40', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '108', '44', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '170', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '185', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '165', '24', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '162', '25', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '160', '26', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '166', '27', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '163', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '153', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '184', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '125', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '140', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '141', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '179', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '126', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '198', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '208', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '201', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '200', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '209', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '207', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '199', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '174', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '1', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '142', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '172', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('134', '171', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '109', '43', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '106', '45', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '109', '46', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '108', '47', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '207', '30', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('136', '195', '2', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('136', '163', '0', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '104', '43', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '165', '37', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '201', '30', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside != \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '200', '31', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '209', '32', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '207', '33', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '199', '34', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '170', '35', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '185', '36', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '154', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '212', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '125', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '221', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '140', '24', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '141', '25', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '153', '7', '{\"collapsed\":\"11\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '154', '7', '{\"collapsed\":\"2\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '107', '48', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '179', '26', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '126', '27', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '198', '28', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '195', '14', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '218', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '104', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '198', '28', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '201', '29', '{\"columnWidth\":50,\"description\":\"Diese Option aktiviert die Seitenleiste neben dem Hauptinhalt f\\u00fcr alle anwendbare Seiten.\",\"description1034\":\"This option enables a sidebar next to main content section for all pages where applicable.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '102', '48', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '107', '47', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '108', '46', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '105', '43', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '166', '39', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '101', '40', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '103', '41', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '104', '42', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '165', '36', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '162', '37', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '195', '13', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '218', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '214', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '184', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '174', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '1', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '142', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '219', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '220', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '153', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '213', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '163', '11', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '193', '12', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '171', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '172', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '206', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('138', '1', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '158', '7', '{\"description\":\"Voreingestellt werden bis zu 3 zuletzt ver\\u00f6ffentlichte Artikel angezeigt. Wird eine Kategorie ausgew\\u00e4hlt so werden nur die Artikel die der Kategorie zugeordnet sind angezeigt.\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('140', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('140', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('140', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('140', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('140', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('140', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('140', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '171', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '174', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '1', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('141', '217', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '163', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '110', '4', '{\"columnWidth\":25,\"required\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('143', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '144', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '199', '33', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '170', '34', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '185', '35', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '141', '24', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '179', '25', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '126', '26', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '198', '27', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '208', '28', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside == \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '201', '29', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside != \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '200', '30', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '221', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '140', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '211', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '210', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '154', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '212', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '125', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '118', '11', '{\"columnWidth\":33}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '102', '49', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '106', '44', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '160', '38', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '171', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('143', '1', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('144', '148', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '204', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('139', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('131', '206', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('132', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('119', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '142', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('127', '172', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '103', '42', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('137', '109', '45', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '135', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '179', '23', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '140', '21', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '126', '24', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '141', '22', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '174', '2', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '125', '19', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '212', '18', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '171', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '142', '4', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '1', '3', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '208', '26', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside == \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '198', '25', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '221', '20', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '172', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '154', '17', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '210', '16', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '155', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '173', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '153', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '213', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '163', '9', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '193', '10', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '195', '11', '{\"columnWidth\":40}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '218', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '214', '13', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '184', '14', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '211', '15', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '201', '27', '{\"columnWidth\":50,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->option_enable_aside != \'1\') return true;\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '200', '28', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '209', '29', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '207', '30', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '199', '31', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '170', '32', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '185', '33', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '165', '34', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '162', '35', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '160', '36', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '166', '37', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '101', '38', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '103', '39', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '104', '40', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '105', '41', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '106', '42', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '109', '43', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '108', '44', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '107', '45', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('146', '102', '46', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '222', '6', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Überschrift', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"tags\":\"default\",\"minlength\":0,\"showCount\":0,\"label1034\":\"Title\",\"icon\":\"text-height\",\"langBlankInherit\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Adresse', '{\"size\":70,\"maxlength\":255,\"tags\":\"users\",\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"icon\":\"envelope-open-o\",\"label1034\":\"E-Mail Address\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1017,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeFieldsetTabOpen', 'seo_tab', '0', 'SEO', '{\"tags\":\"seo\",\"closeFieldID\":102}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeFieldsetClose', 'seo_tab_END', '0', 'Close an open fieldset', '{\"tags\":\"seo\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeTextLanguage', 'seo_title', '0', 'Titel', '{\"description\":\"Eine gute L\\u00e4nge f\\u00fcr einen Titel betr\\u00e4gt 60 Zeichen.\",\"tags\":\"seo\",\"label1034\":\"Title\",\"description1034\":\"A good length for a title is 60 characters.\",\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeTextLanguage', 'seo_keywords', '0', 'Stichwörter', '{\"tags\":\"seo\",\"label1034\":\"Keywords\",\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeTextLanguage', 'seo_description', '0', 'Beschreibung', '{\"description\":\"Ein gute l\\u00e4nge f\\u00fcr die Beschreibung ist 160 Zeichen.\",\"tags\":\"seo\",\"label1034\":\"Description\",\"description1034\":\"A good length for a description is 160 characters.\",\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeText', 'seo_image', '0', 'Bild', '{\"description\":\"Bitte geben Sie die URL (einschlie\\u00dflich &quot;http:\\/\\/...&quot;) zum Vorschau-Bild ein.\",\"tags\":\"seo\",\"label1034\":\"Image\",\"description1034\":\"Please enter the URL (including &quot;http:\\/\\/...&quot;) to a preview image.\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeTextLanguage', 'seo_canonical', '32768', 'Kanonischer Link', '{\"notes\":\"Die URL sollte &quot;http:\\/\\/...&quot;. beinhalten\",\"tags\":\"seo\",\"label1034\":\"Canonical Link\",\"notes1034\":\"The URL should include &quot;http:\\/\\/...&quot;.\",\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"langBlankInherit\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeTextareaLanguage', 'seo_custom', '0', 'Benutzerdefiniert', '{\"description\":\"Wenn Sie weitere Meta-Tags hinzuf\\u00fcgen m\\u00f6chten, k\\u00f6nnen Sie dies hier tun.\",\"notes\":\"Bitte verwenden Sie dieses Schema: name: = content. Ein Tag pro Zeile. Sonderzeichen sind nur im Inhaltsteil zul\\u00e4ssig und werden in HTML konvertiert.\",\"tags\":\"seo\",\"label1034\":\"The URL should include &quot;http:\\/\\/...&quot;.\",\"description1034\":\"If you want to add other meta tags, you can do it here.\",\"notes1034\":\"Please use this schema: name := content. One tag per line. Special characters are only allowed in the content part and get converted to HTML.\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'seo_robots', '0', 'Robots', '{\"description\":\"Die Robots Einstellungen teilen der Suchmaschine mit, welche Daten sie einschlie\\u00dfen\\/indizieren d\\u00fcrfen.\",\"notes\":\"Dadurch wird die globale Einstellung des Moduls f\\u00fcr diese Seite \\u00fcberschrieben.\",\"tags\":\"seo\",\"label1034\":\"Robots\",\"description1034\":\"The robots settings will tell search engine which data they are allowed to include\\/index.\",\"notes1034\":\"This overwrites the module&#039;s global setting for this page.\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeDatetime', 'publish_from', '32768', 'Veröffentlichen von', '{\"dateOutputFormat\":\"l, j F Y\",\"dateInputFormat\":\"d.m.Y\",\"datepicker\":3,\"tags\":\"publish\",\"collapsed\":0,\"size\":25,\"timeInputSelect\":0,\"label1034\":\"Publish from\",\"defaultToday\":1,\"icon\":\"bell-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeDatetime', 'publish_until', '0', 'Veröffentlichen bis', '{\"dateOutputFormat\":\"j F Y H:i:s\",\"dateInputFormat\":\"d.m.Y\",\"datepicker\":3,\"tags\":\"publish\",\"collapsed\":0,\"size\":25,\"timeInputSelect\":0,\"label1034\":\"Publish until\",\"icon\":\"bell-slash-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeCheckbox', 'force_passwd_change', '0', 'Passwortänderung beim nächsten Login erzwingen', '{\"description\":\"Dies wird vom Modul Force Password Change verwendet. Sie k\\u00f6nnen es jederzeit \\u00fcberpr\\u00fcfen, um den Benutzer dazu zu zwingen, sein Kennwort bei der n\\u00e4chsten Anmeldung zu \\u00e4ndern.\",\"notes\":\"Dies wird automatisch deaktiviert, wenn der Benutzer sein Passwort \\u00e4ndert.\",\"collapsed\":2,\"tags\":\"users\",\"label1034\":\"Force password change on next login\",\"description1034\":\"This is used by the Force Password Change module. You can check this at any time to force the user to change their password on next login.\",\"notes1034\":\"This will be automatically unchecked when the user changes their password.\",\"icon\":\"exclamation-triangle\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeInteger', 'repeater_matrix_type', '25', 'Repeater matrix type', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeText', 'language_short_code', '0', 'Language Shortcode', '{\"maxlength\":2048,\"tags\":\"language\",\"icon\":\"globe\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeFieldsetGroup', 'settings_social', '0', 'Soziale Netzwerke', '{\"label1034\":\"Social networks\",\"closeFieldID\":116,\"fieldsetTemplate\":\"fieldset_field_115\",\"tags\":\"tabs\",\"useTabs\":0,\"icon\":\"globe\",\"fieldsetFields\":[118,117,120,122,119,121],\"fieldsetFieldsPrev\":[117,120,118,122,119,121],\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypeFieldsetClose', 'settings_social_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'settings_social\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":115,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeURL', 'facebook', '0', 'Facebook', '{\"label1034\":\"Facebook\",\"tags\":\"social\",\"noRelative\":1,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"icon\":\"facebook-official\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeURL', 'google', '0', 'Google', '{\"label1034\":\"Google\",\"tags\":\"social\",\"noRelative\":1,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"icon\":\"google\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeURL', 'twitter', '0', 'Twitter', '{\"label1034\":\"Twitter\",\"tags\":\"social\",\"noRelative\":1,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"icon\":\"twitter\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeURL', 'linkedin', '0', 'LinkedIn', '{\"label1034\":\"LinkedIn\",\"tags\":\"social\",\"noRelative\":1,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"icon\":\"linkedin\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypeURL', 'xing', '0', 'Xing', '{\"label1034\":\"Xing\",\"tags\":\"social\",\"noRelative\":1,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"icon\":\"xing\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeURL', 'instagram', '0', 'Instagram', '{\"label1034\":\"Instagram\",\"tags\":\"social\",\"noRelative\":1,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"icon\":\"instagram\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeFieldsetTabOpen', 'settings_visual', '0', 'Visuelles', '{\"label1034\":\"Visual\",\"closeFieldID\":124,\"tags\":\"tabs\",\"collapsed\":0,\"icon\":\"eye\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeFieldsetClose', 'settings_visual_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'settings_visual\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":123,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('125', 'FieldtypeFieldsetGroup', 'settings_header', '32768', 'Header', '{\"label1034\":\"Header\",\"closeFieldID\":126,\"fieldsetTemplate\":\"fieldset_field_125\",\"tags\":\"tabs\",\"useTabs\":0,\"icon\":\"list-alt\",\"fieldsetFields\":[140,141,179],\"fieldsetFieldsPrev\":[140,141],\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('126', 'FieldtypeFieldsetClose', 'settings_header_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'settings_header\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":125,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeFieldsetGroup', 'settings_footer', '0', 'Fußzeile', '{\"label1034\":\"Footer\",\"closeFieldID\":128,\"fieldsetTemplate\":\"fieldset_field_127\",\"tags\":\"tabs\",\"useTabs\":0,\"collapsed\":0,\"icon\":\"window-minimize\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeFieldsetClose', 'settings_footer_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'settings_footer\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":127,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeFieldsetGroup', 'settings_company', '32768', 'Seiten Informationen & Adresse', '{\"label1034\":\"Site information & address\",\"closeFieldID\":130,\"fieldsetTemplate\":\"fieldset_field_129\",\"tags\":\"tabs\",\"useTabs\":0,\"icon\":\"briefcase\",\"fieldsetFields\":[132,138,131,139,133,136,134,137,135],\"fieldsetFieldsPrev\":[132,138,131,139,136,134,137,135],\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeFieldsetClose', 'settings_company_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'settings_company\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":129,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('131', 'FieldtypeTextLanguage', 'settings_city', '32768', 'Stadt', '{\"textformatters\":[\"TextformatterEntities\"],\"maxlength\":2048,\"tags\":\"settings\",\"icon\":\"map-marker\",\"label1395\":\"City\",\"required\":1,\"label1034\":\"City\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('132', 'FieldtypeTextLanguage', 'settings_company_name', '32768', 'Firma', '{\"textformatters\":[\"TextformatterEntities\"],\"maxlength\":2048,\"tags\":\"settings\",\"icon\":\"briefcase\",\"label1395\":\"Company\",\"required\":1,\"label1034\":\"Company\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('133', 'FieldtypeContinentsAndCountries', 'settings_country', '32768', 'Land', '{\"label1395\":\"Country\",\"select_options\":\"eu\",\"tags\":\"settings\",\"icon\":\"globe\",\"required\":1,\"label1034\":\"Country\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypeEmailLanguage', 'settings_email', '0', 'E-Mail', '{\"maxlength\":512,\"tags\":\"settings\",\"icon\":\"envelope-o\",\"label1395\":\"Email\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeTextLanguage', 'settings_fax', '0', 'Fax', '{\"maxlength\":2048,\"tags\":\"settings\",\"icon\":\"fax\",\"label1395\":\"Fax\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeMapMarker', 'settings_location', '0', 'Google Maps', '{\"label1395\":\"Google Maps\",\"schemaVersion\":1,\"defaultAddr\":\"Castaway Cay\",\"defaultType\":\"HYBRID\",\"height\":300,\"defaultZoom\":12,\"tags\":\"settings\",\"icon\":\"map-marker\",\"defaultLat\":\"26.0936823\",\"defaultLng\":\"-77.5332796\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypeTextLanguage', 'settings_phone', '32768', 'Telefonnummer', '{\"maxlength\":2048,\"tags\":\"settings\",\"icon\":\"phone-square\",\"label1395\":\"Phone number\",\"label1034\":\"Phone number\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('138', 'FieldtypeTextLanguage', 'settings_street', '32768', 'Straße', '{\"textformatters\":[\"TextformatterEntities\"],\"maxlength\":2048,\"tags\":\"settings\",\"icon\":\"map-marker\",\"label1395\":\"Street\",\"required\":1,\"label1034\":\"Street\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('139', 'FieldtypeInteger', 'settings_zip', '32768', 'PLZ', '{\"inputType\":\"text\",\"size\":10,\"icon\":\"map-marker\",\"tags\":\"settings\",\"label1395\":\"ZIP\",\"required\":1,\"label1034\":\"ZIP\",\"zeroNotEmpty\":0,\"autoIncrement\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('140', 'FieldtypeTextLanguage', 'hero_caption', '32768', 'Header Überschrift', '{\"maxlength\":2048,\"tags\":\"hero\",\"icon\":\"quote-left\",\"label1395\":\"Hero caption\",\"label1034\":\"Header headline\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('141', 'FieldtypeTextLanguage', 'hero_caption_byline', '32768', 'Header Überschrift Unterzeile', '{\"maxlength\":2048,\"tags\":\"hero\",\"icon\":\"quote-left\",\"label1395\":\"Hero caption byline\",\"label1034\":\"Header subheadline\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('142', 'FieldtypeTextLanguage', 'menutext', '32773', 'Menütext', '{\"maxlength\":2048,\"tags\":\"default\",\"label1395\":\"Menu text\",\"icon\":\"list-ul\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0,\"label1034\":\"Menutext\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('143', 'FieldtypeURL', 'external_url', '32768', 'Weiterleitung', '{\"textformatters\":[\"TextformatterEntities\"],\"addRoot\":1,\"maxlength\":1024,\"tags\":\"links\",\"label1395\":\"Redirect link\",\"icon\":\"reply-all\",\"label1034\":\"External link\",\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('144', 'FieldtypePage', 'internal_url', '32768', 'Interne Verlinkung', '{\"derefAsPage\":1,\"showIf\":\"external_url=\'\'\",\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelect\",\"icon\":\"expand\",\"tags\":\"links\",\"label1395\":\"Internal link\",\"label1034\":\"Internal link\",\"parent_id\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('145', 'FieldtypeTextLanguage', 'person_phone', '32768', 'Telefonnummer', '{\"label1034\":\"Phone number\",\"tags\":\"person\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"phone\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('146', 'FieldtypeTextLanguage', 'person_mobile', '32768', 'Mobil', '{\"label1034\":\"Mobile\",\"tags\":\"person\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"mobile\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('147', 'FieldtypeTextLanguage', 'person_fax', '32768', 'Fax', '{\"label1034\":\"Fax\",\"tags\":\"person\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"fax\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('148', 'FieldtypeEmailLanguage', 'person_email', '32768', 'E-Mail', '{\"label1034\":\"E-Mail\",\"tags\":\"person\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":512,\"showCount\":0,\"size\":0,\"icon\":\"envelope-open-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('149', 'FieldtypeText', 'person_firstname', '32768', 'Vorname', '{\"label1034\":\"Firstname\",\"tags\":\"person\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"user-circle\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('150', 'FieldtypeFile', 'person_vcf', '32768', 'VCF Datei', '{\"label1034\":\"VCF file\",\"fileSchema\":6,\"tags\":\"person process\",\"extensions\":\"vcf\",\"maxFiles\":0,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldFile\",\"collapsed\":0,\"descriptionRows\":1,\"icon\":\"file-o\",\"overwrite\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('151', 'FieldtypeImage', 'qr_image', '32768', 'QR-Code Bild', '{\"label1034\":\"QR code image\",\"fileSchema\":6,\"tags\":\"process\",\"extensions\":\"gif\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"descriptionRows\":1,\"otherFieldSettings\":\"{\\\"cf_textformatter\\\":null,\\\"cf_label\\\":[]}\",\"icon\":\"qrcode\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('153', 'FieldtypeTextareaLanguage', 'content', '32768', 'Inhalt', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"rows\":16,\"toolbar\":\"Undo, Redo, Format, Styles, -, Bold, Italic, Underline, -, RemoveFormat\\nJustifyLeft , JustifyCenter, JustifyRight, JustifyBlock\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Html5video, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog, Maximize\",\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;address\",\"extraPlugins\":[\"clipboard\",\"html5video\",\"lineutils\",\"maximize\",\"notification\",\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"tags\":\"default\",\"label1395\":\"Content\",\"icon\":\"pencil-square-o\",\"label1034\":\"Content\",\"htmlOptions\":[2,4,8,16],\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":1,\"inlineMode\":0,\"useACF\":0,\"usePurifier\":0,\"imageFields\":[\"images\"],\"textformatters\":[\"TextformatterAutoLinks\",\"TextformatterVideoEmbedOptions\",\"TextformatterTextBlocks\"],\"toggles\":[4,8],\"extraAllowedContent\":\"p[*]\\nsmall[*]\\nsection[*]\\ncode[*]\\ntable[*]\\nth[*]\\ntd[*]\",\"stylesSet\":\"exorsus:\\/site\\/templates\\/assets\\/ckeditor\\/exorsus.js\",\"contentsCss\":\"\\/site\\/templates\\/assets\\/css\\/wysiwyg.min.css\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('154', 'FieldtypeTextareaLanguage', 'summary', '32768', 'Zusammenfassung', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"rows\":16,\"toolbar\":\"Undo, Redo, Format, Styles, -, Bold, Italic, Underline, -, RemoveFormat\\nJustifyLeft , JustifyCenter, JustifyRight, JustifyBlock\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Html5video, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog, Maximize\",\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;address\",\"extraPlugins\":[\"clipboard\",\"html5video\",\"lineutils\",\"maximize\",\"notification\",\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"tags\":\"default\",\"label1395\":\"Content\",\"icon\":\"pencil-square-o\",\"label1034\":\"Summary\",\"htmlOptions\":[2,4,8],\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":2,\"inlineMode\":0,\"useACF\":1,\"usePurifier\":0,\"imageFields\":[\"images\"],\"allowContexts\":[\"inputfieldClass\"],\"textformatters\":[\"TextformatterTextBlocks\",\"TextformatterAutoLinks\",\"TextformatterVideoEmbedOptions\",\"TextformatterHannaCode\"],\"toggles\":[4,8],\"extraAllowedContent\":\"p[*]\\nsmall[*]\\nsection[*]\\ncode[*]\\ntable[*]\\nth[*]\\ntd[*]\",\"contentsCss\":\"\\/site\\/templates\\/assets\\/css\\/wysiwyg.min.css\",\"stylesSet\":\"exorsus:\\/site\\/templates\\/assets\\/ckeditor\\/exorsus.js\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('155', 'FieldtypeTextLanguage', 'subheading', '32768', 'Überschrift Unterzeile', '{\"label1034\":\"Subheading\",\"tags\":\"default\",\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"icon\":\"text-height\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('159', 'FieldtypePage', 'person_position', '32768', 'Funktion', '{\"label1034\":\"Function\",\"derefAsPage\":1,\"inputfield\":\"InputfieldChosenSelect\",\"parent_id\":1053,\"template_id\":56,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"tags\":\"person\",\"icon\":\"briefcase\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('157', 'FieldtypePage', 'category_people', '32768', 'Personen Kategorie', '{\"label1034\":\"Person category\",\"tags\":\"categories\",\"derefAsPage\":1,\"inputfield\":\"InputfieldChosenSelect\",\"parent_id\":1048,\"labelFieldName\":\"title\",\"collapsed\":0,\"icon\":\"folder-open\",\"template_id\":52,\"addable\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('158', 'FieldtypePage', 'category_articles', '32768', 'Artikel Kategorie', '{\"label1034\":\"Articles category\",\"derefAsPage\":1,\"inputfield\":\"InputfieldChosenSelect\",\"parent_id\":1068,\"template_id\":52,\"labelFieldName\":\"title\",\"addable\":1,\"collapsed\":0,\"tags\":\"categories\",\"icon\":\"folder-open\",\"defaultValue\":1075}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('160', 'FieldtypeFile', 'files', '32768', 'Dateien', '{\"extensions\":\"pdf doc docx xls xlsx txt csv\",\"inputfieldClass\":\"InputfieldFile\",\"descriptionRows\":1,\"tags\":\"uploads\",\"icon\":\"file-excel-o\",\"fileSchema\":6,\"label1395\":\"Files\",\"label1034\":\"Files\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"collapsed\":0,\"description\":\"Hier hoch geladene Dateien stehen im WYSIWYG-Editor zur Verf\\u00fcgung\",\"description1034\":\"Uploaded files are available in the WYSIWYG editor\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('161', 'FieldtypeSecureFile', 'files_secure', '32768', 'Geschützte Dateien', '{\"storageLocation\":\"\\/var\\/www\\/html\\/files_test\",\"extensions\":\"pdf doc docx xls xlsx\",\"outputFormat\":1,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":1,\"noLang\":1,\"tags\":\"uploads\",\"icon\":\"file-text\",\"fileSchema\":6,\"label1395\":\"Secured Files\",\"label1034\":\"Secure files\",\"maxFiles\":0,\"defaultValuePage\":0,\"useTags\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('162', 'FieldtypeImage', 'images', '32768', 'Bilder', '{\"extensions\":\"gif jpg jpeg png\",\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"adminThumbs\":1,\"defaultGrid\":1,\"icon\":\"file-image-o\",\"fileSchema\":6,\"tags\":\"uploads\",\"label1395\":\"Images\",\"gridMode\":\"grid\",\"focusMode\":\"on\",\"clientQuality\":90,\"otherFieldSettings\":\"{\\\"cf_textformatter\\\":null,\\\"cf_label\\\":[]}\",\"label1034\":\"Images\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"collapsed\":0,\"resizeServer\":0,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"description\":\"Hier hoch geladene Bilder stehen im WYSIWYG-Editor zur Verf\\u00fcgung\",\"description1034\":\"Uploaded images are available in the WYSIWYG editor\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('163', 'FieldtypeImage', 'thumbnail', '32768', 'Bild', '{\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"adminThumbs\":1,\"maxWidth\":1140,\"tags\":\"uploads\",\"fileSchema\":6,\"defaultGrid\":1,\"gridMode\":\"grid\",\"icon\":\"file-image-o\",\"label1395\":\"Preview image\",\"focusMode\":\"on\",\"clientQuality\":90,\"otherFieldSettings\":\"{\\\"cf_textformatter\\\":null,\\\"cf_label\\\":[]}\",\"defaultValuePage\":0,\"useTags\":0,\"collapsed\":0,\"resizeServer\":0,\"label1034\":\"Image\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('164', 'FieldtypeImage', 'gallery', '32768', 'Galerie-Bilder', '{\"extensions\":\"gif jpg jpeg png\",\"outputFormat\":1,\"inputfieldClass\":\"InputfieldImage\",\"unzip\":1,\"descriptionRows\":1,\"adminThumbs\":1,\"maxWidth\":1920,\"tags\":\"uploads\",\"fileSchema\":6,\"defaultGrid\":1,\"gridMode\":\"grid\",\"label1395\":\"Page gallery\",\"focusMode\":\"on\",\"clientQuality\":90,\"otherFieldSettings\":\"{\\\"cf_textformatter\\\":null,\\\"cf_label\\\":[]}\",\"icon\":\"camera-retro\",\"label1034\":\"Gallery images\",\"maxFiles\":0,\"defaultValuePage\":0,\"useTags\":0,\"collapsed\":0,\"resizeServer\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('165', 'FieldtypeFieldsetTabOpen', 'tab_files', '32768', 'Dateien', '{\"label1034\":\"Files\",\"closeFieldID\":166,\"collapsed\":0,\"tags\":\"tabs\",\"icon\":\"files-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('166', 'FieldtypeFieldsetClose', 'tab_files_END', '32768', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'tab_files\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":165,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('181', 'FieldtypeOptions', 'option_type', '32768', 'Darstellung', '{\"label1034\":\"Presentation\",\"description\":\"Hier ausgew\\u00e4hlte Optionen beeinflussen die Darstellung der angezeigten Eintr\\u00e4ge\",\"description1034\":\"Here selected options affect visual presentation of visible entries\",\"inputfieldClass\":\"InputfieldChosenSelect\",\"collapsed\":0,\"tags\":\"options\",\"icon\":\"object-group\",\"defaultValue\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('168', 'FieldtypeFieldsetGroup', 'tab_person_data', '32768', 'Generierte Daten', '{\"label1034\":\"Generated data\",\"closeFieldID\":169,\"fieldsetTemplate\":\"fieldset_field_168\",\"fieldsetFields\":[151,150],\"useTabs\":0,\"fieldsetFieldsPrev\":[151,150],\"tags\":\"tabs\",\"collapsed\":0,\"icon\":\"database\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('169', 'FieldtypeFieldsetClose', 'tab_person_data_END', '32768', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'tab_person_data\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":168,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('170', 'FieldtypePageTable', 'sections', '32768', 'Seitenabschnitte', '{\"label1034\":\"Page sections\",\"template_id\":[66,87,71,69,65,73,72],\"parent_id\":1086,\"trashOnDelete\":2,\"unpubOnTrash\":1,\"unpubOnUnpub\":1,\"collapsed\":0,\"noclose\":0,\"columns\":\"title\\ntemplate.label\",\"tags\":\"data\",\"icon\":\"bars\",\"description\":\"Durch den Klick auf einen entsprechenden Button, welcher die Vorlage bzw. das Aussehen bestimmt, kann ein Seitenabschnitt-Bereich erstellt werden.\\nDie Seitenabschnitte werden immer nach dem Hauptinhalt dargestellt und erstrecken sich \\u00fcber die gesamte Seitenbreite.\\nSortierung der Seitenabschnitte erfolgt mittels Drag&Drop.\",\"description1034\":\"By clicking on a suitable button, which controls the view\\/template of this entry, a page section will be created.\\nPage sections are always displayed after main content body and in full page width.\\nSorting of the sections is done with drag&drop.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('171', 'FieldtypeCheckbox', 'option_disable_headline', '32768', 'Überschrift ausblenden', '{\"label1034\":\"Hide Headline\",\"tags\":\"options\",\"collapsed\":0,\"icon\":\"check-square-o\",\"checkboxLabel\":\"Deaktivieren\",\"checkboxLabel1034\":\"Disable\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('172', 'FieldtypeFieldsetGroup', 'tab_headline', '32768', 'Überschriften', '{\"label1034\":\"Headline\",\"closeFieldID\":173,\"fieldsetTemplate\":\"fieldset_field_172\",\"fieldsetFields\":[171,174,1,155],\"useTabs\":0,\"fieldsetFieldsPrev\":[171,1,155,174],\"tags\":\"tabs\",\"collapsed\":0,\"icon\":\"text-height\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('173', 'FieldtypeFieldsetClose', 'tab_headline_END', '32768', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'tab_headline\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":172,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('174', 'FieldtypeOptions', 'option_text_align', '32768', 'Textausrichtung', '{\"label1034\":\"Text alignement\",\"inputfieldClass\":\"InputfieldRadios\",\"collapsed\":0,\"tags\":\"options\",\"optionColumns\":3,\"icon\":\"align-left\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('175', 'FieldtypePage', 'option_pages', '32768', 'Seitenauswahl', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"parent_id\":0,\"labelFieldName\":\"title\",\"collapsed\":0,\"template_ids\":[58,57,49],\"tags\":\"options\",\"icon\":\"list-alt\",\"label1034\":\"Pages selection\",\"operator\":\"%=\",\"searchFields\":\"title\",\"template_id\":48,\"usePageEdit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('176', 'FieldtypeImage', 'hero_image', '32768', 'Header-Bild', '{\"label1034\":\"Header image\",\"fileSchema\":6,\"tags\":\"hero\",\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"maxWidth\":2000,\"resizeServer\":0,\"clientQuality\":70,\"minWidth\":1920,\"descriptionRows\":1,\"otherFieldSettings\":\"{\\\"cf_textformatter\\\":null,\\\"cf_label\\\":[]}\",\"icon\":\"picture-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('178', 'FieldtypePage', 'hero_link', '32768', 'Seitenlink', '{\"label1034\":\"Page link\",\"tags\":\"hero\",\"derefAsPage\":1,\"inputfield\":\"InputfieldPageListSelect\",\"parent_id\":1,\"labelFieldName\":\"title\",\"collapsed\":0,\"icon\":\"link\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('179', 'FieldtypeRepeater', 'hero_items', '32768', 'Header Einträge', '{\"label1034\":\"Header items\",\"template_id\":68,\"parent_id\":1103,\"tags\":\"hero\",\"repeaterFields\":[140,178,141,176],\"repeaterAddLabel\":\"Eintrag hinzuf\\u00fcgen\",\"repeaterAddLabel1034\":\"Add entry\",\"repeaterCollapse\":0,\"repeaterLoading\":1,\"repeaterMaxItems\":5,\"collapsed\":0,\"icon\":\"file-image-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('180', 'FieldtypeRangeSlider', 'option_limit', '32768', 'Maximale Anzahl', '{\"label1034\":\"Maximum limit\",\"tags\":\"options\",\"width\":100,\"defaultValue\":3,\"minValue\":1,\"maxValue\":16,\"step\":1,\"collapsed\":0,\"icon\":\"th\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('213', 'FieldtypeFieldsetGroup', 'tab_content', '32768', 'Inhaltsoptionen', '{\"closeFieldID\":214,\"fieldsetTemplate\":\"fieldset_field_213\",\"fieldsetFields\":[163,193,195],\"useTabs\":0,\"fieldsetFieldsPrev\":[163,193,195],\"collapsed\":10,\"tags\":\"tabs\",\"icon\":\"desktop\",\"label1034\":\"Content options\",\"description\":\"Hier k\\u00f6nnen Sie das aussehen des Hauptinhalts bestimmen so wie der Inhaltsabschnitte die innerhalb des Hauptinhalts angezeigt werden.\",\"description1034\":\"Here you can define the appearance of the main content as well as the content sections displayed within the main content.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('184', 'FieldtypeFieldsetTabOpen', 'tab_visual', '32768', 'Visuelles', '{\"label1034\":\"Visual\",\"closeFieldID\":185,\"tags\":\"tabs\",\"collapsed\":0,\"icon\":\"eye\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('185', 'FieldtypeFieldsetClose', 'tab_visual_END', '32768', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'tab_visual\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":184,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('212', 'FieldtypeFieldsetClose', 'tab_preview_END', '32768', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'tab_preview\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":211,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('209', 'FieldtypeCheckbox', 'option_exclude_blocks', '32768', 'Globale Blöcke', '{\"label1034\":\"Global blocks\",\"collapsed\":0,\"show_if_custom_php\":\"if ($pages->get(\'template=app-settings\')->blocks->count > 0) return true;\",\"checkboxLabel\":\"Ausschlie\\u00dfen\",\"checkboxLabel1034\":\"exclude\",\"description\":\"Voreingestellt werden die Bl\\u00f6cke der Globalen Einstellungen angezeigt. W\\u00e4hlen Sie diese Option wenn nur hier erstellte Bl\\u00f6cke angezeigt werden sollen.\",\"tags\":\"options\",\"icon\":\"check-square-o\",\"description1034\":\"By default, the blocks of the Global settings are displayed. Select this option if only blocks created here should be displayed.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('206', 'FieldtypeTable', 'settings_business_hours', '32768', 'Öffnungszeiten', '{\"label1034\":\"Business hours\",\"parent_id\":0,\"trashOnDelete\":0,\"unpubOnTrash\":0,\"unpubOnUnpub\":0,\"noclose\":0,\"maxCols\":2,\"col1sort\":1,\"col2sort\":2,\"col3sort\":3,\"collapsed\":0,\"col1name\":\"day\",\"col1label\":\"Tag(e)\",\"col1type\":\"text\",\"col1width\":50,\"col1label1034\":\"Day(s)\",\"col2name\":\"time\",\"col2label\":\"Uhrzeit\",\"col2type\":\"text\",\"col2width\":50,\"col2label1034\":\"Time\",\"col1settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"col2settings\":\"textformatters=TextformatterEntities\\nplaceholder=\\ndefault=\\nmaxLength=2048\",\"tags\":\"settings\",\"icon\":\"clock-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('207', 'FieldtypePageTable', 'blocks', '32768', 'Blöcke', '{\"label1034\":\"Blocks\",\"tags\":\"data\",\"template_id\":[76,77,78,79,85,86],\"parent_id\":1132,\"trashOnDelete\":2,\"unpubOnTrash\":1,\"unpubOnUnpub\":1,\"collapsed\":0,\"noclose\":0,\"icon\":\"bars\",\"columns\":\"title\\ntemplate.label\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('208', 'FieldtypeCheckbox', 'option_disable_aside', '32768', 'Option', '{\"label1034\":\"Option\",\"tags\":\"options\",\"collapsed\":0,\"icon\":\"check-square-o\",\"checkboxLabel\":\"Deaktivieren\",\"checkboxLabel1034\":\"Disable\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('198', 'FieldtypeFieldsetGroup', 'settings_aside', '32768', 'Seitenleiste', '{\"label1034\":\"Aside\",\"closeFieldID\":199,\"fieldsetTemplate\":\"fieldset_field_198\",\"tags\":\"tabs\",\"useTabs\":0,\"collapsed\":0,\"icon\":\"list-alt\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('199', 'FieldtypeFieldsetClose', 'settings_aside_END', '32768', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'tab_aside\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":198,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('200', 'FieldtypeOptions', 'option_align', '32768', 'Ausrichtung', '{\"label1034\":\"Alignement\",\"inputfieldClass\":\"InputfieldRadios\",\"collapsed\":0,\"tags\":\"options\",\"optionColumns\":2,\"icon\":\"align-left\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('201', 'FieldtypeCheckbox', 'option_enable_aside', '32768', 'Option', '{\"label1034\":\"Option\",\"tags\":\"options\",\"collapsed\":0,\"icon\":\"check-square-o\",\"checkboxLabel\":\"Aktivieren\",\"checkboxLabel1034\":\"Enable\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('204', 'FieldtypeRepeaterMatrix', 'settings_locations', '32768', 'Standorte', '{\"label1034\":\"Locations\",\"template_id\":74,\"parent_id\":1128,\"matrix1_name\":\"location\",\"matrix1_label\":\"Standort\",\"matrix1_head\":\"{matrix_label} [\\u2022 {matrix_summary}]\",\"matrix1_sort\":1,\"matrix1_fields\":[132,138,131,139,133,137,135,134,136],\"repeaterFields\":[113,132,138,131,139,133,137,135,134,136],\"repeaterAddLabel\":\"Standort hinzuf\\u00fcgen\",\"repeaterAddLabel1034\":\"add location\",\"repeaterCollapse\":3,\"repeaterLoading\":1,\"collapsed\":0,\"matrix1_label1034\":\"Location\",\"description\":\"Zur Darstellung mehrerer Standorte, sei es in den Google Maps oder den Adressen in der Fu\\u00dfzeile oder der Seitenleiste, erstellen Sie hier alle relevante Standorte.\\nWenn f\\u00fcr den Standort die Werte wie Stra\\u00dfe, Stadt, Telefonnummer usw. nicht eingetragen werden so werden die oben eingetragene Standardangaben angezeigt.\",\"tags\":\"settings\",\"icon\":\"map-marker\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('211', 'FieldtypeFieldsetGroup', 'tab_preview', '32768', 'Zusammenfassung', '{\"closeFieldID\":212,\"fieldsetTemplate\":\"fieldset_field_211\",\"tags\":\"tabs\",\"fieldsetFields\":[210,154],\"useTabs\":0,\"icon\":\"eye\",\"fieldsetFieldsPrev\":[210,154],\"description\":\"Hier eingetragene Informationen werden f\\u00fcr die Zusammenfassung der Seite verwendet. Die Daten werden bspw. im Abschnitt \\\"Seitenbl\\u00f6cke\\\" als Vorschau angewendet.\",\"collapsed\":10,\"label1034\":\"Summary\",\"description1034\":\"Information that is entered here is used for the summary of this page. The data is used in example for \\\"Page blocks\\\" section.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('210', 'FieldtypeImage', 'preview_thumbnail', '32768', 'Vorschau-Bild', '{\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"adminThumbs\":1,\"maxWidth\":1140,\"tags\":\"uploads\",\"fileSchema\":6,\"defaultGrid\":1,\"gridMode\":\"grid\",\"icon\":\"file-image-o\",\"label1395\":\"Preview image\",\"focusMode\":\"on\",\"clientQuality\":90,\"otherFieldSettings\":\"{\\\"cf_textformatter\\\":null,\\\"cf_label\\\":[]}\",\"defaultValuePage\":0,\"useTags\":0,\"collapsed\":0,\"resizeServer\":0,\"label1034\":\"Preview image\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('192', 'FieldtypeCheckbox', 'option_thumbnail', '32768', 'Vorschaubild', '{\"label1034\":\"Thumbnail\",\"tags\":\"options\",\"notes\":\"Wird nur angewendet wenn die Eintrage ein Vorschaubild enthalten\",\"notes1034\":\"Only applicable if selected entries contain a thumbnail\",\"collapsed\":0,\"checkboxLabel\":\"Aktivieren\",\"checkboxLabel1034\":\"Enable\",\"icon\":\"file-image-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('193', 'FieldtypeOptions', 'option_image_position', '32768', 'Bild Ausrichtung', '{\"label1034\":\"Image position\",\"inputfieldClass\":\"InputfieldSelect\",\"collapsed\":0,\"tags\":\"options\",\"icon\":\"arrows-h\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('195', 'FieldtypeRangeSlider', 'option_column_size', '32768', 'Spaltengröße', '{\"label1034\":\"Column size\",\"tags\":\"options\",\"width\":100,\"defaultValue\":8,\"minValue\":1,\"maxValue\":12,\"step\":1,\"collapsed\":0,\"icon\":\"arrows-h\",\"notes\":\"Diese Option bestimmt die Gr\\u00f6\\u00dfe bzw. die Breite der Inhaltsspalte. Anwendbar nur in Kombination mit einem Bild.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('196', 'FieldtypeCheckbox', 'option_map', '32768', 'Eigene Adresseneingabe', '{\"label1034\":\"Custom address\",\"description\":\"Voreingestellt wird f\\u00fcr die Karte die Globale Adresse verwendet. Wenn Sie die Adresse f\\u00fcr diese Karte selbst bestimmen m\\u00f6chten aktivieren Sie das K\\u00e4stchen.\",\"description1034\":\"By preset the given map address is the global address. If you wish to enter a custom address enable this checkbox.\",\"collapsed\":0,\"checkboxLabel\":\"Aktivieren\",\"checkboxLabel1034\":\"Enable\",\"tags\":\"options\",\"icon\":\"check-square-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('197', 'FieldtypePage', 'option_people', '32768', 'Personen', '{\"label1034\":\"People\",\"tags\":\"options\",\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1079,\"template_id\":50,\"labelFieldName\":\"title\",\"collapsed\":0,\"icon\":\"users\",\"usePageEdit\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('214', 'FieldtypeFieldsetClose', 'tab_content_END', '32768', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'tab_content\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":213,\"tags\":\"tabs\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('217', 'FieldtypeTable', 'option_text_blocks', '32768', 'Text-Blöcke', '{\"maxCols\":2,\"col1sort\":1,\"col2sort\":2,\"col3sort\":3,\"paginationLimit\":0,\"collapsed\":0,\"col1name\":\"alpha\",\"col1label\":\"Text\",\"col1type\":\"textareaCKELanguage\",\"col1width\":50,\"col2name\":\"beta\",\"col2label\":\"Text\",\"col2type\":\"textareaCKELanguage\",\"col2width\":50,\"col1settings\":\"settingsField=content\\nuseACF=1\\nusePurifier=1\\ninherit=1\",\"col1label1034\":\"Text\",\"col2settings\":\"settingsField=content\\nuseACF=1\\nusePurifier=1\\ninherit=1\",\"col2label1034\":\"Text\",\"addRowLabel\":\"Textblock hinzuf\\u00fcgen\",\"addRowLabel1034\":\"Add text block\",\"tags\":\"options\",\"icon\":\"align-justify\",\"label1034\":\"Text blocks\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('218', 'FieldtypePageTable', 'partials', '32768', 'Inhaltsabschnitte', '{\"label1034\":\"Content sections\",\"template_id\":[66,71,87,73,65,69],\"parent_id\":1202,\"trashOnDelete\":1,\"unpubOnTrash\":1,\"unpubOnUnpub\":1,\"collapsed\":0,\"noclose\":0,\"tags\":\"data\",\"columns\":\"title\\ntemplate.label\",\"icon\":\"th-list\",\"description\":\"Durch die hier erstellte Eintr\\u00e4ge werden die Inhalte direkt dem Hauptinhalt folgend auf der Seite angezeigt.\\nDie Buttons bestimmen das Aussehen bzw. die Daten welche in diesen Abschnitt angezeigt werden.\",\"description1034\":\"Entries that were created here, are displayed on the page directly after main content.\\nThe buttons control the look or. the data that will be dispalyed for this section.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('219', 'FieldtypeCheckbox', 'option_ajax_form', '32864', 'Formular mit Ajax', '{\"label1034\":\"Ajax driven form\",\"collapsed\":0,\"checkboxLabel\":\"Aktivieren\",\"checkboxLabel1034\":\"Enable\",\"tags\":\"options\",\"icon\":\"spinner\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('220', 'FieldtypeRepeater', 'option_form_recipients', '32864', 'E-Mail Empfänger', '{\"label1034\":\"Email recipients\",\"description\":\"Voreingestellt werden die Nachrichten an die E-Mail Adresse welche in den Globalen Einstellungen eingerichtet wurde versendet.\",\"description1034\":\"By default messages are sent to the email address that was configured in global settings.\",\"template_id\":90,\"parent_id\":1208,\"repeaterFields\":[148],\"repeaterAddLabel\":\"Empf\\u00e4nger hinzuf\\u00fcgen\",\"repeaterAddLabel1034\":\"Add recipient\",\"repeaterCollapse\":0,\"repeaterLoading\":1,\"repeaterMaxItems\":5,\"collapsed\":0,\"tags\":\"options\",\"icon\":\"envelope-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('221', 'FieldtypeCheckbox', 'option_disable_hero', '32768', 'Header sichtbarkeit', '{\"label1034\":\"Hero visbility\",\"description\":\"Deaktiviert den Header-Bereich f\\u00fcr diese Seite\",\"description1034\":\"Disables the hero area for this page\",\"collapsed\":0,\"checkboxLabel\":\"verstecken\",\"checkboxLabel1034\":\"hide\",\"tags\":\"options\",\"icon\":\"check-square-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('222', 'FieldtypeNotifications', 'notifications', '24', 'Notifications', '{\"collapsed\":2}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  `title1034` text,
  `value1034` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  UNIQUE KEY `title1034` (`title1034`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  KEY `value1034` (`value1034`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`),
  FULLTEXT KEY `title1034_value1034` (`title1034`,`value1034`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('174', '1', 'links', 'left', '0', 'left', 'left');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('174', '2', 'zentriert', 'center', '1', 'center', 'centered');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('174', '3', 'rechts', 'right', '2', 'right', 'right');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('181', '1', 'Spalten', 'card', '0', 'Blocks', 'card');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('181', '2', 'Zeilen', 'row', '1', 'Rows', 'row');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('183', '1', '1', '12', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('183', '2', '2', '6', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('183', '3', '3', '4', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('183', '4', '4', '3', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('183', '5', '5', '2', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('183', '6', '6', '1', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('186', '1', '1', '12', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('186', '2', '2', '6', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('186', '3', '3', '4', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('186', '4', '4', '3', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('186', '5', '5', '2', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('186', '6', '6', '1', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('193', '2', 'rechts', 'last', '1', 'right', 'last');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('193', '1', 'links', 'first', '0', 'left', 'first');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('187', '1', '1', '12', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('187', '2', '2', '6', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('187', '3', '3', '4', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('187', '4', '4', '3', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('187', '5', '5', '2', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('187', '6', '6', '1', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('188', '1', '1', '12', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('188', '2', '2', '6', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('188', '3', '3', '4', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('188', '4', '4', '3', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('188', '5', '5', '2', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('188', '6', '6', '1', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('189', '1', '1', '12', '0', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('189', '2', '2', '6', '1', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('189', '3', '3', '4', '2', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('189', '4', '4', '3', '3', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('189', '5', '5', '2', '4', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('189', '6', '6', '1', '5', NULL, NULL);
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('200', '2', 'rechts', 'last', '1', 'right', 'last');
INSERT INTO `fieldtype_options` (`fields_id`, `option_id`, `title`, `value`, `sort`, `title1034`, `value1034`) VALUES('200', '1', 'links', 'first', '0', 'left', 'first');

DROP TABLE IF EXISTS `fieldtypeinteger_autoincrement`;
CREATE TABLE `fieldtypeinteger_autoincrement` (
  `tpl_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `seq` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tpl_id`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `hanna_code`;
CREATE TABLE `hanna_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `code` text,
  `modified` int(10) unsigned NOT NULL DEFAULT '0',
  `accessed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '32', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\",\"InputfieldChosenSelect\",\"InputfieldChosenSelectMultiple\"]}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '{\"replacements\":{\"\\u00e6\":\"ae\",\"\\u00e5\":\"a\",\"\\u00e4\":\"ae\",\"\\u00e3\":\"a\",\"\\u00df\":\"ss\",\"\\u00f6\":\"oe\",\"\\u00fc\":\"ue\",\"\\u0111\":\"dj\",\"\\u0436\":\"zh\",\"\\u0445\":\"kh\",\"\\u0446\":\"tc\",\"\\u0447\":\"ch\",\"\\u0448\":\"sh\",\"\\u0449\":\"shch\",\"\\u044e\":\"iu\",\"\\u044f\":\"ia\",\":\":\"-\",\",\":\"-\",\"\\u00e0\":\"a\",\"\\u00e1\":\"a\",\"\\u00e2\":\"a\",\"\\u00e8\":\"e\",\"\\u00e9\":\"e\",\"\\u00eb\":\"e\",\"\\u00ea\":\"e\",\"\\u011b\":\"e\",\"\\u00ec\":\"i\",\"\\u00ed\":\"i\",\"\\u00ef\":\"i\",\"\\u00ee\":\"i\",\"\\u0131\":\"i\",\"\\u0130\":\"i\",\"\\u011f\":\"g\",\"\\u00f5\":\"o\",\"\\u00f2\":\"o\",\"\\u00f3\":\"o\",\"\\u00f4\":\"o\",\"\\u00f8\":\"o\",\"\\u00f9\":\"u\",\"\\u00fa\":\"u\",\"\\u00fb\":\"u\",\"\\u016f\":\"u\",\"\\u00f1\":\"n\",\"\\u00e7\":\"c\",\"\\u010d\":\"c\",\"\\u0107\":\"c\",\"\\u00c7\":\"c\",\"\\u010f\":\"d\",\"\\u013a\":\"l\",\"\\u013e\":\"l\",\"\\u0144\":\"n\",\"\\u0148\":\"n\",\"\\u0155\":\"r\",\"\\u0159\":\"r\",\"\\u0161\":\"s\",\"\\u015f\":\"s\",\"\\u015e\":\"s\",\"\\u0165\":\"t\",\"\\u00fd\":\"y\",\"\\u017e\":\"z\",\"\\u0430\":\"a\",\"\\u0431\":\"b\",\"\\u0432\":\"v\",\"\\u0433\":\"g\",\"\\u0434\":\"d\",\"\\u0435\":\"e\",\"\\u0451\":\"e\",\"\\u0437\":\"z\",\"\\u0438\":\"i\",\"\\u0439\":\"i\",\"\\u043a\":\"k\",\"\\u043b\":\"l\",\"\\u043c\":\"m\",\"\\u043d\":\"n\",\"\\u043e\":\"o\",\"\\u043f\":\"p\",\"\\u0440\":\"r\",\"\\u0441\":\"s\",\"\\u0442\":\"t\",\"\\u0443\":\"u\",\"\\u0444\":\"f\",\"\\u044b\":\"y\",\"\\u044d\":\"e\",\"\\u0119\":\"e\",\"\\u0105\":\"a\",\"\\u015b\":\"s\",\"\\u0142\":\"l\",\"\\u017c\":\"z\",\"\\u017a\":\"z\"},\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\",\"admin_theme\"]}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":17,\"coreVersion\":\"3.0.147\"}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2019-06-17 17:33:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2019-06-17 17:34:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '{\"useAsLogin\":1,\"userAvatar\":\"icon.user-circle\",\"userLabel\":\"{name}\",\"logoURL\":\"\",\"logoAction\":\"0\",\"layout\":\"\",\"noGrid\":\"0\",\"maxWidth\":1600,\"groupNotices\":\"1\",\"cssURL\":\"\",\"inputSize\":\"m\",\"noBorderTypes\":[],\"offsetTypes\":[],\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-17 17:34:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2019-06-17 17:34:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2019-06-17 17:34:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypeCache', '1', '', '2019-06-21 12:40:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1015}', '2019-06-21 12:40:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'InputfieldRepeater', '0', '', '2019-06-21 12:40:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'FieldtypeFieldsetPage', '35', '{\"repeatersRootPageID\":1015}', '2019-06-21 12:40:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'FieldtypeOptions', '1', '', '2019-06-21 12:40:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'LanguageSupport', '35', '{\"languagesPageID\":1017,\"defaultLanguagePageID\":1018,\"otherLanguagePageIDs\":[1034],\"languageTranslatorPageID\":1019}', '2019-06-21 12:41:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'ProcessLanguage', '1', '', '2019-06-21 12:41:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'ProcessLanguageTranslator', '1', '', '2019-06-21 12:41:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'LanguageSupportFields', '3', '', '2019-06-21 12:41:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'FieldtypeTextLanguage', '1', '', '2019-06-21 12:41:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'FieldtypePageTitleLanguage', '1', '', '2019-06-21 12:41:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'FieldtypeTextareaLanguage', '1', '', '2019-06-21 12:41:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":10}', '2019-06-21 12:41:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'LazyCron', '3', '', '2019-06-21 12:41:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'LanguageTabs', '11', '', '2019-06-21 12:41:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'PagePathHistory', '3', '', '2019-06-21 12:42:05');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'ProcessPageClone', '11', '', '2019-06-21 12:42:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'ProcessPagesExportImport', '1', '', '2019-06-21 12:42:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'ProcessForgotPassword', '1', '', '2019-06-21 12:42:29');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'AdminThemeReno', '10', '', '2019-06-21 12:43:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('185', 'FieldtypeSelector', '1', '', '2019-06-21 12:43:54');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'FieldtypePageTable', '3', '', '2019-06-21 12:44:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('187', 'InputfieldPageTable', '0', '', '2019-06-21 12:44:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'InputfieldPageAutocomplete', '0', '', '2019-06-21 12:44:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('190', 'MarkupCache', '3', '', '2019-06-21 12:44:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'MarkupRSS', '0', '', '2019-06-21 12:44:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('192', 'AllInOneMinify', '3', '{\"stylesheet_prefix\":\"css_\",\"javascript_prefix\":\"js_\",\"max_cache_lifetime\":\"2419200\",\"html_minify\":1,\"development_mode\":\"\",\"directory_traversal\":\"\",\"empty_cache\":\"Empty cache\",\"domain_sharding\":\"\",\"domain_sharding_ssl\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-21 12:48:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('193', 'ContinentsAndCountries', '0', '', '2019-06-21 12:49:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('194', 'FieldtypeContinentsAndCountries', '1', '', '2019-06-21 12:49:25');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('195', 'ImageExtra', '3', '', '2019-06-21 12:49:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('196', 'JqueryDataTables', '1', '', '2019-06-21 12:49:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('197', 'MarkupLoadRSS', '0', '', '2019-06-21 12:49:54');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('198', 'MarkupSEO', '2', '{\"includeTemplates\":[\"page-default\",\"page-landing\",\"login\",\"sectionheader\",\"search\",\"page-articles\",\"page-article\",\"page-contact\",\"page-imprint\"],\"author\":\"Goran Ilic - idea arts kreativagentur\",\"sitename\":\"Eigene Webseite, einfach gemacht\",\"useParents\":\"\",\"title\":\"\",\"titleSmart\":[\"title\"],\"keywords\":\"\",\"keywordsSmart\":[],\"description\":\"\",\"descriptionSmart\":[\"summary\"],\"image\":\"\",\"imageSmart\":[\"thumbnail\",\"hero_image\",\"gallery\"],\"titleFormat\":\"{title} - {sitename}\",\"canonicalProtocol\":\"auto\",\"custom\":\"\",\"robots\":[],\"hardLimit\":1,\"titleLimit\":60,\"descriptionLimit\":160,\"includeGenerator\":1,\"includeOpenGraph\":1,\"includeTwitter\":\"\",\"twitterUsername\":\"ideaarts\",\"method\":\"manual\",\"addWhitespace\":1,\"googleAnalytics\":\"\",\"googleAnalyticsAnonymizeIP\":\"\",\"piwikAnalyticsUrl\":\"\",\"piwikAnalyticsIDSite\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-21 12:49:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('199', 'MarkupSitemap', '3', '{\"o1035\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o27\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1047\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1048\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1049\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1052\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1053\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1054\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1055\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1065\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1068\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1070\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1073\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1074\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1075\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"sitemap_include_templates\":[\"item-person\",\"page-default\",\"page-landing\",\"redirect\",\"search\",\"page-article\",\"page-articles\",\"page-contact\",\"page-imprint\"],\"sitemap_exclude_templates\":[\"data\",\"data-general\",\"sectionheader\",\"ajax-form\"],\"sitemap_image_fields\":[\"thumbnail\",\"gallery\"],\"sitemap_default_iso\":\"de\",\"sitemap_include_hidden\":\"\",\"sitemap_stylesheet\":1,\"sitemap_stylesheet_custom\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\",\"o1078\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1079\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1080\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1081\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1082\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1086\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1097\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1102\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1113\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1123\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1125\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1126\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1127\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1132\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1139\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1140\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1141\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1159\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1163\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1164\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1166\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1170\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1171\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1172\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1173\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1174\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1177\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1186\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1187\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1184\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"o1189\":{\"priority\":false,\"excludes\":{\"images\":false,\"page\":false,\"children\":false}},\"cache_method\":\"MarkupCache\",\"cache_ttl\":3600}', '2019-06-21 12:50:47');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('200', 'TextformatterMarkdownExtra', '1', '', '2019-06-21 12:50:47');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('201', 'ModulesManager', '1', '{\"apikey\":\"pw223\",\"remoteurl\":\"http:\\/\\/modules.processwire.com\\/export-json\\/\",\"limit\":350,\"max_redirects\":3,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-06-21 12:51:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('202', 'PageActionDelete', '1', '', '2019-06-21 12:51:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('203', 'PageActionEmail', '1', '', '2019-06-21 12:51:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('204', 'PageProtector', '3', '{\"protectSite\":0,\"protectHidden\":\"\",\"protectChildrenOfHidden\":null,\"protectUnpublished\":\"\",\"protectChildrenOfUnpublished\":null,\"protectedPages\":[],\"message\":\"Diese Seite ist Passwortgesch\\u00fctzt. Bitte logen Sie sich ein.\",\"prohibited_message\":\"Sie haben keine Berechtigung f\\u00fcr diese Seite.\",\"login_template\":\"login.php\",\"usernamePlaceholder\":\"Benutzername\",\"passwordPlaceholder\":\"Kennwort\",\"loginButtonText\":\"Login\",\"logincss\":\"\",\"message__1034\":\"This page is protected. You must log in to view it.\",\"usernamePlaceholder__1034\":\"Username\",\"passwordPlaceholder__1034\":\"Password\",\"loginButtonText__1034\":\"Login\",\"prohibited_message__1034\":\"You do not have permission to view this page.\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-21 12:52:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('205', 'PageimageAssistant', '3', '', '2019-06-21 12:52:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('206', 'Pages2JSON', '3', '', '2019-06-21 12:52:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('208', 'ProcessPageDelete', '11', '', '2019-06-21 12:52:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('209', 'ProcessPageListerPro', '1', '{\"licenseKey\":\"\",\"editFieldtypes\":[\"FieldtypeDatetime\",\"FieldtypeSelector\",\"FieldtypeImage\",\"FieldtypePageTitle\",\"FieldtypeText\",\"FieldtypeOptions\",\"FieldtypeEmail\",\"FieldtypeInteger\",\"FieldtypeModule\",\"FieldtypeCheckbox\",\"FieldtypeCache\",\"FieldtypeFloat\",\"FieldtypeFile\",\"FieldtypeTextarea\",\"FieldtypeURL\",\"FieldtypePage\",\"FieldtypeTextLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypePageTitleLanguage\"],\"uninstall\":\"\",\"submit_save_module\":\"Absenden\",\"settings\":{\"personen\":{\"pagename\":\"personen\",\"initSelector\":\"template=50\",\"defaultSelector\":\"title.%=, category_people=, person_email%=\",\"columns\":[\"title\",\"person_firstname\",\"category_people\",\"person_mobile\",\"person_email\"],\"defaultSort\":\"title\",\"useColumnLabels\":\"1\",\"editOption\":\"0\",\"editColumns\":[],\"editPreload\":null,\"parent\":0,\"allowActions\":[\"PageActionDelete\",\"PageActionEmail\"],\"imageWidth\":40,\"imageHeight\":40,\"imageFirst\":\"\",\"imageStyle\":\"0\",\"viewMode\":\"4\",\"editMode\":\"2\",\"toggles\":[\"collapseFilters\",\"collapseColumns\",\"collapseActions\",\"noNewFilters\",\"disableColumns\"],\"limitFields\":[],\"delimiters\":[],\"InputfieldSelectorSettings\":\"\"},\"artikel\":{\"pagename\":\"artikel\",\"initSelector\":\"template=57\",\"defaultSelector\":\"title.%=, publish_from=\",\"columns\":[\"title\",\"publish_from\"],\"defaultSort\":\"-publish_from\",\"useColumnLabels\":\"1\",\"editOption\":\"0\",\"editColumns\":[],\"editPreload\":null,\"parent\":1073,\"allowActions\":[\"PageActionDelete\"],\"imageWidth\":\"\",\"imageHeight\":100,\"imageFirst\":\"\",\"imageStyle\":\"0\",\"viewMode\":\"4\",\"editMode\":\"2\",\"toggles\":[\"collapseFilters\",\"collapseColumns\",\"collapseActions\",\"noNewFilters\",\"disableColumns\"],\"limitFields\":[],\"delimiters\":[],\"InputfieldSelectorSettings\":\"\"}}}', '2019-06-21 12:52:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('210', 'ProcessWireUpgrade', '1', '', '2019-06-21 12:53:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('211', 'ProcessWireUpgradeCheck', '11', '', '2019-06-21 12:53:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('212', 'SchedulePages', '3', '{\"cronInterval\":\"everyHour\",\"autofillPublishFrom\":\"1\",\"debug\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-06-21 12:53:13');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('213', 'SmartyEngine', '3', '', '2019-06-21 12:53:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('214', 'WireMailSwiftMailer', '0', '{\"transport\":\"Mail\",\"SMTPPort\":\"25\",\"defaultFrom\":\"ich@ia.co.at\",\"defaultFromName\":\"ProcessWire\",\"SMTPServer\":\"w0085095.kasserver.com\",\"SMTPEncryption\":\"tls\",\"SMTPUsername\":\"m04f7548\",\"SendmailCommand\":\"\\/usr\\/sbin\\/sendmail -t -i\",\"submit\":\"Send test message\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\",\"SMTPPassword\":\"DcGSf7HJ8PXuv6yG\",\"connectionStatus\":\"1|1568192557\"}', '2019-06-21 12:54:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('215', 'FieldtypeBusinessHours', '1', '', '2019-06-21 13:28:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('216', 'InputfieldBusinessHours', '0', '', '2019-06-21 13:28:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('217', 'FieldtypeEmailLanguage', '1', '', '2019-06-21 13:31:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('218', 'CustomInputfieldDependencies', '10', '', '2019-06-21 13:34:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('219', 'AutoSmush', '3', '{\"optAutoEngine\":\"resmushit\",\"optAutoAction\":[\"optimize_originals\",\"backup\"],\"optAutoQuality\":70,\"optApiEngine\":\"resmushit\",\"optApiAction\":[],\"optApiQuality\":70,\"optManualEngine\":\"resmushit\",\"optManualAction\":[\"optimize_originals\",\"optimize_variations\"],\"optManualQuality\":70,\"optBulkEngine\":\"resmushit\",\"optBulkAction\":[\"optimize_originals\",\"optimize_variations\"],\"optBulkQuality\":70,\"optimize_all\":\"Start bulk image optimize\",\"cancel_all\":\"Cancel\",\"optChain\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-06-21 13:35:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('220', 'MarkupJsonLDSchema', '1', '{\"organization\":\"\",\"logo\":\"\",\"street_address\":\"\",\"address_locality\":\"\",\"address_region\":\"\",\"postcode\":\"\",\"address_country\":\"\",\"description\":\"Eigene Webseite, einfach gemacht\",\"telephone\":\"\",\"opening_hours\":\"Mo,Di,Mi,Do,Fr  9:00 - 17:00 13:30 - 17:30\",\"latitude\":\"\",\"longitude\":\"\",\"has_map\":\"https:\\/\\/goo.gl\\/maps\\/VmH4psR32xqteE1k6\",\"same_as\":\"https:\\/\\/www.facebook.com\\/\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-21 13:44:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('221', 'IntegerAutoIncrement', '3', '', '2019-06-21 13:46:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('222', 'TextformatterVideoEmbedOptions', '1', '', '2019-06-21 13:48:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('223', 'InputfieldChosenSelect', '0', '', '2019-06-21 13:53:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('224', 'FieldtypeDecimal', '1', '', '2019-06-21 13:56:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('225', 'InputfieldDecimal', '0', '', '2019-06-21 13:56:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('226', 'ProcessDatabaseBackups', '1', '', '2019-06-21 13:57:44');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('227', 'PasswordForceChange', '3', '', '2019-06-21 13:58:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('228', 'MaintenanceMode', '3', '{\"inMaintenance\":\"\",\"bypassRoles\":[],\"showPage\":0,\"showURL\":\"\",\"allowPages\":[],\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-21 14:15:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('229', 'FieldtypeMapMarker', '1', '{\"googleApiKey\":\"AIzaSyD60gLscdAkfhaNpYlN8GwuyruGuEo1lBA\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-06-21 14:16:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('230', 'InputfieldMapMarker', '0', '', '2019-06-21 14:16:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('231', 'FieldtypeAssistedURL', '1', '', '2019-06-21 14:42:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('232', 'InputfieldAssistedURL', '0', '', '2019-06-21 14:42:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('233', 'FieldtypeFieldsetGroup', '1', '', '2019-06-21 14:42:35');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('234', 'FieldtypeMultiplier', '1', '', '2019-06-21 14:42:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('235', 'InputfieldMultiplier', '0', '', '2019-06-21 14:42:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('236', 'FieldtypeRangeSlider', '1', '', '2019-06-21 14:42:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('237', 'InputfieldRangeSlider', '0', '', '2019-06-21 14:42:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('238', 'FieldtypeRepeaterMatrix', '33', '', '2019-06-21 14:42:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('239', 'InputfieldRepeaterMatrix', '0', '', '2019-06-21 14:42:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('240', 'FieldtypeSelectFile', '1', '', '2019-06-21 14:43:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('241', 'InputfieldSelectFile', '0', '', '2019-06-21 14:43:06');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('242', 'FieldtypeSecureFile', '1', '', '2019-06-21 14:43:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('243', 'FieldtypeTable', '1', '', '2019-06-21 14:43:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('244', 'InputfieldTable', '0', '', '2019-06-21 14:43:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('245', 'FieldtypeTextareas', '1', '', '2019-06-21 14:43:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('246', 'InputfieldTextareas', '0', '', '2019-06-21 14:43:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('247', 'InputfieldChosenSelectMultiple', '0', '', '2019-06-21 14:43:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('248', 'FieldtypeColorPicker', '1', '', '2019-06-21 14:43:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('249', 'InputfieldColorPicker', '0', '', '2019-06-21 14:43:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('250', 'LanguageInstantInstall', '11', '', '2019-06-21 14:44:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('251', 'TextformatterAutoLinks', '1', '', '2019-06-21 14:44:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('252', 'TextformatterTextBlocks', '11', '', '2019-06-21 14:44:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('253', 'MarkupGoogleMap', '0', '', '2019-06-21 14:45:05');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('254', 'LoginWithEmail', '3', '', '2019-06-24 11:46:29');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('255', 'PagesAtBottom', '2', '{\"selected_pages\":[1047,1132,1202,1086,1052,1049,1081,1082,1035,27],\"uninstall\":\"\",\"submit_save_module\":\"Absenden\",\"bottom_pages\":{\"1047\":{\"parent\":1,\"sort\":100000},\"1132\":{\"parent\":1,\"sort\":100001},\"1202\":{\"parent\":1,\"sort\":100002},\"1086\":{\"parent\":1,\"sort\":100003},\"1052\":{\"parent\":1,\"sort\":100004},\"1049\":{\"parent\":1,\"sort\":100005},\"1081\":{\"parent\":1,\"sort\":100006},\"1082\":{\"parent\":1,\"sort\":100007},\"1035\":{\"parent\":1,\"sort\":100008},\"27\":{\"parent\":1,\"sort\":100009}},\"bottom_parents\":{\"1\":[1047,1132,1202,1086,1052,1049,1081,1082,1035,27]}}', '2019-06-26 08:58:53');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('257', 'PageTableExtraActions', '10', '', '2019-09-06 16:06:40');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('260', 'SystemNotifications', '2', '{\"disabled\":\"0\",\"trackEdits\":\"1\",\"reverse\":\"0\",\"activeHooks\":[0,1,2],\"systemUserName\":\"uniqu3\",\"updateDelay\":5000,\"dateFormat\":\"rel\",\"iconMessage\":\"check-square-o\",\"iconWarning\":\"exclamation-circle\",\"iconError\":\"exclamation-triangle\",\"ghostDelay\":1000,\"ghostDelayError\":2000,\"ghostOpacity\":0.85,\"ghostLimit\":20,\"ghostFadeSpeed\":\"fast\",\"ghostPos\":\"2\",\"placement\":\"1\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-10-26 11:08:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('258', 'TextformatterHannaCode', '1', '{\"openTag\":\"[[\",\"closeTag\":\"]]\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2019-10-23 13:27:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('259', 'ProcessHannaCode', '1', '', '2019-10-23 13:27:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('261', 'FieldtypeNotifications', '1', '', '2019-10-26 11:08:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('262', 'InputfieldToggle', '0', '', '2019-10-26 11:17:09');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('263', 'ProcessBatcher', '1', '', '2019-10-26 11:18:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('264', 'BatchChildEditor', '10', '', '2019-10-26 11:18:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('265', 'ProcessChildrenCsvExport', '1', '', '2019-10-26 11:18:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('266', 'ProcessAdminActions', '1', '{\"dbBackup\":\"automatic\",\"showActionCode\":null,\"core\":{\"CopyContentToOtherField\":{\"roles\":[38],\"title\":\"Copy Content to Other Field\",\"description\":\"This action copies the content from one field to another field on all pages that use the selected template.\",\"notes\":\"This can be useful if you decide you need to split one field into two to allow different settings on different templates. It also makes it easy to move content from one field type to another one that is incompatible.\",\"icon\":\"copy\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"CopyFieldContentToOtherPage\":{\"roles\":[38],\"title\":\"Copy Field Content to Other Page\",\"description\":\"Copies the content from a field on one page to the same field on another page.\",\"notes\":\"This can be useful if you decide to restructure where certain content lives on the site.\",\"icon\":\"copy\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"CopyRepeaterItemsToOtherPage\":{\"roles\":[38],\"title\":\"Copy Repeater Items to Other Page\",\"description\":\"Add the items from a Repeater\\/RepeaterMatrix field on one page to the same field on another page.\",\"notes\":\"If the field on the destination page already has items, you can choose to append, or overwrite.\",\"icon\":\"copy\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"CopyTableFieldRowsToOtherPage\":{\"roles\":[38],\"title\":\"Copy Table Field Rows to Other Page\",\"description\":\"Add the rows from a Table field on one page to the same field on another page.\",\"notes\":\"If the field on the destination page already has rows, you can choose to append, or overwrite.\",\"icon\":\"copy\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"CreateUsersBatcher\":{\"roles\":[38],\"title\":\"Create Users Batcher\",\"description\":\"Allows you to batch create users.\",\"notes\":\"Having the Email New User module installed and configured to generate a password automatically is recommended. It is also recommended that you install the Password Force Change module.\",\"icon\":\"user-plus\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"DeleteUnusedFields\":{\"roles\":[38],\"title\":\"Delete Unused Fields\",\"description\":\"Deletes fields that are not used by any templates.\",\"notes\":\"Shows a list of unused fields with checkboxes to select those to delete.\",\"icon\":\"minus-circle\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"DeleteUnusedTemplates\":{\"roles\":[38],\"title\":\"Delete Unused Templates\",\"description\":\"Deletes templates that are not used by any pages.\",\"notes\":\"Shows a list of unused templates with checkboxes to select those to delete.\",\"icon\":\"minus-circle\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"EmailBatcher\":{\"roles\":[38],\"title\":\"Email Batcher\",\"description\":\"Lets you email multiple addresses at once.\",\"notes\":\"You can select \\\"Pages\\\" or \\\"User Roles\\\" for determining the recipients.\",\"icon\":\"envelope\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"FieldSetOrSearchAndReplace\":{\"roles\":[38],\"title\":\"Field Set or Search and Replace\",\"description\":\"Set field values, or search and replace text in field values from a filtered selection of pages and fields.\",\"notes\":\"This can be very destructive - please be careful!\",\"icon\":\"search-plus\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"FtpFilesToPage\":{\"roles\":[38],\"title\":\"FTP Files to Page\",\"description\":\"Add files\\/images from a folder to a selected page.\",\"notes\":\"This is useful if you want to FTP files, rather than upload via the admin.\",\"icon\":\"upload\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"PageActiveLanguagesBatcher\":{\"roles\":[38],\"title\":\"Page Active Languages Batcher\",\"description\":\"Lets you enable or disable active status of multiple languages on multiple pages at once.\",\"notes\":\"\",\"icon\":\"language\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"PageManipulator\":{\"roles\":[38],\"title\":\"Page Manipulator\",\"description\":\"Uses an InputfieldSelector to query pages and then allows batch actions on the matched pages.\",\"notes\":\"Actions are: Publish, Unpublish, Hide, Unhide, Trash, Delete, Change Template, Change Parent\",\"icon\":\"cog\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"PageTableToRepeaterMatrix\":{\"roles\":[38],\"title\":\"Page Table to Repeater \\/ Repeater Matrix\",\"description\":\"Fully converts an existing (and populated) PageTable field to either a Repeater or RepeaterMatrix field.\",\"notes\":\"By default it will choose Repeater or RepeaterMatrix based on the number of templates in the PageTable field, but you can also choose to force RepeaterMatrix.\",\"icon\":\"exchange\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"TemplateFieldsBatcher\":{\"roles\":[38],\"title\":\"Template Fields Batcher\",\"description\":\"Lets you add or remove multiple fields from multiple templates at once.\",\"notes\":\"\",\"icon\":\"cube\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"TemplateRolesBatcher\":{\"roles\":[38],\"title\":\"Template Roles Batcher\",\"description\":\"Lets you add or remove access permissions, for multiple roles and multiple templates at once.\",\"notes\":\"Access permission options are: Edit Pages, Create Pages, and Add Children.\",\"icon\":\"cubes\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}},\"UserRolesPermissionsBatcher\":{\"roles\":[38],\"title\":\"User Roles Permission Batcher\",\"description\":\"Lets you add or remove permissions for multiple roles, or roles for multiple users at once.\",\"notes\":\"Role selections are required. If all three have selections, permissions will be modified in roles and roles modified in users.\",\"icon\":\"cogs\",\"author\":\"Adrian Jones\",\"authorLinks\":{\"pwforum\":\"985-adrian\",\"pwdirectory\":\"adrian-jones\",\"github\":\"adrianbj\"}}}}', '2019-10-26 11:19:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('267', 'ProcessChangelog', '1', '{\"date_format\":\"Y-m-d H:i:s\",\"row_limit\":\"25\",\"row_label\":\"name\",\"visible_filters\":[\"operation\",\"username\",\"when\",\"date_range\"],\"default_for_operation\":\"\",\"default_for_flags\":\"\",\"default_for_when\":\"\",\"rss_content_type\":\"0\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}', '2019-10-26 11:21:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('268', 'ProcessChangelogHooks', '3', '{\"schema_version\":2}', '2019-10-26 11:21:16');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1034` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1034` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1034_parent_id` (`name1034`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1272 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1', '0', '48', 'home', '9', '2019-12-13 11:55:19', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', 'en', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('2', '1', '2', 'admin', '1035', '2019-12-12 16:14:30', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '26', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('3', '2', '2', 'page', '21', '2019-12-12 16:14:17', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('6', '3', '2', 'add', '21', '2019-06-17 17:34:31', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('7', '1', '2', 'trash', '1039', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '27', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('8', '3', '2', 'list', '21', '2019-06-17 18:03:33', '40', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('9', '3', '2', 'sort', '1047', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('10', '3', '2', 'edit', '1045', '2019-06-17 18:03:30', '40', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('11', '22', '2', 'template', '21', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('16', '22', '2', 'field', '21', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('21', '2', '2', 'module', '21', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('22', '2', '2', 'setup', '21', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('23', '2', '2', 'login', '1035', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('27', '1', '49', 'http404', '1035', '2019-12-13 11:55:19', '41', '2019-06-17 17:33:58', '3', '2019-06-17 17:33:58', '100009', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('28', '2', '2', 'access', '13', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('29', '28', '2', 'users', '29', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('30', '28', '2', 'roles', '29', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('31', '28', '2', 'permissions', '29', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('32', '31', '5', 'page-edit', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('34', '31', '5', 'page-delete', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('35', '31', '5', 'page-move', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('36', '31', '5', 'page-view', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('37', '30', '4', 'guest', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('38', '30', '4', 'superuser', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('41', '29', '3', 'uniqu3', '1', '2019-12-12 14:41:42', '40', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('40', '29', '3', 'guest', '25', '2019-06-21 12:41:00', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('50', '31', '5', 'page-sort', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('51', '31', '5', 'page-template', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('52', '31', '5', 'user-admin', '25', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('53', '31', '5', 'profile-edit', '1', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('54', '31', '5', 'page-lock', '1', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('300', '3', '2', 'search', '1045', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('301', '3', '2', 'trash', '1047', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('302', '3', '2', 'link', '1041', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('303', '3', '2', 'image', '1041', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '2', '2019-06-17 17:33:58', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('304', '2', '2', 'profile', '1025', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '41', '2019-06-17 17:33:58', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1006', '31', '5', 'page-lister', '1', '2019-06-17 17:33:58', '40', '2019-06-17 17:33:58', '40', '2019-06-17 17:33:58', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1007', '3', '2', 'lister', '1', '2019-06-24 12:25:02', '41', '2019-06-17 17:33:58', '40', '2019-06-17 17:33:58', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1010', '3', '2', 'recent-pages', '1', '2019-06-24 12:25:06', '41', '2019-06-17 17:34:27', '41', '2019-06-17 17:34:27', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2019-06-17 17:34:27', '41', '2019-06-17 17:34:27', '41', '2019-06-17 17:34:27', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1012', '22', '2', 'logs', '1', '2019-06-17 17:34:31', '41', '2019-06-17 17:34:31', '41', '2019-06-17 17:34:31', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1013', '31', '5', 'logs-view', '1', '2019-06-17 17:34:31', '41', '2019-06-17 17:34:31', '41', '2019-06-17 17:34:31', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1014', '31', '5', 'logs-edit', '1', '2019-06-17 17:34:31', '41', '2019-06-17 17:34:31', '41', '2019-06-17 17:34:31', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1015', '2', '2', 'repeaters', '1036', '2019-06-21 12:40:35', '41', '2019-06-21 12:40:35', '41', '2019-06-21 12:40:35', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1016', '31', '5', 'lang-edit', '1', '2019-06-21 12:41:00', '41', '2019-06-21 12:41:00', '41', '2019-06-21 12:41:00', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1017', '22', '2', 'languages', '16', '2019-06-21 12:41:00', '41', '2019-06-21 12:41:00', '41', '2019-06-21 12:41:00', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1018', '1017', '43', 'default', '16', '2019-10-23 15:53:04', '41', '2019-06-21 12:41:00', '41', '2019-06-21 12:41:00', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1019', '22', '2', 'language-translator', '1040', '2019-06-21 12:41:00', '41', '2019-06-21 12:41:00', '41', '2019-06-21 12:41:00', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1020', '3', '2', 'clone', '1024', '2019-06-21 12:42:19', '41', '2019-06-21 12:42:19', '41', '2019-06-21 12:42:19', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1021', '31', '5', 'page-clone', '1', '2019-06-21 12:42:19', '41', '2019-06-21 12:42:19', '41', '2019-06-21 12:42:19', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1022', '31', '5', 'page-clone-tree', '1', '2019-06-21 12:42:19', '41', '2019-06-21 12:42:19', '41', '2019-06-21 12:42:19', '15', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1023', '3', '2', 'export-import', '1', '2019-10-23 16:57:48', '41', '2019-06-21 12:42:25', '41', '2019-06-21 12:42:25', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1025', '22', '2', 'modulesmanager', '1', '2019-06-21 12:51:27', '41', '2019-06-21 12:51:27', '41', '2019-06-21 12:51:27', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1026', '31', '5', 'page-action-delete', '1', '2019-06-21 12:51:52', '41', '2019-06-21 12:51:52', '41', '2019-06-21 12:51:52', '16', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1027', '31', '5', 'page-action-send-email', '1', '2019-06-21 12:51:58', '41', '2019-06-21 12:51:58', '41', '2019-06-21 12:51:58', '17', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1028', '31', '5', 'page-edit-protected', '1', '2019-06-21 12:52:15', '41', '2019-06-21 12:52:15', '41', '2019-06-21 12:52:15', '18', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1030', '3', '2', 'delete', '1024', '2019-06-21 12:52:50', '41', '2019-06-21 12:52:50', '41', '2019-06-21 12:52:50', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1031', '22', '2', 'upgrades', '1', '2019-06-21 12:53:03', '41', '2019-06-21 12:53:03', '41', '2019-06-21 12:53:03', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1032', '22', '2', 'db-backups', '1', '2019-06-21 13:57:44', '41', '2019-06-21 13:57:44', '41', '2019-06-21 13:57:44', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1033', '31', '5', 'db-backup', '1', '2019-06-21 13:57:44', '41', '2019-06-21 13:57:44', '41', '2019-06-21 13:57:44', '19', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1034', '1017', '43', 'en-us', '1025', '2019-12-12 14:53:18', '41', '2019-06-21 14:54:35', '41', '2019-06-21 14:54:35', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1035', '1', '45', 'global-settings', '1025', '2019-12-13 11:55:19', '41', '2019-06-22 11:58:37', '41', '2019-06-22 11:59:00', '100008', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1036', '3', '2', 'global-settings', '1', '2019-10-23 16:57:44', '41', '2019-06-24 11:53:41', '41', '2019-06-24 11:53:55', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1165', '1053', '56', 'buchhalterin', '1', '2019-10-07 12:51:17', '41', '2019-10-07 12:51:17', '41', '2019-10-07 12:51:17', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1065', '1', '49', 'test', '1', '2019-12-13 11:58:37', '41', '2019-06-25 13:14:25', '41', '2019-06-25 13:14:28', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1070', '1048', '52', 'buchhaltung', '1', '2019-06-25 13:36:52', '41', '2019-06-25 13:36:48', '41', '2019-06-25 13:36:52', '1', 'accounting', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1047', '1', '51', 'categories', '1029', '2019-12-13 11:55:19', '41', '2019-06-25 12:17:59', '41', '2019-06-25 12:18:13', '100000', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1048', '1047', '51', 'personen', '1', '2019-06-25 13:30:38', '41', '2019-06-25 12:18:39', '41', '2019-06-25 12:19:14', '0', 'people', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1049', '1', '54', 'suche', '1025', '2019-12-13 11:55:19', '41', '2019-06-25 12:32:06', '41', '2019-06-25 12:32:17', '100005', 'search', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1075', '1068', '52', 'allgemein', '1', '2019-06-25 16:01:58', '41', '2019-06-25 15:57:48', '41', '2019-06-25 15:57:48', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1052', '1', '55', 'data', '1025', '2019-12-13 11:55:19', '41', '2019-06-25 12:42:07', '41', '2019-06-25 12:43:13', '100004', 'data', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1053', '1052', '55', 'personen-funktionen', '1025', '2019-10-21 14:01:32', '41', '2019-06-25 12:48:33', '41', '2019-06-25 12:48:37', '0', 'person-positions', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1054', '1053', '56', 'geschaftsfuhrer', '1', '2019-06-25 12:49:52', '41', '2019-06-25 12:49:41', '41', '2019-06-25 12:49:52', '0', 'managing-director', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1055', '1053', '56', 'buchhaltung', '1', '2019-06-25 12:50:41', '41', '2019-06-25 12:50:38', '41', '2019-06-25 12:50:41', '1', 'accounting', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1069', '1048', '52', 'geschaftsfuhrung', '1', '2019-06-25 13:36:30', '41', '2019-06-25 13:32:16', '41', '2019-06-25 13:36:30', '0', 'managing-directors', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1073', '1', '58', 'news', '1', '2019-12-13 11:58:44', '41', '2019-06-25 15:45:36', '41', '2019-06-25 15:45:40', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1074', '1073', '57', 'mein-beitrag', '1', '2019-10-07 15:30:27', '41', '2019-06-25 15:57:08', '41', '2019-06-25 15:57:48', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1068', '1047', '51', 'news', '1', '2019-06-25 13:30:31', '41', '2019-06-25 13:30:28', '41', '2019-06-25 13:30:31', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1103', '1015', '2', 'for-field-179', '17', '2019-06-27 09:33:37', '41', '2019-06-27 09:33:37', '41', '2019-06-27 09:33:37', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1078', '1', '59', 'sectionheader', '1', '2019-12-13 11:58:47', '41', '2019-06-26 10:28:06', '41', '2019-06-26 10:28:09', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1163', '1053', '56', 'marketing-direktor', '1', '2019-10-07 12:18:47', '41', '2019-10-07 12:18:17', '41', '2019-10-07 12:18:17', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1079', '1', '61', 'personen', '1025', '2019-10-21 14:01:12', '41', '2019-06-26 10:54:01', '41', '2019-06-26 10:54:08', '16', 'people', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1080', '1079', '50', 'ilic', '1', '2019-12-12 14:57:28', '41', '2019-06-26 10:55:13', '41', '2019-06-26 10:56:13', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1081', '1', '62', 'login', '1029', '2019-12-13 11:55:19', '41', '2019-06-26 12:23:34', '41', '2019-06-26 12:23:39', '100006', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1082', '1', '63', 'logout', '1029', '2019-12-13 11:55:19', '41', '2019-06-26 12:25:57', '41', '2019-06-26 12:26:11', '100007', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1083', '30', '4', 'user', '1', '2019-06-26 13:27:42', '41', '2019-06-26 13:27:31', '41', '2019-06-26 13:27:42', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1104', '1103', '2', 'for-page-1035', '17', '2019-06-27 09:37:04', '41', '2019-06-27 09:37:04', '41', '2019-06-27 09:37:04', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1086', '1', '64', 'sections', '1025', '2019-12-13 11:55:19', '41', '2019-06-26 15:24:14', '41', '2019-06-26 15:26:02', '100003', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1130', '1129', '74', '1567503977-086-1', '1', '2019-12-12 14:55:50', '41', '2019-09-03 11:46:17', '41', '2019-09-03 11:46:31', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1113', '1086', '71', '2019-06-28-09-12-37', '1', '2019-10-05 13:11:50', '41', '2019-06-28 09:12:37', '41', '2019-06-28 09:15:18', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1164', '1079', '50', 'doe', '1', '2019-12-12 14:56:25', '41', '2019-10-07 12:48:50', '41', '2019-10-07 12:50:56', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1097', '1086', '65', '2019-06-26-15-55-59', '1', '2019-10-25 16:52:19', '41', '2019-06-26 15:55:59', '41', '2019-06-26 15:56:08', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1105', '1104', '68', '1561621029-6323-1', '1', '2019-10-11 11:13:39', '41', '2019-06-27 09:37:09', '41', '2019-10-08 13:23:59', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1102', '1065', '49', 'test', '1', '2019-10-26 10:55:12', '41', '2019-06-26 17:52:24', '41', '2019-06-26 17:52:35', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1128', '1015', '2', 'for-field-204', '17', '2019-09-03 11:43:22', '41', '2019-09-03 11:43:22', '41', '2019-09-03 11:43:22', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1123', '1079', '50', 'mustermann', '1', '2019-12-12 14:57:48', '41', '2019-07-30 09:54:47', '41', '2019-07-30 09:55:22', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1129', '1128', '2', 'for-page-1035', '17', '2019-09-03 11:45:56', '41', '2019-09-03 11:45:56', '41', '2019-09-03 11:45:56', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1125', '1', '49', 'aenean-massa', '1', '2019-12-13 11:58:41', '41', '2019-08-30 11:59:40', '41', '2019-08-30 12:00:25', '12', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1126', '1', '49', 'etiam-sit', '1', '2019-12-13 11:58:27', '41', '2019-08-30 12:01:51', '41', '2019-08-30 12:02:33', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1127', '1086', '66', '2019-09-02-16-30-37', '1', '2019-10-04 08:23:18', '41', '2019-09-02 16:30:37', '41', '2019-09-02 16:31:50', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1132', '1', '75', 'seitenleiste', '1025', '2019-12-13 11:55:19', '41', '2019-09-03 13:59:24', '41', '2019-09-03 13:59:36', '100001', 'aside', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1143', '1103', '2', 'for-page-1', '17', '2019-09-05 15:23:20', '41', '2019-09-05 15:23:20', '41', '2019-09-05 15:23:20', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1136', '1128', '2', 'for-page-1134', '17', '2019-09-03 15:38:49', '41', '2019-09-03 15:38:49', '41', '2019-09-03 15:38:49', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1139', '1132', '76', '2019-09-05-12-33-37', '1', '2019-09-05 12:42:14', '41', '2019-09-05 12:33:37', '41', '2019-09-05 12:42:14', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1140', '1132', '77', '2019-09-05-12-43-56', '1', '2019-09-05 12:45:21', '41', '2019-09-05 12:43:56', '41', '2019-09-05 12:45:21', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1147', '1103', '2', 'for-page-1073', '17', '2019-09-06 14:19:43', '41', '2019-09-06 14:19:43', '41', '2019-09-06 14:19:43', '3', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1141', '1132', '78', '2019-09-05-14-08-20', '1', '2019-10-04 09:17:32', '41', '2019-09-05 14:08:20', '41', '2019-09-05 14:09:30', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1148', '1103', '2', 'for-page-1065', '17', '2019-09-06 14:28:27', '41', '2019-09-06 14:28:27', '41', '2019-09-06 14:28:27', '4', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1146', '1103', '2', 'for-page-1125', '17', '2019-09-06 12:30:23', '41', '2019-09-06 12:30:23', '41', '2019-09-06 12:30:23', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1149', '1103', '2', 'for-page-1126', '17', '2019-09-06 15:06:20', '41', '2019-09-06 15:06:20', '41', '2019-09-06 15:06:20', '5', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1150', '1103', '2', 'for-page-1102', '17', '2019-09-06 15:07:16', '41', '2019-09-06 15:07:16', '41', '2019-09-06 15:07:16', '6', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1151', '1143', '68', '1569602030-4953-1', '1', '2019-10-08 16:09:34', '41', '2019-09-27 18:33:50', '41', '2019-10-08 13:10:09', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1161', '2', '2', 'personen', '1', '2019-12-12 16:14:30', '41', '2019-10-07 11:25:35', '41', '2019-10-07 11:25:35', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1222', '1184', '49', 'datenschutzerklaerung', '1', '2019-12-12 15:40:51', '41', '2019-10-23 17:25:39', '41', '2019-10-23 17:27:57', '1', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1166', '1079', '50', 'smith', '1', '2019-12-12 14:58:06', '41', '2019-10-07 12:51:54', '41', '2019-10-07 12:53:08', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1160', '2', '2', 'artikel', '1', '2019-12-12 16:14:26', '41', '2019-10-07 11:25:29', '41', '2019-10-07 11:25:29', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1162', '31', '5', 'page-lister-personen', '1', '2019-10-07 11:30:18', '41', '2019-10-07 11:30:18', '41', '2019-10-07 11:30:18', '20', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1159', '1086', '73', '2019-10-05-13-01-22', '1', '2019-10-18 12:28:18', '41', '2019-10-05 13:01:22', '41', '2019-10-05 13:02:01', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1158', '1149', '68', '1570192410-5042-1', '3073', '2019-10-04 14:33:30', '41', '2019-10-04 14:33:30', '41', NULL, '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1167', '1053', '56', 'techniker', '1', '2019-10-07 12:53:08', '41', '2019-10-07 12:53:08', '41', '2019-10-07 12:53:08', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1168', '1048', '52', 'technik', '1', '2019-10-07 13:42:20', '41', '2019-10-07 13:42:20', '41', '2019-10-07 13:42:20', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1169', '31', '5', 'page-lister-artikel', '1', '2019-10-07 14:39:18', '41', '2019-10-07 14:39:18', '41', '2019-10-07 14:39:18', '21', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1170', '1073', '57', 'software-und-voreinstellungen-koennen', '1', '2019-10-07 15:54:46', '41', '2019-10-07 15:53:33', '41', '2019-10-07 15:54:46', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1171', '1073', '57', 'manchmal-benutzt-man-worte-wie-hamburgefonts', '1', '2019-10-08 09:38:14', '41', '2019-10-08 09:36:09', '41', '2019-10-08 09:37:32', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1172', '1073', '57', 'manchmal-saetze-die-alle-buchstaben-des', '1', '2019-10-08 09:42:12', '41', '2019-10-08 09:39:46', '41', '2019-10-08 09:40:57', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1173', '1073', '57', 'oft-werden-in-typoblindtexte', '1', '2019-10-18 14:43:29', '41', '2019-10-08 09:42:53', '41', '2019-10-08 09:43:36', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1174', '1073', '57', 'the-quick-brown-fox-jumps-over', '1', '2019-10-17 17:11:52', '41', '2019-10-08 09:45:27', '41', '2019-10-08 09:46:49', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1200', '1086', '69', '2019-10-18-13-49-46', '1', '2019-10-18 13:53:49', '41', '2019-10-18 13:49:46', '41', '2019-10-18 13:50:20', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1176', '1143', '68', '1570543660-7936-1', '1', '2019-10-10 12:06:00', '41', '2019-10-08 16:07:40', '41', '2019-10-08 16:09:34', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1177', '1086', '72', '2019-10-11-11-34-09', '1', '2019-10-17 13:41:40', '41', '2019-10-11 11:34:09', '41', '2019-10-11 11:34:28', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1203', '1202', '66', '2019-10-21-14-02-15', '1', '2019-10-25 16:43:45', '41', '2019-10-21 14:02:15', '41', '2019-10-21 14:03:20', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1252', '31', '5', 'batch-child-editor', '1', '2019-10-26 11:18:43', '41', '2019-10-26 11:18:43', '41', '2019-10-26 11:18:43', '26', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1226', '1086', '69', '2019-10-25-16-30-17', '1', '2019-10-25 18:35:43', '41', '2019-10-25 16:30:17', '41', '2019-10-25 16:30:35', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1251', '31', '5', 'batcher', '1', '2019-10-26 11:18:31', '41', '2019-10-26 11:18:31', '41', '2019-10-26 11:18:31', '25', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1184', '1', '83', 'kontaktieren-sie-uns', '1', '2019-12-13 11:58:50', '41', '2019-10-15 12:36:26', '41', '2019-10-15 12:38:40', '15', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1185', '1103', '2', 'for-page-1184', '17', '2019-10-15 12:36:27', '41', '2019-10-15 12:36:27', '41', '2019-10-15 12:36:27', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1186', '1132', '76', 'adresse', '1', '2019-10-15 12:38:30', '41', '2019-10-15 12:37:49', '41', '2019-10-15 12:38:05', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1187', '1132', '77', 'oeffnungszeiten', '1', '2019-10-15 12:38:23', '41', '2019-10-15 12:38:17', '41', '2019-10-15 12:38:23', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1196', '1132', '86', 'news-kategorien', '1', '2019-10-18 10:56:33', '41', '2019-10-18 10:56:23', '41', '2019-10-18 10:56:33', '15', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1189', '1052', '84', 'submit', '1057', '2019-10-17 09:49:12', '41', '2019-10-16 15:53:44', '41', '2019-10-16 15:53:55', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1190', '1128', '2', 'for-page-1177', '17', '2019-10-17 13:35:52', '41', '2019-10-17 13:35:52', '41', '2019-10-17 13:35:52', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1192', '1132', '79', 'interessantes', '1', '2019-10-17 13:46:58', '41', '2019-10-17 13:46:19', '41', '2019-10-17 13:46:58', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1198', '1086', '87', '2019-10-18-11-44-59', '1', '2019-10-25 16:49:08', '41', '2019-10-18 11:44:59', '41', '2019-10-18 11:45:37', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1194', '1132', '85', 'neuigkeiten', '1', '2019-10-17 17:10:56', '41', '2019-10-17 16:31:41', '41', '2019-10-17 16:31:46', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1195', '1068', '52', 'events', '1', '2019-10-17 17:11:46', '41', '2019-10-17 17:11:46', '41', '2019-10-17 17:11:46', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1201', '1103', '2', 'for-page-27', '17', '2019-10-18 14:45:34', '41', '2019-10-18 14:45:34', '41', '2019-10-18 14:45:34', '11', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1202', '1', '89', 'inhaltsabschnitte', '1025', '2019-12-13 11:55:19', '41', '2019-10-21 13:23:41', '41', '2019-10-21 13:24:02', '100002', 'content-sections', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1258', '31', '5', 'changelog', '1', '2019-10-26 11:21:16', '41', '2019-10-26 11:21:16', '41', '2019-10-26 11:21:16', '29', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1205', '1202', '73', '2019-10-21-15-44-17', '1', '2019-10-25 16:41:29', '41', '2019-10-21 15:44:17', '41', '2019-10-21 15:44:54', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1256', '31', '5', 'admin-actions-restore', '1', '2019-10-26 11:19:29', '41', '2019-10-26 11:19:29', '41', '2019-10-26 11:19:29', '28', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1208', '1015', '2', 'for-field-220', '17', '2019-10-22 14:26:37', '41', '2019-10-22 14:26:37', '41', '2019-10-22 14:26:37', '2', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1209', '1208', '2', 'for-page-1184', '17', '2019-10-22 14:29:37', '41', '2019-10-22 14:29:37', '41', '2019-10-22 14:29:37', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1214', '31', '5', 'hanna-code', '1', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '22', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1213', '22', '2', 'hanna-code', '1', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '10', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1215', '31', '5', 'hanna-code-edit', '1', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '23', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1216', '31', '5', 'hanna-code-php', '1', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '41', '2019-10-23 13:27:14', '24', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1217', '30', '4', 'editor', '1', '2019-12-12 16:40:07', '41', '2019-10-23 15:59:49', '41', '2019-10-23 16:00:47', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1223', '1103', '2', 'for-page-1222', '17', '2019-10-23 17:25:39', '41', '2019-10-23 17:25:39', '41', '2019-10-23 17:25:39', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1220', '1184', '92', 'impressum', '1', '2019-12-12 15:42:51', '41', '2019-10-23 17:22:51', '41', '2019-10-23 17:24:48', '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1221', '1103', '2', 'for-page-1220', '17', '2019-10-23 17:22:51', '41', '2019-10-23 17:22:51', '41', '2019-10-23 17:22:51', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1250', '22', '2', 'batcher', '1', '2019-10-26 11:18:31', '41', '2019-10-26 11:18:31', '41', '2019-10-26 11:18:31', '11', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1255', '31', '5', 'admin-actions', '1', '2019-10-26 11:19:29', '41', '2019-10-26 11:19:29', '41', '2019-10-26 11:19:29', '27', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1257', '22', '2', 'changelog', '1', '2019-10-26 11:21:16', '41', '2019-10-26 11:21:16', '41', '2019-10-26 11:21:16', '14', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1228', '1065', '49', 'test-1', '1', '2019-10-25 18:45:52', '41', '2019-10-25 16:55:49', '41', '2019-10-25 16:56:08', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1229', '1103', '2', 'for-page-1228', '17', '2019-10-25 16:55:49', '41', '2019-10-25 16:55:49', '41', '2019-10-25 16:55:49', '11', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1231', '1132', '79', 'interessantes-1', '1', '2019-10-25 16:55:49', '41', '2019-10-25 16:55:49', '41', '2019-10-25 16:55:49', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1232', '1132', '85', 'neuigkeiten-1', '1', '2019-10-25 16:55:49', '41', '2019-10-25 16:55:49', '41', '2019-10-25 16:55:49', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1233', '1078', '49', 'test-2', '1', '2019-10-25 16:56:59', '41', '2019-10-25 16:56:32', '41', '2019-10-25 16:56:59', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1234', '1103', '2', 'for-page-1233', '17', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '12', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1235', '1202', '71', '2019-10-25-16-53-58', '1', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1236', '1132', '79', 'interessantes-2', '1', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1237', '1132', '85', 'neuigkeiten-2', '1', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '41', '2019-10-25 16:56:33', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1238', '1078', '49', 'test-3', '1', '2019-10-25 16:57:18', '41', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:18', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1239', '1103', '2', 'for-page-1238', '17', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '13', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1240', '1202', '71', '2019-10-25-16-53-59', '1', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1241', '1132', '79', 'interessantes-3', '1', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1242', '1132', '85', 'neuigkeiten-3', '1', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '41', '2019-10-25 16:57:08', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1243', '1078', '49', 'test-4', '1', '2019-10-25 16:57:38', '41', '2019-10-25 16:57:28', '41', '2019-10-25 16:57:38', '14', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1244', '1103', '2', 'for-page-1243', '17', '2019-10-25 16:57:28', '41', '2019-10-25 16:57:28', '41', '2019-10-25 16:57:28', '14', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1245', '1202', '71', '2019-10-25-16-53-60', '1', '2019-10-25 16:57:29', '41', '2019-10-25 16:57:29', '41', '2019-10-25 16:57:29', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1246', '1132', '79', 'interessantes-4', '1', '2019-10-25 16:57:29', '41', '2019-10-25 16:57:29', '41', '2019-10-25 16:57:29', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1247', '1132', '85', 'neuigkeiten-4', '1', '2019-10-25 16:57:29', '41', '2019-10-25 16:57:29', '41', '2019-10-25 16:57:29', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1253', '22', '2', 'children-csv-export', '1024', '2019-10-26 11:18:43', '41', '2019-10-26 11:18:43', '41', '2019-10-26 11:18:43', '12', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1254', '22', '2', 'admin-actions', '1', '2019-10-26 11:19:28', '41', '2019-10-26 11:19:28', '41', '2019-10-26 11:19:28', '13', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1249', '1150', '68', '1572080153-5045-1', '3073', '2019-10-26 10:55:53', '41', '2019-10-26 10:55:53', '41', NULL, '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1262', '1079', '50', 'untitled-0191212163821', '2561', '2019-12-12 16:38:21', '1261', '2019-12-12 16:38:21', '1261', NULL, '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1034`, `status1034`) VALUES('1263', '1104', '68', '1576165111-8556-1', '3073', '2019-12-12 16:38:31', '1261', '2019-12-12 16:38:31', '1261', NULL, '1', NULL, '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1083', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1217', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1162', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1169', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1214', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1215', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1216', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1251', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1252', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1255', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1256', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1258', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1105', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1263', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1151', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1176', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1158', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1249', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1130', '2', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1192', '75', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1231', '75', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1236', '75', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1241', '75', '2019-12-12 16:44:50');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1246', '75', '2019-12-12 16:44:50');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1015', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '22');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1048', '1047');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1053', '1052');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1068', '1047');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1103', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1103', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1104', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1104', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1104', '1103');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1128', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1128', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1129', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1129', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1129', '1128');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1143', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1143', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1143', '1103');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1149', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1149', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1149', '1103');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1150', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1150', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1150', '1103');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1185', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1185', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1185', '1103');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1190', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1190', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1190', '1128');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1208', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1208', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1209', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1209', '1015');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1209', '1208');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `process_changelog`;
CREATE TABLE `process_changelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(128) DEFAULT NULL,
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(10) unsigned NOT NULL DEFAULT '0',
  `operation` varchar(128) NOT NULL,
  `data` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1545420649,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'item-person', '104', '0', '0', '{\"useRoles\":1,\"editRoles\":[1217],\"createRoles\":[1217],\"noChildren\":1,\"parentTemplates\":[61],\"slashUrls\":1,\"pageClass\":\"Person\",\"pageLabelField\":\"fa-user-circle title\",\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Person\",\"tags\":\"items\",\"modified\":1571840275,\"ns\":\"Processwire\",\"label1034\":\"Person\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1561121758}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'fieldset_field_115', '98', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1561196484}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'app-settings', '99', '8', '0', '{\"useRoles\":1,\"editRoles\":[1217],\"rolesPermissions\":{\"1217\":[\"-1026\",\"-1027\",\"-1021\",\"-34\",\"-35\",\"-50\",\"-51\"]},\"noInherit\":1,\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Globale Einstellungen\",\"tags\":\"backend\",\"modified\":1571841147,\"label1034\":\"Global Settings\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'fieldset_field_129', '100', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1561211701}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'fieldset_field_125', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1561212300}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'page-landing', '102', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"rolesPermissions\":{\"1217\":[\"-51\",\"-35\",\"-34\",\"-1026\",\"-1021\"]},\"noInherit\":1,\"sortfield\":\"sort\",\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-globe title\",\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"label\":\"Startseite\",\"tags\":\"page\",\"modified\":1571841245,\"ns\":\"Processwire\",\"label1034\":\"Landing page\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'page-default', '103', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"slashUrls\":1,\"altFilename\":\"_blank\",\"pageLabelField\":\"fa-file-o title\",\"compile\":3,\"label\":\"Standard\",\"tags\":\"page\",\"modified\":1571902040,\"ns\":\"Processwire\",\"label1034\":\"Default\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'categories', '105', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"noInherit\":1,\"sortfield\":\"sort\",\"childTemplates\":[51,52],\"parentTemplates\":[51],\"slashUrls\":1,\"altFilename\":\"_blank\",\"pageLabelField\":\"fa-tags title\",\"compile\":3,\"label\":\"Kategorien\",\"tags\":\"categories\",\"modified\":1571839850,\"ns\":\"Processwire\",\"label1395\":\"Categories\",\"label1034\":\"Categories\",\"smartyRendering\":1,\"roles\":[1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'category', '106', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[51],\"slashUrls\":1,\"altFilename\":\"_blank\",\"pageLabelField\":\"fa-tag title\",\"compile\":3,\"label\":\"Kategorie\",\"tags\":\"categories\",\"modified\":1571839882,\"ns\":\"Processwire\",\"label1395\":\"Category\",\"label1034\":\"Category\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'redirect', '107', '0', '0', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-share title\",\"compile\":3,\"label\":\"Weiterleitung\",\"tags\":\"default\",\"modified\":1571840324,\"ns\":\"ProcessWire\",\"label1034\":\"Redirect\",\"smartyRendering\":1,\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'search', '108', '0', '0', '{\"useRoles\":1,\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-search title\",\"noMove\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Suche\",\"tags\":\"default\",\"modified\":1571840352,\"ns\":\"ProcessWire\",\"label1034\":\"Search\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'data', '109', '0', '0', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"childTemplates\":[55,56,61,84],\"parentTemplates\":[55],\"slashUrls\":1,\"altFilename\":\"_blank\",\"pageLabelField\":\"fa-database title\",\"noChangeTemplate\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Datens\\u00e4tze\",\"tags\":\"data\",\"modified\":1571840100,\"ns\":\"Processwire\",\"label1034\":\"Data\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'data-general', '110', '0', '0', '{\"useRoles\":1,\"editRoles\":[1217],\"createRoles\":[1217],\"noChildren\":1,\"parentTemplates\":[55],\"slashUrls\":1,\"pageLabelField\":\"fa-codepen title\",\"noChangeTemplate\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Datensatz\",\"tags\":\"data\",\"modified\":1571840168,\"smartyRendering\":1,\"label1034\":\"Data item\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'page-article', '111', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[58],\"slashUrls\":1,\"pageLabelField\":\"fa-newspaper-o title\",\"noMove\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Artikel\",\"tags\":\"page\",\"modified\":1571840435,\"ns\":\"Processwire\",\"label1034\":\"Article\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'page-articles', '112', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"sortfield\":110,\"noParents\":1,\"childTemplates\":[57],\"allowPageNum\":1,\"urlSegments\":[\"regex:^category\\/[\\\\w.]+$\",\"regex:^categories\\/[\\\\w.]+$\"],\"slashUrls\":1,\"slashPageNum\":1,\"slashUrlSegments\":1,\"pageLabelField\":\"fa-newspaper-o title\",\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Artikel Zusammefassung\",\"tags\":\"page\",\"modified\":1571840527,\"ns\":\"Processwire\",\"label1034\":\"Articles summary\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'sectionheader', '113', '0', '0', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"slashUrls\":1,\"altFilename\":\"_blank\",\"pageLabelField\":\"fa-chevron-right title\",\"compile\":3,\"label\":\"Abschnitts\\u00fcberschrift\",\"tags\":\"default\",\"modified\":1571840394,\"ns\":\"Processwire\",\"label1034\":\"Sectionheader\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'fieldset_field_168', '114', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1561537865}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('83', 'page-contact', '137', '0', '0', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-open-o title\",\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Kontaktformular\",\"tags\":\"page\",\"modified\":1576158763,\"ns\":\"Processwire\",\"label1034\":\"Contact form\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('61', 'data-people', '115', '0', '0', '{\"useRoles\":1,\"addRoles\":[1217],\"noParents\":-1,\"childTemplates\":[50],\"slashUrls\":1,\"childNameFormat\":\"title\",\"pageLabelField\":\"fa-users title\",\"noMove\":1,\"noChangeTemplate\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Personen\",\"tags\":\"data\",\"modified\":1571840222,\"tabChildren\":\"Personen\",\"label1034\":\"People\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('62', 'login', '116', '0', '0', '{\"useRoles\":1,\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-unlock-alt title\",\"noMove\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Login\",\"tags\":\"security\",\"modified\":1576165473,\"ns\":\"Processwire\",\"label1034\":\"Login\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('63', 'logout', '117', '0', '0', '{\"useRoles\":1,\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-lock title\",\"noMove\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Logout\",\"tags\":\"security\",\"modified\":1576165490,\"ns\":\"ProcessWire\",\"label1034\":\"Logout\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('64', 'section', '118', '0', '0', '{\"useRoles\":1,\"addRoles\":[1217],\"noInherit\":1,\"sortfield\":\"sort\",\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_section\",\"childNameFormat\":\"Y\\/m\\/d H:i:s\",\"pageLabelField\":\"fa-bars title\",\"noMove\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Seitenabschnitt\",\"tags\":\"sections\",\"modified\":1576165281,\"tabChildren\":\"Abschnitte\",\"ns\":\"Processwire\",\"label1034\":\"Page section\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('65', 'section-pages', '119', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[64,89],\"slashUrls\":1,\"altFilename\":\"_section\",\"pageLabelField\":\"fa-th title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Seitenbl\\u00f6cke\",\"tags\":\"sections\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Page blocks\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('66', 'section-content', '120', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[64,89],\"slashUrls\":1,\"altFilename\":\"_section\",\"pageLabelField\":\"fa-pencil-square-o title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Inhalt\",\"tags\":\"sections\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Content\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('67', 'fieldset_field_172', '121', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1561559529}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('68', 'repeater_hero_items', '122', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1561620817}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('69', 'section-articles', '123', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[64,89],\"slashUrls\":1,\"altFilename\":\"_section\",\"pageLabelField\":\"fa-newspaper-o title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Artikel \\u00dcbersicht\",\"tags\":\"sections\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Articles summary\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('80', 'page-styleguide', '134', '0', '0', '{\"slashUrls\":1,\"altFilename\":\"_blank\",\"compile\":3,\"label\":\"Styleguide\",\"modified\":1570169696,\"ns\":\"Processwire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('71', 'section-images', '125', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[64,89],\"slashUrls\":1,\"altFilename\":\"_section\",\"pageLabelField\":\"fa-camera-retro title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Galerie\",\"tags\":\"sections\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Gallery\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('72', 'section-map', '126', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[64],\"slashUrls\":1,\"altFilename\":\"_section\",\"pageLabelField\":\"fa-map title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Google Karte\",\"tags\":\"sections\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Google Map\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('73', 'section-people', '127', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"parentTemplates\":[89,64],\"slashUrls\":1,\"altFilename\":\"_section\",\"pageLabelField\":\"fa-users title\",\"compile\":3,\"label\":\"Personen\",\"tags\":\"sections\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"People\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('74', 'repeater_settings_locations', '128', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterMatrixPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1567503802}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('75', 'block', '129', '0', '0', '{\"useRoles\":1,\"addRoles\":[1217],\"sortfield\":\"sort\",\"noParents\":-1,\"childTemplates\":[76,77,78,79,85,86],\"slashUrls\":1,\"altFilename\":\"_block\",\"childNameFormat\":\"Y\\/m\\/d H:i:s\",\"pageLabelField\":\"fa-bars title\",\"noMove\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Seitenleiste\",\"tags\":\"blocks\",\"modified\":1576165255,\"tabChildren\":\"Abschnitte\",\"ns\":\"Processwire\",\"label1034\":\"Aside\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('76', 'block-address', '130', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noChildren\":1,\"parentTemplates\":[75],\"slashUrls\":1,\"altFilename\":\"_block\",\"pageLabelField\":\"fa-map-marker title\",\"noMove\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Adresse\",\"tags\":\"blocks\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Address\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('77', 'block-business-hours', '131', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noChildren\":1,\"parentTemplates\":[75],\"slashUrls\":1,\"altFilename\":\"_block\",\"pageLabelField\":\"fa-clock-o title\",\"noMove\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"\\u00d6ffnungszeiten\",\"tags\":\"blocks\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Business hours\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('78', 'block-general', '132', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noChildren\":1,\"parentTemplates\":[75],\"slashUrls\":1,\"altFilename\":\"_block\",\"pageLabelField\":\"fa-pencil-square-o title\",\"noMove\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Allgemein\",\"tags\":\"blocks\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"General\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('79', 'block-pages', '133', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[75],\"slashUrls\":1,\"altFilename\":\"_block\",\"pageLabelField\":\"fa-file-o title\",\"noMove\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Seiten-Links\",\"tags\":\"blocks\",\"modified\":1571388963,\"ns\":\"Processwire\",\"label1034\":\"Page links\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('81', 'fieldset_field_211', '135', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1570192972}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('82', 'fieldset_field_213', '136', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1570195067}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('84', 'ajax-form', '138', '0', '0', '{\"useRoles\":1,\"noChildren\":1,\"noParents\":1,\"slashUrls\":0,\"altFilename\":\"_form\",\"pageLabelField\":\"fa-envelope title\",\"noLang\":1,\"compile\":3,\"label\":\"Ajax Form\",\"tags\":\"data\",\"modified\":1576158246,\"contentType\":\"json\",\"ns\":\"Processwire\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('85', 'block-articles', '139', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noChildren\":1,\"parentTemplates\":[75],\"slashUrls\":1,\"altFilename\":\"_block\",\"pageLabelField\":\"fa-newspaper-o title\",\"noMove\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Artikel Liste\",\"tags\":\"blocks\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Article list\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('86', 'block-article-categories', '140', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noChildren\":1,\"parentTemplates\":[75],\"slashUrls\":1,\"altFilename\":\"_block\",\"pageLabelField\":\"fa-tags title\",\"noMove\":1,\"noShortcut\":1,\"compile\":3,\"label\":\"Artikel Kategorien\",\"tags\":\"blocks\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Article categories\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('87', 'section-text-blocks', '141', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"createRoles\":[1217],\"noInherit\":1,\"noChildren\":1,\"parentTemplates\":[64,89],\"slashUrls\":1,\"altFilename\":\"_section\",\"pageLabelField\":\"fa-align-justify title\",\"noShortcut\":1,\"compile\":3,\"label\":\"Text Bl\\u00f6cke\",\"tags\":\"sections\",\"modified\":1576165207,\"ns\":\"Processwire\",\"label1034\":\"Text blocks\",\"roles\":[37,1083,1217]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('89', 'partial', '143', '0', '0', '{\"useRoles\":1,\"addRoles\":[1217],\"noInherit\":1,\"sortfield\":\"sort\",\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_section\",\"childNameFormat\":\"Y\\/m\\/d H:i:s\",\"pageLabelField\":\"fa-bars title\",\"noMove\":1,\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Inhaltsabschnitt\",\"tags\":\"sections\",\"modified\":1576165330,\"tabChildren\":\"Abschnitte\",\"ns\":\"Processwire\",\"label1034\":\"Content partial\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('90', 'repeater_option_form_recipients', '144', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1571747197}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('92', 'page-imprint', '146', '0', '600', '{\"useRoles\":1,\"editRoles\":[1217],\"addRoles\":[1217],\"rolesPermissions\":{\"1217\":[\"-51\",\"-34\",\"-1026\",\"-1027\",\"-1021\"]},\"noInherit\":1,\"noParents\":-1,\"slashUrls\":1,\"altFilename\":\"_blank\",\"pageLabelField\":\"fa-info-circle title\",\"noChangeTemplate\":1,\"compile\":3,\"label\":\"Impressum\",\"tags\":\"page\",\"modified\":1571905362,\"ns\":\"Processwire\",\"label1034\":\"Imprint\",\"roles\":[37,1083,1217]}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":126,"numCreateTables":133,"numInserts":2601,"numSeconds":0}
