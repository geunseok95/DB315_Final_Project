-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: coronavirus
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `name` varchar(80) NOT NULL,
  `numOfCases` int(11) DEFAULT NULL,
  `numOfDeaths` int(11) DEFAULT NULL,
  `numOfRecovered` int(11) DEFAULT NULL,
  `numOfTests` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('Afghanistan',714,23,43,1000),('Albania',475,24,251,4558),('Algeria',2070,326,708,3359),('Andorra',659,31,169,1673),('Angola',19,2,5,50),('Anguilla',3,0,1,50),('Antigua and Barbuda',23,2,3,73),('Argentina',2432,105,596,24374),('Armenia',1111,17,297,9095),('Aruba',92,0,39,1198),('Australia',6416,61,3686,371377),('Austria',14234,384,8098,156801),('Azerbaijan',1197,13,404,75397),('Bahamas',49,8,6,100),('Bahrain',1528,7,663,72647),('Bangladesh',1012,46,49,14868),('Barbados',73,5,15,864),('Belarus',3281,33,203,76198),('Belgium',31119,4157,7107,128132),('Belize',18,2,0,567),('Benin',35,1,18,50),('Bermuda',57,5,30,416),('Bhutan',5,0,2,1166),('Bolivia',397,28,7,2185),('Bonaire Sint Eustatius and Saba',4,0,0,10),('Bosnia and Herzegovina',1073,39,253,13339),('Botswana',13,1,0,3115),('Brazil',25262,1532,14026,62985),('British Virgin Islands',3,0,2,50),('Brunei',136,1,108,10579),('Bulgaria',713,35,105,18502),('Burkina Faso',528,30,177,100),('Burundi',5,1,2,30),('Cambodia',122,0,96,5768),('Cameroon',855,17,165,1500),('Canada',27046,903,8937,450717),('Cape Verde',11,1,1,50),('Cayman Islands',54,1,6,580),('Central African Republic',11,0,4,50),('Chad',23,0,2,50),('Chile',7917,92,2937,91873),('China',83352,3346,77816,200000),('Colombia',2979,127,354,45423),('Congo',74,5,11,311),('Costa Rica',618,3,67,9089),('Cote dIvoire',626,6,65,100),('Croatia',1704,31,473,19256),('Cuba',766,21,151,20451),('Curacao',14,1,10,230),('Cyprus',695,17,65,17923),('Czech Republic',6141,161,819,137672),('Democratic Republic of Congo',254,21,5,500),('Denmark',6511,299,2748,77712),('Djibouti',363,2,71,5936),('Dominican Republic',3286,183,208,9275),('Ecuador',7603,355,780,26093),('Egypt',2350,178,589,25000),('El Salvador',159,6,30,7785),('Equatorial Guinea',41,0,4,854),('Eritrea',35,0,0,75),('Estonia',1373,31,117,33967),('Ethiopia',82,3,15,4988),('Faeroe Islands',184,0,166,5677),('Falkland Islands',11,0,1,56),('Fiji',16,0,0,87),('Finland',3161,64,300,48828),('France',103573,15729,30955,333807),('French Polynesia',55,0,5,100),('Gabon',75,1,4,153),('Gambia',9,1,2,281),('Georgia',300,3,71,5027),('Germany',127584,3254,72600,1728357),('Ghana',636,8,17,44421),('Gibraltar',129,4,104,1649),('Greece',2170,101,269,50771),('Greenland',11,0,11,912),('Grenada',14,0,5,92),('Guam',135,5,2,563),('Guatemala',180,5,19,1134),('Guernsey',223,7,56,532),('Guinea',363,0,31,578),('Guinea-Bissau',40,0,5,1500),('Guyana',48,6,8,213),('Haiti',40,3,5,365),('Honduras',419,31,9,1600),('Hungary',1579,134,192,37326),('Iceland',1720,8,1077,37286),('India',11438,377,1432,244893),('Indonesia',4839,459,446,36000),('Iran',74877,4683,49933,299204),('Iraq',1400,78,812,46135),('Ireland',11479,406,77,90646),('Isle of Man',242,2,151,2175),('Israel',12046,123,2563,117339),('Italy',162488,21069,38092,1117404),('Jamaica',105,5,21,1290),('Japan',8100,119,853,89551),('Jersey',217,4,36,780),('Jordan',397,7,250,20500),('Kazakhstan',1267,14,240,81359),('Kenya',216,9,53,9630),('Kosovo',387,8,5,658),('Kuwait',1355,3,206,789),('Kyrgyzstan',449,5,78,26147),('Laos',19,0,1,1235),('Latvia',657,5,44,29896),('Lebanon',641,21,85,17260),('Liberia',59,6,4,563),('Libya',35,1,9,570),('Liechtenstein',81,1,55,900),('Lithuania',1070,24,138,44677),('Luxembourg',3307,67,526,30723),('Macedonia',908,44,100,7869),('Madagascar',108,0,29,365),('Malawi',16,2,0,343),('Malaysia',4987,82,2647,87183),('Maldives',21,0,16,2899),('Mali',144,13,34,333),('Malta',393,3,44,20139),('Mauritania',7,1,2,593),('Mauritius',324,9,65,8279),('Mexico',5399,406,2125,40091),('Moldova',1934,40,171,6271),('Monaco',93,2,12,200),('Mongolia',30,0,5,1000),('Montenegro',283,4,55,3874),('Montserrat',11,0,1,36),('Morocco',1888,126,229,10392),('Mozambique',28,0,2,793),('Myanmar',74,4,2,2836),('Namibia',16,0,3,362),('Nepal',16,0,1,6299),('Netherlands',27419,2945,250,134972),('New Caledonia',18,0,1,2608),('New Zealand',1078,9,728,66499),('Nicaragua',12,1,4,87),('Niger',570,14,90,4427),('Nigeria',373,11,99,5000),('Northern Mariana Islands',13,2,5,58),('Norway',6566,127,32,130216),('Oman',910,4,131,5689),('Pakistan',5988,107,1446,73439),('Palestine',287,2,62,17329),('Panama',3574,95,72,16053),('Papua New Guinea',2,0,0,72),('Paraguay',161,8,23,3888),('Peru',10303,230,3108,109385),('Philippines',5223,335,353,45486),('Poland',7202,263,668,156493),('Portugal',17448,567,383,191680),('Puerto Rico',923,45,320,4230),('Qatar',3428,7,406,54484),('Romania',6879,344,1217,74827),('Russia',21102,170,1986,1517992),('Rwanda',134,0,54,6237),('Saint Kitts and Nevis',14,0,7,234),('Saint Lucia',15,0,11,319),('Saint Vincent and the Grenadines',12,0,7,563),('San Marino',372,36,53,846),('Sao Tome and Principe',4,0,0,19),('Saudi Arabia',5369,73,931,150000),('Senegal',299,2,190,789),('Serbia',4054,84,400,26278),('Seychelles',11,0,5,89),('Sierra Leone',11,0,5,88),('Singapore',3252,10,652,72680),('Sint Maarten (Dutch part)',52,9,5,157),('Slovakia',835,2,151,31491),('Slovenia',1220,56,165,37114),('Somalia',60,2,2,678),('South Africa',2415,27,410,90515),('South Korea',10591,225,7616,534552),('South Sudan',4,0,2,90),('Spain',172541,18056,70853,600000),('Sri Lanka',233,7,63,4768),('Sudan',32,5,4,89),('Suriname',10,1,6,65),('Swaziland',15,0,5,45),('Sweden',11445,1033,381,74600),('Switzerland',25753,900,15400,199000),('Syria',29,2,5,87),('Taiwan',395,6,137,49748),('Tanzania',53,3,11,153),('Thailand',2643,43,1497,100498),('Timor',6,0,1,50),('Togo',77,3,35,3036),('Trinidad and Tobago',113,8,19,1282),('Tunisia',747,34,43,13137),('Turkey',65111,1403,5674,477716),('Turks and Caicos Islands',10,1,6,71),('Uganda',55,0,12,6661),('Ukraine',3372,98,143,39084),('United Arab Emirates',4933,28,1034,767000),('United Kingdom',93873,12107,78950,398916),('United States',637196,27866,47942,3207917),('Uruguay',533,8,260,9929),('Uzbekistan',1165,4,107,70000),('Vatican',8,0,2,64),('Venezuela',193,9,111,225009),('Vietnam',274,0,171,135938),('Yemen',1,0,0,89),('Zambia',45,2,30,1696),('Zimbabwe',17,3,1,665);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  PRIMARY KEY (`hid`),
  KEY `hospital_ibfk_1` (`country_name`),
  CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`country_name`) REFERENCES `country` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=804 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (100,'Mayo Clinic','United States'),(101,'Cleveland Clinic','United States'),(102,'John Hopkins','United States'),(103,'Maccachusetts General','United States'),(104,'USCF','United States'),(105,'University of Michigan','United States'),(106,'Ronald Regan','United States'),(107,'New York - Presbyterian','United States'),(108,'Stanford','United States'),(109,'Rush','United States'),(110,'Duke University','United States'),(111,'Mount Sinai','United States'),(112,'NYU Langone','United States'),(113,'UPMC','United States'),(114,'Northwestern','United States'),(200,'University of Tokyo','Japan'),(201,'St. Lukes','Japan'),(202,'Kurashiki Central','Japan'),(203,'Kyoto University','Japan'),(300,'Tongji ','China'),(301,'Peking','China'),(302,'Xijing','China'),(303,'General Hospital','China'),(304,'West China Hospital','China'),(400,'Institut','Belgium'),(401,'Queen Astrid','Belgium'),(402,'Hospital Brugmann','Belgium'),(500,'German Heart','Germany'),(501,'Winsen','Germany'),(502,'German Red Cross','Germany'),(503,'Hospital Martha','Germany'),(600,'Cam Hospital','Italy'),(601,'University Hospital Meyer','Italy'),(602,'Clinca Ars Biomedica','Italy'),(603,'San Giovanni','Italy'),(700,'Terre Haute','Brazil'),(701,'Banfield','Brazil'),(702,'Greene County','Brazil'),(703,'Hospital Vital Brasil','Brazil'),(800,'Vall dHebron','Spain'),(801,'Naval Hospital','Spain'),(802,'Hospital Ceram Marbella','Spain'),(803,'Hospital Sant Joan','Spain');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT 'John',
  `age` int(11) NOT NULL DEFAULT '50',
  `quarantine_days` int(11) NOT NULL DEFAULT '14',
  `country_name` varchar(30) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `Country_name` (`country_name`),
  KEY `poeple_ibfk_2` (`hospital_id`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`country_name`) REFERENCES `country` (`name`),
  CONSTRAINT `poeple_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=1199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1000,'George',35,14,'Japan',200),(1001,'Adam',86,14,'Japan',203),(1002,'Tiffany',78,14,'Japan',202),(1003,'Ray',42,14,'Japan',202),(1004,'Rachel',68,14,'Japan',201),(1005,'Josephine',22,14,'Japan',200),(1006,'Abu',41,14,'Japan',201),(1007,'Salman',35,14,'Japan',202),(1008,'Faizan',15,8,'Japan',200),(1009,'Geun',23,6,'Japan',200),(1010,'Samad',45,20,'Japan',201),(1011,'Jessica',65,14,'Japan',200),(1012,'Brianna',18,13,'Japan',203),(1013,'Ahmed',19,12,'Japan',200),(1014,'Rooha',20,18,'Japan',202),(1015,'Drake',31,14,'Japan',203),(1016,'Paige',32,14,'Japan',201),(1017,'Chris',36,14,'Japan',200),(1018,'Ulla',40,14,'Japan',201),(1019,'Charlie',44,14,'Japan',203),(1020,'Ku',48,14,'Japan',203),(1021,'Ryan',52,14,'Japan',201),(1022,'Linda',56,14,'Japan',200),(1023,'Snow',60,14,'China',304),(1024,'Amirah',64,14,'China',301),(1025,'Kyle',68,7,'China',303),(1026,'Quentin',22,9,'China',300),(1027,'Bre',25,8,'China',302),(1028,'Liam',27,6,'China',304),(1029,'Noah',28,20,'China',302),(1030,'William',31,14,'China',304),(1031,'James',34,13,'China',301),(1032,'Oliver',37,12,'China',302),(1033,'Ben',40,18,'China',304),(1034,'Eli',43,14,'China',302),(1035,'Lucas',46,14,'China',301),(1036,'Mason',49,14,'China',304),(1037,'Logan',52,14,'Belgium',402),(1038,'Emma',55,14,'Belgium',400),(1039,'Olivia',58,25,'Belgium',401),(1040,'Ava',61,20,'Belgium',401),(1041,'Isabella',64,19,'Belgium',401),(1042,'Sophia',67,10,'Belgium',402),(1043,'Charlotte',70,11,'Belgium',400),(1044,'Mia',29,13,'Belgium',402),(1045,'Amelia',32,7,'Belgium',402),(1046,'Harper',35,30,'Belgium',400),(1047,'Eve',38,14,'Belgium',400),(1048,'Colin',41,14,'Belgium',402),(1049,'Andrea',44,14,'United States',100),(1050,'Gavin',47,14,'United States',101),(1051,'Victor',50,14,'United States',102),(1052,'Julia',53,20,'United States',102),(1053,'Tina',56,8,'United States',103),(1054,'Anna',59,6,'United States',104),(1055,'Anne',62,5,'United States',105),(1056,'Billy',65,4,'United States',106),(1057,'Marysia',68,7,'United States',107),(1058,'Anthony',71,9,'United States',108),(1059,'Tony',16,11,'United States',109),(1060,'Jack',19,13,'United States',109),(1061,'Paul',22,15,'United States',110),(1062,'Gael',25,17,'United States',111),(1063,'Perry',28,14,'United States',112),(1064,'Nikki',31,14,'United States',113),(1065,'Patricia',34,14,'United States',114),(1066,'Lee',37,14,'United States',106),(1067,'Jackie',40,12,'United States',107),(1068,'David',43,18,'United States',108),(1069,'Hugh',46,14,'United States',109),(1070,'Dorothy',49,14,'United States',109),(1071,'Julia',52,14,'United States',110),(1072,'Bethan',55,14,'United States',111),(1073,'Drew',58,14,'United States',112),(1074,'Pete',61,19,'United States',113),(1075,'Locky',64,5,'United States',114),(1076,'Eddie',25,2,'United States',102),(1077,'Susan',35,4,'United States',102),(1078,'Susie',45,6,'United States',103),(1079,'Vincent',55,8,'United States',104),(1080,'Elise',65,10,'United States',105),(1081,'Nicola',75,12,'United States',106),(1082,'Suse',85,14,'United States',111),(1083,'Steve',12,14,'United States',113),(1084,'Steven',22,14,'United States',100),(1085,'Lorraine',23,14,'United States',101),(1086,'Jill',24,14,'United States',100),(1087,'Cedric',65,28,'United States',112),(1088,'Lyn',55,10,'United States',110),(1089,'Torsten',38,12,'United States',111),(1090,'Tracy',39,16,'United States',112),(1091,'Oscar',34,18,'United States',113),(1092,'Pae',36,13,'United States',114),(1093,'Juan',40,7,'United States',106),(1094,'Ulf',76,9,'United States',107),(1095,'Ghislaine',27,8,'United States',108),(1096,'Kathy',23,6,'United States',109),(1097,'Philippa',24,20,'United States',109),(1098,'Neil',65,14,'United States',110),(1099,'Marysia',55,13,'United States',111),(1100,'Vibeke',38,12,'United States',112),(1101,'Dugald',39,18,'United States',113),(1102,'Gordon',34,14,'United States',114),(1103,'Cccile',36,14,'United States',108),(1104,'Annet',15,14,'United States',109),(1105,'Thierry',23,13,'United States',109),(1106,'Alan',45,12,'United States',110),(1107,'Catsou',65,18,'United States',111),(1108,'Ursula',18,5,'United States',112),(1109,'Vong',19,7,'United States',102),(1110,'Weibke',20,9,'United States',103),(1111,'Thierry',31,8,'United States',108),(1112,'Annie',32,6,'United States',109),(1113,'Guy',36,20,'United States',109),(1114,'Yoshiko',40,14,'United States',113),(1115,'Hannah',44,13,'United States',114),(1116,'Valerie',48,12,'United States',112),(1117,'Hazel',52,18,'Germany',500),(1118,'Cornelia',56,14,'Germany',501),(1119,'Judy',60,14,'Germany',502),(1120,'Matthew',23,13,'Germany',503),(1121,'Matthias',33,12,'Germany',501),(1122,'Matt',43,18,'Germany',501),(1123,'Dylan',53,17,'Germany',503),(1124,'Dillon',63,19,'Germany',503),(1125,'Patty',73,20,'Germany',502),(1126,'Philipp',83,14,'Germany',501),(1127,'Phillip',44,14,'Germany',503),(1128,'Ian',54,14,'Germany',501),(1129,'Chiza',64,14,'Germany',502),(1130,'Thomas',74,14,'Germany',503),(1131,'Ina',19,21,'Germany',503),(1132,'Rimsha',20,30,'Germany',502),(1133,'Rosie',31,34,'Germany',503),(1134,'Fiza',32,14,'Germany',502),(1135,'Penny',36,14,'Germany',502),(1136,'Cliff',40,14,'Germany',502),(1137,'Randy',44,14,'Germany',502),(1138,'Betsy',48,14,'Germany',503),(1139,'Erika',52,8,'Germany',503),(1140,'Marty',56,13,'Germany',501),(1141,'Ophelia',60,12,'Germany',503),(1142,'Virginia',23,30,'Germany',503),(1143,'Wanda',33,32,'Germany',503),(1144,'Teresa',43,29,'Germany',501),(1145,'Henri',53,15,'Germany',503),(1146,'Claudette',9,16,'Germany',501),(1147,'Odette',13,14,'Germany',501),(1148,'Joaquin',17,14,'Germany',503),(1149,'Mindy',21,14,'Germany',501),(1150,'Rose',25,14,'Italy',600),(1151,'Danielle',29,14,'Italy',602),(1152,'Earl',33,14,'Italy',601),(1153,'Fiona',37,8,'Italy',603),(1154,'Hermine',41,8,'Italy',600),(1155,'Otto',45,8,'Italy',600),(1156,'Jax',49,7,'Italy',602),(1157,'Walter',53,7,'Italy',601),(1158,'Whitney',57,6,'Italy',602),(1159,'Wilfred',61,4,'Italy',600),(1160,'Vicky',65,8,'Italy',602),(1161,'Teddy',12,9,'Italy',601),(1162,'Paulette',18,10,'Italy',603),(1163,'Marco',24,14,'Italy',600),(1164,'Gonzalo',30,14,'Italy',603),(1165,'Fay',36,14,'Italy',603),(1166,'Edward',42,14,'Italy',600),(1167,'Critobal',48,14,'Italy',602),(1168,'Arthur',54,4,'Italy',601),(1169,'Chantal',60,4,'Italy',601),(1170,'Dorian',66,5,'Italy',603),(1171,'Erin',72,8,'Italy',603),(1172,'Aaron',78,11,'Italy',601),(1173,'Fernand',84,13,'Italy',603),(1174,'Gabrielle',90,16,'Italy',601),(1175,'Humberto',14,15,'Italy',601),(1176,'Imelda',16,12,'Brazil',700),(1177,'Jerry',18,9,'Brazil',702),(1178,'Lorenzo',20,7,'Brazil',701),(1179,'Nestor',22,6,'Brazil',703),(1180,'Olga',24,19,'Brazil',702),(1181,'Rebekah',26,14,'Brazil',703),(1182,'Sebastian',28,14,'Brazil',700),(1183,'Tanya',30,14,'Brazil',702),(1184,'Van',32,14,'Brazil',700),(1185,'Rafael',34,14,'Brazil',702),(1186,'Nadine',36,23,'Brazil',700),(1187,'Leslie',38,12,'Brazil',702),(1188,'Kirk',40,14,'Brazil',700),(1189,'Joyce',42,16,'Spain',800),(1190,'Florence',44,18,'Spain',802),(1191,'Deb',46,20,'Spain',801),(1192,'Beryl',48,12,'Spain',803),(1193,'Alberto',50,13,'Spain',802),(1194,'Aerial',52,14,'Spain',800),(1195,'Don',54,15,'Spain',800),(1196,'Franklin',56,16,'Spain',801),(1197,'Gert',58,17,'Spain',803),(1198,'Harvey',60,18,'Spain',802);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptom`
--

DROP TABLE IF EXISTS `symptom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symptom` (
  `severity` varchar(20) NOT NULL,
  `startMonth` varchar(20) NOT NULL,
  `people_id` int(11) NOT NULL,
  PRIMARY KEY (`people_id`),
  CONSTRAINT `symptom_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptom`
--

LOCK TABLES `symptom` WRITE;
/*!40000 ALTER TABLE `symptom` DISABLE KEYS */;
INSERT INTO `symptom` VALUES ('Mild','March',1000),('Moderate','February',1001),('Severe','January',1002),('Severe','April',1003),('Mild','March',1004),('Moderate','February',1005),('Moderate','January',1006),('Mild','April',1007),('Mild','March',1008),('Severe','February',1009),('Severe','January',1010),('Severe','April',1011),('Moderate','March',1012),('Mild','February',1013),('Mild','January',1014),('Mild','April',1015),('Moderate','March',1016),('Severe','March',1017),('Severe','February',1018),('Severe','January',1019),('Severe','April',1020),('Severe','March',1021),('Mild','February',1022),('Moderate','January',1023),('Severe','April',1024),('Mild','March',1025),('Moderate','March',1026),('Severe','April',1027),('Severe','April',1028),('Moderate','April',1029),('Mild','January',1030),('Mild','February',1031),('Mild','March',1032),('Moderate','April',1033),('Moderate','January',1034),('Moderate','January',1035),('Moderate','January',1036),('Severe','February',1037),('Severe','February',1038),('Severe','March',1039),('Severe','January',1040),('Moderate','February',1041),('Mild','March',1042),('Moderate','April',1043),('Severe','January',1044),('Severe','January',1045),('Severe','January',1046),('Severe','February',1047),('Mild','February',1048),('Moderate','March',1049),('Severe','January',1050),('Severe','February',1051),('Severe','March',1052),('Severe','April',1053),('Mild','January',1054),('Moderate','January',1055),('Severe','January',1056),('Severe','February',1057),('Mild','February',1058),('Mild','March',1059),('Mild','April',1060),('Moderate','April',1061),('Severe','February',1062),('Severe','February',1063),('Mild','January',1064),('Moderate','January',1065),('Moderate','April',1066),('Mild','March',1067),('Mild','February',1068),('Severe','January',1069),('Severe','April',1070),('Severe','March',1071),('Moderate','April',1072),('Mild','March',1073),('Mild','March',1074),('Mild','April',1075),('Moderate','January',1076),('Severe','March',1077),('Severe','January',1078),('Severe','February',1079),('Severe','March',1080),('Severe','April',1081),('Mild','January',1082),('Mild','January',1083),('Moderate','January',1084),('Moderate','February',1085),('Mild','February',1086),('Moderate','March',1087),('Moderate','April',1088),('Mild','April',1089),('Mild','February',1090),('Mild','February',1091),('Moderate','January',1092),('Moderate','January',1093),('Severe','April',1094),('Severe','March',1095),('Mild','February',1096),('Mild','January',1097),('Moderate','April',1098),('Moderate','March',1099),('Severe','April',1100),('Mild','March',1101),('Mild','March',1102),('Severe','April',1103),('Moderate','January',1104),('Moderate','April',1105),('Moderate','March',1106),('Mild','January',1107),('Moderate','February',1108),('Severe','February',1109),('Severe','February',1110),('Mild','January',1111),('Moderate','March',1112),('Moderate','April',1113),('Mild','March',1114),('Mild','January',1115),('Severe','February',1116),('Severe','March',1117),('Severe','April',1118),('Moderate','January',1119),('Mild','January',1120),('Mild','January',1121),('Mild','February',1122),('Moderate','February',1123),('Severe','March',1124),('Severe','April',1125),('Severe','April',1126),('Severe','February',1127),('Severe','February',1128),('Moderate','January',1129),('Moderate','January',1130),('Moderate','April',1131),('Moderate','March',1132),('Moderate','February',1133),('Moderate','January',1134),('Moderate','April',1135),('Mild','March',1136),('Mild','April',1137),('Moderate','March',1138),('Mild','March',1139),('Moderate','April',1140),('Moderate','January',1141),('Severe','March',1142),('Moderate','April',1143),('Moderate','March',1144),('Mild','March',1145),('Mild','April',1146),('Moderate','January',1147),('Severe','March',1148),('Severe','January',1149),('Mild','February',1150),('Moderate','March',1151),('Moderate','April',1152),('Mild','January',1153),('Mild','January',1154),('Severe','January',1155),('Severe','April',1156),('Severe','April',1157),('Moderate','April',1158),('Mild','January',1159),('Mild','March',1160),('Mild','March',1161),('Moderate','March',1162),('Severe','January',1163),('Severe','February',1164),('Severe','March',1165),('Severe','April',1166),('Severe','January',1167),('Mild','January',1168),('Mild','January',1169),('Moderate','February',1170),('Mild','February',1171),('Moderate','March',1172),('Mild','April',1173),('Mild','April',1174),('Mild','February',1175),('Mild','February',1176),('Moderate','January',1177),('Severe','January',1178),('Severe','April',1179),('Mild','March',1180),('Moderate','February',1181),('Moderate','January',1182),('Mild','April',1183),('Moderate','March',1184),('Severe','April',1185),('Severe','March',1186),('Mild','March',1187),('Moderate','April',1188),('Moderate','January',1189),('Mild','March',1190),('Mild','March',1191),('Severe','April',1192),('Severe','April',1193),('Severe','April',1194),('Moderate','March',1195),('Mild','March',1196),('Mild','February',1197),('Mild','February',1198);
/*!40000 ALTER TABLE `symptom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-20 23:17:30
