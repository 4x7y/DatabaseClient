# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.22)
# Database: dd
# Generation Time: 2015-05-15 07:08:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `AU_ID` varchar(22) DEFAULT NULL,
  `AU_LNAME` varchar(80) DEFAULT NULL,
  `AU_FNAME` varchar(40) DEFAULT NULL,
  `PHONE` varchar(24) DEFAULT NULL,
  `ADDRESS` varchar(80) DEFAULT NULL,
  `CITY` varchar(40) DEFAULT NULL,
  `STATE` varchar(4) DEFAULT NULL,
  `ZIP` varchar(10) DEFAULT NULL,
  `CONTRACT` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;

INSERT INTO `authors` (`AU_ID`, `AU_LNAME`, `AU_FNAME`, `PHONE`, `ADDRESS`, `CITY`, `STATE`, `ZIP`, `CONTRACT`)
VALUES
	('172-32-1176','White','Johnson','408 496-7223','10932 Bigge Rd.','Menlo Park','CA','94025',1),
	('213-46-8915','Green','Marjorie','415 986-7020','309 63rd St. #411','Oakland','CA','94618',1),
	('238-95-7766','Carson','Cheryl','415 548-7723','589 Darwin Ln.','Berkeley','CA','94705',1),
	('267-41-2394','O\'Leary','Michael','408 286-2428','22 Cleveland Av. #14','San Jose','CA','95128',1),
	('274-80-9391','Straight','Dean','415 834-2919','5420 College Av.','Oakland','CA','94609',1),
	('341-22-1782','Smith','Meander','913 843-0462','10 Mississippi Dr.','Lawrence','KS','66044',0),
	('409-56-7008','Bennet','Abraham','415 658-9932','6223 Bateman St.','Berkeley','CA','94705',1),
	('427-17-2319','Dull','Ann','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',1),
	('472-27-2349','Gringlesby','Burt','707 938-6445','PO Box 792','Covelo','CA','95428',1),
	('486-29-1786','Locksley','Charlene','415 585-4620','18 Broadway Av.','San Francisco','CA','94130',1),
	('527-72-3246','Greene','Morningstar','615 297-2723','22 Graybar House Rd.','Nashville','TN','37215',0),
	('648-92-1872','Blotchet-Halls','Reginald','503 745-6402','55 Hillsdale Bl.','Corvallis','OR','97330',1),
	('672-71-3249','Yokomoto','Akiko','415 935-4228','3 Silver Ct.','Walnut Creek','CA','94595',1),
	('712-45-1867','del Castillo','Innes','615 996-8275','2286 Cram Pl. #86','Ann Arbor','MI','48105',1),
	('722-51-5454','DeFrance','Michel','219 547-9982','3 Balding Pl.','Gary','IN','46403',1),
	('724-08-9931','Stringer','Dirk','415 843-2991','5420 Telegraph Av.','Oakland','CA','94609',0),
	('724-80-9391','MacFeather','Stearns','415 354-7128','44 Upland Hts.','Oakland','CA','94612',1),
	('756-30-7391','Karsen','Livia','415 534-9219','5720 McAuley St.','Oakland','CA','94609',1),
	('807-91-6654','Panteley','Sylvia','301 946-8853','1956 Arlington Pl.','Rockville','MD','20853',1),
	('846-92-7186','Hunter','Sheryl','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',1),
	('893-72-1158','McBadden','Heather','707 448-4982','301 Putnam','Vacaville','CA','95688',0),
	('899-46-2035','Ringer','Anne','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152',1),
	('998-72-3567','Ringer','Albert','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152',1);

/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bname
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bname`;

CREATE TABLE `bname` (
  `title` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `bname` WRITE;
/*!40000 ALTER TABLE `bname` DISABLE KEYS */;

INSERT INTO `bname` (`title`)
VALUES
	('Artificial intelligence');

/*!40000 ALTER TABLE `bname` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table c
# ------------------------------------------------------------

DROP TABLE IF EXISTS `c`;

CREATE TABLE `c` (
  `CID` char(3) NOT NULL DEFAULT '',
  `CN` char(20) DEFAULT NULL,
  `CP` char(3) DEFAULT NULL,
  `CR` int(1) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `c` WRITE;
/*!40000 ALTER TABLE `c` DISABLE KEYS */;

INSERT INTO `c` (`CID`, `CN`, `CP`, `CR`)
VALUES
	('1','Êý¾Ý¿â','5',4),
	('2','ÊýÑ§','',2),
	('3','ÐÅÏ¢ÏµÍ³','1',4),
	('4','²Ù×÷ÏµÍ³','6',3),
	('5','Êý¾Ý½á¹¹','7',4),
	('6','Êý¾Ý´¦Àí','',2),
	('7','pascalÓïÑÔ','6',4);

/*!40000 ALTER TABLE `c` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table discounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `discounts`;

CREATE TABLE `discounts` (
  `discounttype` varchar(40) NOT NULL DEFAULT '',
  `stor_id` varchar(4) DEFAULT NULL,
  `lowqty` smallint(6) DEFAULT NULL,
  `highqty` smallint(6) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;

INSERT INTO `discounts` (`discounttype`, `stor_id`, `lowqty`, `highqty`, `discount`)
VALUES
	('Initial Customer',NULL,NULL,NULL,10.5),
	('Volume Discount',NULL,100,1000,6.7),
	('Customer Discount','8042',NULL,NULL,5);

/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` varchar(9) NOT NULL DEFAULT '',
  `fname` varchar(20) NOT NULL DEFAULT '',
  `minit` char(1) DEFAULT NULL,
  `lname` varchar(30) NOT NULL DEFAULT '',
  `job_id` smallint(6) NOT NULL DEFAULT '0',
  `job_lvl` smallint(6) DEFAULT NULL,
  `pub_id` varchar(4) NOT NULL DEFAULT '',
  `hire_date` varchar(30) NOT NULL DEFAULT '',
  UNIQUE KEY `PK_emp_id` (`emp_id`),
  KEY `employee_ind` (`lname`,`fname`,`minit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;

INSERT INTO `employee` (`emp_id`, `fname`, `minit`, `lname`, `job_id`, `job_lvl`, `pub_id`, `hire_date`)
VALUES
	('A-C71970F','Aria','','Cruz',10,87,'1389','10/26/1991 12:00:00 AM'),
	('A-R89858F','Annette','','Roulet',6,152,'9999','2/21/1990 12:00:00 AM'),
	('AMD15433F','Ann','M','Devon',3,200,'9952','7/16/1991 12:00:00 AM'),
	('ARD36773F','Anabela','R','Domingues',8,100,'0877','1/27/1993 12:00:00 AM'),
	('CFH28514M','Carlos','F','Hernadez',5,211,'9999','4/21/1989 12:00:00 AM'),
	('CGS88322F','Carine','G','Schmitt',13,64,'1389','7/7/1992 12:00:00 AM'),
	('DBT39435M','Daniel','B','Tonini',11,75,'0877','1/1/1990 12:00:00 AM'),
	('DWR65030M','Diego','W','Roel',6,192,'1389','12/16/1991 12:00:00 AM'),
	('ENL44273F','Elizabeth','N','Lincoln',14,35,'0877','7/24/1990 12:00:00 AM'),
	('F-C16315M','Francisco','','Chang',4,227,'9952','11/3/1990 12:00:00 AM'),
	('GHT50241M','Gary','H','Thomas',9,170,'0736','8/9/1988 12:00:00 AM'),
	('H-B39728F','Helen','','Bennett',12,35,'0877','9/21/1989 12:00:00 AM'),
	('HAN90777M','Helvetius','A','Nagy',7,120,'9999','3/19/1993 12:00:00 AM'),
	('HAS54740M','Howard','A','Snyder',12,100,'0736','11/19/1988 12:00:00 AM'),
	('JYL26161F','Janine','Y','Labrune',5,172,'9901','5/26/1991 12:00:00 AM'),
	('KFJ64308F','Karin','F','Josephs',14,100,'0736','10/17/1992 12:00:00 AM'),
	('KJJ92907F','Karla','J','Jablonski',9,170,'9999','3/11/1994 12:00:00 AM'),
	('L-B31947F','Lesley','','Brown',7,120,'0877','2/13/1991 12:00:00 AM'),
	('LAL21447M','Laurence','A','Lebihan',5,175,'0736','6/3/1990 12:00:00 AM'),
	('M-L67958F','Maria','','Larsson',7,135,'1389','3/27/1992 12:00:00 AM'),
	('M-P91209M','Manuel','','Pereira',8,101,'9999','1/9/1989 12:00:00 AM'),
	('M-R38834F','Martine','','Rance',9,75,'0877','2/5/1992 12:00:00 AM'),
	('MAP77183M','Miguel','A','Paolino',11,112,'1389','12/7/1992 12:00:00 AM'),
	('MAS70474F','Margaret','A','Smith',9,78,'1389','9/29/1988 12:00:00 AM'),
	('MFS52347M','Martin','F','Sommer',10,165,'0736','4/13/1990 12:00:00 AM'),
	('MGK44605M','Matti','G','Karttunen',6,220,'0736','5/1/1994 12:00:00 AM'),
	('MJP25939M','Maria','J','Pontes',5,246,'1756','3/1/1989 12:00:00 AM'),
	('MMS49649F','Mary','M','Saveley',8,175,'0736','6/29/1993 12:00:00 AM'),
	('PCM98509F','Patricia','C','McKenna',11,150,'9999','8/1/1989 12:00:00 AM'),
	('PDI47470M','Palle','D','Ibsen',7,195,'0736','5/9/1993 12:00:00 AM'),
	('PHF38899M','Peter','H','Franken',10,75,'0877','5/17/1992 12:00:00 AM'),
	('PMA42628M','Paolo','M','Accorti',13,35,'0877','8/27/1992 12:00:00 AM'),
	('POK93028M','Pirkko','O','Koskitalo',10,80,'9999','11/29/1993 12:00:00 AM'),
	('PSA89086M','Pedro','S','Afonso',14,89,'1389','12/24/1990 12:00:00 AM'),
	('PSP68661F','Paula','S','Parente',8,125,'1389','1/19/1994 12:00:00 AM'),
	('PTC11962M','Philip','T','Cramer',2,215,'9952','11/11/1989 12:00:00 AM'),
	('PXH22250M','Paul','X','Henriot',5,159,'0877','8/19/1993 12:00:00 AM'),
	('R-M53550M','Roland','','Mendel',11,150,'0736','9/5/1991 12:00:00 AM'),
	('RBM23061F','Rita','B','Muller',5,198,'1622','10/9/1993 12:00:00 AM'),
	('SKO22412M','Sven','K','Ottlieb',5,150,'1389','4/5/1991 12:00:00 AM'),
	('TPO55093M','Timothy','P','O\'Rourke',13,100,'0736','6/19/1988 12:00:00 AM'),
	('VPA30890F','Victoria','P','Ashworth',6,140,'0877','9/13/1990 12:00:00 AM'),
	('Y-L77953M','Yoshi','','Latimer',12,32,'1389','6/11/1989 12:00:00 AM');

/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `job_id` smallint(6) NOT NULL DEFAULT '0',
  `job_desc` varchar(50) NOT NULL DEFAULT '',
  `min_lvl` smallint(6) NOT NULL DEFAULT '0',
  `max_lvl` smallint(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `PK__jobs__117F9D94` (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;

INSERT INTO `jobs` (`job_id`, `job_desc`, `min_lvl`, `max_lvl`)
VALUES
	(1,'New Hire - Job not specified',10,10),
	(2,'Chief Executive Officer',200,250),
	(3,'Business Operations Manager',175,225),
	(4,'Chief Financial Officier',175,250),
	(5,'Publisher',150,250),
	(6,'Managing Editor',140,225),
	(7,'Marketing Manager',120,200),
	(8,'Public Relations Manager',100,175),
	(9,'Acquisitions Manager',75,175),
	(10,'Productions Manager',75,165),
	(11,'Operations Manager',75,150),
	(12,'Editor',25,100),
	(13,'Sales Representative',25,100),
	(14,'Designer',25,100);

/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pub_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pub_info`;

CREATE TABLE `pub_info` (
  `pub_id` varchar(4) NOT NULL DEFAULT '',
  `logo` longblob,
  `pr_info` mediumtext,
  UNIQUE KEY `UPKCL_pubinfo` (`pub_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table publishers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `publishers`;

CREATE TABLE `publishers` (
  `pub_id` varchar(4) NOT NULL DEFAULT '',
  `pub_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  UNIQUE KEY `UPKCL_pubind` (`pub_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;

INSERT INTO `publishers` (`pub_id`, `pub_name`, `city`, `state`, `country`)
VALUES
	('0736','New Moon Books','Boston','MA','USA'),
	('0877','Binnet & Hardley','Washington','DC','USA'),
	('1389','Algodata Infosystems','Berkeley','CA','USA'),
	('1622','Five Lakes Publishing','Chicago','IL','USA'),
	('1756','Ramona Publishers','Dallas','TX','USA'),
	('9901','GGG&G','M?nchen',NULL,'Germany'),
	('9952','Scootney Books','New York','NY','USA'),
	('9999','Lucerne Publishing','Paris',NULL,'France');

/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roysched
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roysched`;

CREATE TABLE `roysched` (
  `title_id` varchar(6) NOT NULL DEFAULT '',
  `lorange` int(11) DEFAULT NULL,
  `hirange` int(11) DEFAULT NULL,
  `royalty` int(11) DEFAULT NULL,
  KEY `titleidind` (`title_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `roysched` WRITE;
/*!40000 ALTER TABLE `roysched` DISABLE KEYS */;

INSERT INTO `roysched` (`title_id`, `lorange`, `hirange`, `royalty`)
VALUES
	('BU1032',0,5000,10),
	('BU1032',5001,50000,12),
	('BU1111',0,4000,10),
	('BU1111',4001,8000,12),
	('BU1111',8001,10000,14),
	('BU1111',12001,16000,16),
	('BU1111',16001,20000,18),
	('BU1111',20001,24000,20),
	('BU1111',24001,28000,22),
	('BU1111',28001,50000,24),
	('BU2075',0,1000,10),
	('BU2075',1001,3000,12),
	('BU2075',3001,5000,14),
	('BU2075',5001,7000,16),
	('BU2075',7001,10000,18),
	('BU2075',10001,12000,20),
	('BU2075',12001,14000,22),
	('BU2075',14001,50000,24),
	('BU7832',0,5000,10),
	('BU7832',5001,10000,12),
	('BU7832',10001,15000,14),
	('BU7832',15001,20000,16),
	('BU7832',20001,25000,18),
	('BU7832',25001,30000,20),
	('BU7832',30001,35000,22),
	('BU7832',35001,50000,24),
	('MC2222',0,2000,10),
	('MC2222',2001,4000,12),
	('MC2222',4001,8000,14),
	('MC2222',8001,12000,16),
	('MC2222',12001,20000,18),
	('MC2222',20001,50000,20),
	('MC3021',0,1000,10),
	('MC3021',1001,2000,12),
	('MC3021',2001,4000,14),
	('MC3021',4001,6000,16),
	('MC3021',6001,8000,18),
	('MC3021',8001,10000,20),
	('MC3021',10001,12000,22),
	('MC3021',12001,50000,24),
	('PC1035',0,2000,10),
	('PC1035',2001,3000,12),
	('PC1035',3001,4000,14),
	('PC1035',4001,10000,16),
	('PC1035',10001,50000,18),
	('PC8888',0,5000,10),
	('PC8888',5001,10000,12),
	('PC8888',10001,15000,14),
	('PC8888',15001,50000,16),
	('PS1372',0,10000,10),
	('PS1372',10001,20000,12),
	('PS1372',20001,30000,14),
	('PS1372',30001,40000,16),
	('PS1372',40001,50000,18),
	('PS2091',0,1000,10),
	('PS2091',1001,5000,12),
	('PS2091',5001,10000,14),
	('PS2091',10001,50000,16),
	('PS2106',0,2000,10),
	('PS2106',2001,5000,12),
	('PS2106',5001,10000,14),
	('PS2106',10001,50000,16),
	('PS3333',0,5000,10),
	('PS3333',5001,10000,12),
	('PS3333',10001,15000,14),
	('PS3333',15001,50000,16),
	('PS7777',0,5000,10),
	('PS7777',5001,50000,12),
	('TC3218',0,2000,10),
	('TC3218',2001,4000,12),
	('TC3218',4001,6000,14),
	('TC3218',6001,8000,16),
	('TC3218',8001,10000,18),
	('TC3218',10001,12000,20),
	('TC3218',12001,14000,22),
	('TC3218',14001,50000,24),
	('TC4203',0,2000,10),
	('TC4203',2001,8000,12),
	('TC4203',8001,16000,14),
	('TC4203',16001,24000,16),
	('TC4203',24001,32000,18),
	('TC4203',32001,40000,20),
	('TC4203',40001,50000,22),
	('TC7777',0,5000,10),
	('TC7777',5001,15000,12),
	('TC7777',15001,50000,14);

/*!40000 ALTER TABLE `roysched` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table s
# ------------------------------------------------------------

DROP TABLE IF EXISTS `s`;

CREATE TABLE `s` (
  `SID` char(10) NOT NULL DEFAULT '',
  `SN` char(10) DEFAULT NULL,
  `SS` char(2) DEFAULT NULL,
  `SA` int(11) DEFAULT NULL,
  `SD` char(3) DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

LOCK TABLES `s` WRITE;
/*!40000 ALTER TABLE `s` DISABLE KEYS */;

INSERT INTO `s` (`SID`, `SN`, `SS`, `SA`, `SD`)
VALUES
	('05001','ÀîÓÂ','ÄÐ',20,'CS'),
	('05002','Áõ³¿','Å®',19,'IS'),
	('05003','ÍõÃô','Å®',18,'MA'),
	('05004','ÕÅÁ¢','ÄÐ',20,'IS');

/*!40000 ALTER TABLE `s` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table S12203205
# ------------------------------------------------------------

DROP TABLE IF EXISTS `S12203205`;

CREATE TABLE `S12203205` (
  `title_id` varchar(6) DEFAULT NULL,
  `page_num` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `S12203205` WRITE;
/*!40000 ALTER TABLE `S12203205` DISABLE KEYS */;

INSERT INTO `S12203205` (`title_id`, `page_num`, `qty`, `store_id`)
VALUES
	('S3092',304,300,1),
	('D1007',280,200,3),
	('S5006',315,240,2),
	('S5690',300,300,2),
	('H1298',210,470,5),
	('D2008',358,342,2),
	('S2005',298,200,2),
	('S2005',307,510,1),
	('56.7',NULL,NULL,NULL);

/*!40000 ALTER TABLE `S12203205` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `STOR_ID` varchar(8) DEFAULT NULL,
  `ORD_NUM` varchar(40) DEFAULT NULL,
  `ORD_DATE` varchar(8) DEFAULT NULL,
  `QTY` double DEFAULT NULL,
  `PAYTERMS` varchar(24) DEFAULT NULL,
  `TITLE_ID` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;

INSERT INTO `sales` (`STOR_ID`, `ORD_NUM`, `ORD_DATE`, `QTY`, `PAYTERMS`, `TITLE_ID`)
VALUES
	('6380','6871',NULL,5,'Net 60','BU1032'),
	('6380','722a',NULL,3,'Net 60','PS2091'),
	('7066','A2976',NULL,50,'Net 30','PC8888'),
	('7066','QA7442.3',NULL,75,'ON invoice','PS2091'),
	('7067','D4482',NULL,10,'Net 60','PS2091'),
	('7067','P2121',NULL,40,'Net 30','TC3218'),
	('7067','P2121',NULL,20,'Net 30','TC4203'),
	('7067','P2121',NULL,20,'Net 30','TC7777'),
	('7131','N914008',NULL,20,'Net 30','PS2091'),
	('7131','N914014',NULL,25,'Net 30','MC3021'),
	('7131','P3087a',NULL,20,'Net 60','PS1372'),
	('7131','P3087a',NULL,25,'Net 60','PS2106'),
	('7131','P3087a',NULL,15,'Net 60','PS3333'),
	('7131','P3087a',NULL,25,'Net 60','PS7777'),
	('7896','QQ2299',NULL,15,'Net 60','BU7832'),
	('7896','TQ456',NULL,10,'Net 60','MC2222'),
	('7896','X999',NULL,35,'ON invoice','BU2075'),
	('8042','423LL922',NULL,15,'ON invoice','MC3021'),
	('8042','423LL930',NULL,10,'ON invoice','BU1032'),
	('8042','P723',NULL,25,'Net 30','BU1111'),
	('8042','QA879.1',NULL,30,'Net 30','PC1035');

/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `SID` char(10) NOT NULL DEFAULT '',
  `CID` char(3) NOT NULL DEFAULT '',
  `GR` int(2) DEFAULT NULL,
  PRIMARY KEY (`SID`,`CID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

LOCK TABLES `sc` WRITE;
/*!40000 ALTER TABLE `sc` DISABLE KEYS */;

INSERT INTO `sc` (`SID`, `CID`, `GR`)
VALUES
	('05001','1',92),
	('05001','2',85),
	('05001','3',88),
	('05002','2',90),
	('05002','3',80);

/*!40000 ALTER TABLE `sc` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stores`;

CREATE TABLE `stores` (
  `stor_id` varchar(4) NOT NULL DEFAULT '',
  `stor_name` varchar(40) DEFAULT NULL,
  `stor_address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  UNIQUE KEY `UPK_storeid` (`stor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;

INSERT INTO `stores` (`stor_id`, `stor_name`, `stor_address`, `city`, `state`, `zip`)
VALUES
	('6380','Eric the Read Books','788 Catamaugus Ave.','Seattle','WA','98056'),
	('7066','Barnum\'s','567 Pasadena Ave.','Tustin','CA','92789'),
	('7067','News & Brews','577 First St.','Los Gatos','CA','96745'),
	('7131','Doc-U-Mat: Quality Laundry and Books','24-A Avogadro Way','Remulade','WA','98014'),
	('7896','Fricative Bookshop','89 Madison St.','Fremont','CA','90019'),
	('8042','Bookbeat','679 Carson St.','Portland','OR','89076');

/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table T12203205
# ------------------------------------------------------------

DROP TABLE IF EXISTS `T12203205`;

CREATE TABLE `T12203205` (
  `title` varchar(40) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `title_id` varchar(6) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pub_name` varchar(40) DEFAULT NULL,
  `pubdate` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `T12203205` WRITE;
/*!40000 ALTER TABLE `T12203205` DISABLE KEYS */;

INSERT INTO `T12203205` (`title`, `author`, `title_id`, `price`, `pub_name`, `pubdate`)
VALUES
	('?????','???','S1135',19.759999999999998,'??????',1986),
	('C ??????','??','H1298',14.535,'????',1993),
	('?????','???','D1007',21.564999999999998,'????',1987),
	('?????','??','S5690',17.955,'????',1993),
	('Artificial intelligence','P.Winston','D2008',19.474999999999998,'????',1989),
	('Expert systems','R.Ullman','H3067',16.15,'????',1994),
	('????','???','S2005',33.25,'??????',1995),
	('Digital Image Processing',NULL,'S7028',34,NULL,NULL),
	('Computer networking','author_1','S1234',56.7,'publisher_1',2014),
	('Computer networking','author_1','S1234',56.7,'publisher_1',2014),
	('Computer networking','author_1','S1234',56.7,'publisher_1',2014),
	('Digital Image Processing',NULL,'S7028',34,NULL,NULL);

/*!40000 ALTER TABLE `T12203205` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table titleauthor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `titleauthor`;

CREATE TABLE `titleauthor` (
  `au_id` varchar(11) NOT NULL DEFAULT '',
  `title_id` varchar(6) NOT NULL DEFAULT '',
  `au_ord` smallint(6) DEFAULT NULL,
  `royaltyper` int(11) DEFAULT NULL,
  UNIQUE KEY `UPKCL_taind` (`au_id`,`title_id`),
  KEY `auidind` (`au_id`),
  KEY `titleidind` (`title_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `titleauthor` WRITE;
/*!40000 ALTER TABLE `titleauthor` DISABLE KEYS */;

INSERT INTO `titleauthor` (`au_id`, `title_id`, `au_ord`, `royaltyper`)
VALUES
	('172-32-1176','PS3333',1,100),
	('213-46-8915','BU1032',2,40),
	('213-46-8915','BU2075',1,100),
	('238-95-7766','PC1035',1,100),
	('267-41-2394','BU1111',2,40),
	('267-41-2394','TC7777',2,30),
	('274-80-9391','BU7832',1,100),
	('409-56-7008','BU1032',1,60),
	('427-17-2319','PC8888',1,50),
	('472-27-2349','TC7777',3,30),
	('486-29-1786','PC9999',1,100),
	('486-29-1786','PS7777',1,100),
	('648-92-1872','TC4203',1,100),
	('672-71-3249','TC7777',1,40),
	('712-45-1867','MC2222',1,100),
	('722-51-5454','MC3021',1,75),
	('724-80-9391','BU1111',1,60),
	('724-80-9391','PS1372',2,25),
	('756-30-7391','PS1372',1,75),
	('807-91-6654','TC3218',1,100),
	('846-92-7186','PC8888',2,50),
	('899-46-2035','MC3021',2,25),
	('899-46-2035','PS2091',2,50),
	('998-72-3567','PS2091',1,50),
	('998-72-3567','PS2106',1,100),
	('998-72-4567','PS2106',1,100);

/*!40000 ALTER TABLE `titleauthor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table titles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `titles`;

CREATE TABLE `titles` (
  `TITLE_ID` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `PUB_ID` varchar(255) DEFAULT NULL,
  `PRICE` varchar(255) DEFAULT NULL,
  `ADVANCE` int(11) DEFAULT NULL,
  `ROYALTY` int(11) DEFAULT NULL,
  `YTD_SALES` int(11) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `PUBDATE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;

INSERT INTO `titles` (`TITLE_ID`, `TITLE`, `TYPE`, `PUB_ID`, `PRICE`, `ADVANCE`, `ROYALTY`, `YTD_SALES`, `NOTES`, `PUBDATE`)
VALUES
	('BU1032','The Busy Executive\'s Database Guide','business','1389','19.99',5000,10,4095,'An overview of available database systems with emphasis on common business applications. Illustrated.',NULL),
	('BU1111','Cooking with Computers: Surreptitious Balance Sheets','business','1389','11.95',5000,10,3876,'Helpful hints on how to use your electronic resources to the best advantage.','6/9/1991'),
	('BU2075','You Can Combat Computer Stress!','business','0736','2.99',10125,24,18722,'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations.',NULL),
	('BU7832','Straight Talk About Computers','business','1389','19.99',5000,10,4095,'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.',NULL),
	('MC2222','Silicon Valley Gastronomic Treats','mod_cook','0877','19.99',0,12,2032,'Favorite recipes for quick, easy, and elegant meals.','6/9/1991'),
	('MC3021','The Gourmet Microwave','mod_cook','0877','2.99',15000,24,22246,'Traditional French gourmet recipes adapted for modern microwave cooking.',NULL),
	('MC3026','The Psychology of Computer Cooking','UNDECIDED','0877',NULL,NULL,NULL,NULL,NULL,'8/6/2000'),
	('PC1035','But Is It User Friendly?','popular_comp','1389','22.95',7000,16,8780,'A survey of software for the naive user, focusing on the \'friendliness\' of each.',NULL),
	('PC8888','Secrets of Silicon Valley','popular_comp','1389','20',8000,10,4095,'Muckraking reporting on the world\'s largest computer hardware and software manufacturers.',NULL),
	('PC9999','Net Etiquette','popular_comp','1389',NULL,NULL,NULL,NULL,'A must-read for computer conferencing.','8/6/2000'),
	('PS1372','Computer Phobic AND Non-Phobic Individuals: Behavior Variations','psychology','0877','21.59',7000,10,375,'A must for the specialist, this book examines the difference between those who hate and fear computers and those who don\'t.',NULL),
	('PS2091','Is Anger the Enemy?','psychology','0736','10.95',2275,12,2045,'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.',NULL),
	('PS2106','Life Without Fear','psychology','0736','7',6000,10,111,'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience. Sample menus included, exercise video available separately.',NULL),
	('PS3333','Prolonged Data Deprivation: Four Case Studies','psychology','0736','19.99',2000,10,4072,'What happens when the data runs dry?  Searching evaluations of information-shortage effects.',NULL),
	('PS7777','Emotional Security: A New Algorithm','psychology','0736','7.99',4000,10,3336,'Protecting yourself and your loved ones from undue emotional stress in the modern world. Use of computer and nutritional aids emphasized.',NULL),
	('TC3218','Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean','trad_cook','0877','20.95',7000,10,375,'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.',NULL),
	('TC4203','Fifty Years in Buckingham Palace Kitchens','trad_cook','0877','11.95',4000,14,15096,'More anecdotes from the Queen\'s favorite cook describing life among English royalty. Recipes, techniques, tender vignettes.',NULL),
	('TC7777','Sushi, Anyone?','trad_cook','0877','14.99',8000,10,4095,'Detailed instructions on how to make authentic Japanese sushi in your spare time.',NULL);

/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TS
# ------------------------------------------------------------

DROP VIEW IF EXISTS `TS`;

CREATE TABLE `TS` (
   `title` VARCHAR(40) NULL DEFAULT NULL,
   `author` VARCHAR(20) NULL DEFAULT NULL,
   `page_num` INT(11) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table VT12203205
# ------------------------------------------------------------

DROP VIEW IF EXISTS `VT12203205`;

CREATE TABLE `VT12203205` (
   `title` VARCHAR(40) NULL DEFAULT NULL,
   `author` VARCHAR(20) NULL DEFAULT NULL,
   `price` DOUBLE NULL DEFAULT NULL,
   `pub_name` VARCHAR(40) NULL DEFAULT NULL,
   `title_id` VARCHAR(6) NULL DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for VT12203205 with correct view syntax
# ------------------------------------------------------------

DROP TABLE `VT12203205`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `VT12203205`
AS SELECT
   `T12203205`.`title` AS `title`,
   `T12203205`.`author` AS `author`,
   `T12203205`.`price` AS `price`,
   `T12203205`.`pub_name` AS `pub_name`,
   `T12203205`.`title_id` AS `title_id`
FROM `T12203205` where (`T12203205`.`title_id` like 'S%');


# Replace placeholder table for TS with correct view syntax
# ------------------------------------------------------------

DROP TABLE `TS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `TS`
AS SELECT
   `VT12203205`.`title` AS `title`,
   `VT12203205`.`author` AS `author`,
   `S12203205`.`page_num` AS `page_num`
FROM (`S12203205` join `VT12203205`) where (`S12203205`.`title_id` = `VT12203205`.`title_id`);

--
-- Dumping routines (PROCEDURE) for database 'dd'
--
DELIMITER ;;

# Dump of PROCEDURE demo_1
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `demo_1` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `demo_1`(in a int)
begin
select a;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE demo_2
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `demo_2` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `demo_2`(in a int)
begin
select a;
set a = 3;
select a;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE PA12203205
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `PA12203205` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `PA12203205`( in p1 varchar(40), in p2 varchar(20), in p3 varchar(6), in p4 double, in p5 varchar(40),  in p6 int(11))
begin insert T12203205 values (p1,p2,p3,p4,p5,p6); insert S12203205(title_id) values(p4); end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE pb
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `pb` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `pb`(in ppp varchar(40))
begin
select * from titles;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE PB12203205
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `PB12203205` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `PB12203205`(
in pname varchar(40))
begin
	declare cls_cnt int;
	declare string varchar(40);
	select count(*) into cls_cnt from T12203205 where pname = T12203205.author;
	if cls_cnt = 0 then
		set string = 'Please enter the author name';
		select string warning; else select title, price, pub_name, pubdate, qty  from(select title, price ,pub_name, pubdate, qty, author from S12203205, T12203205 where S12203205.title_id = T12203205.title_id ) as new_table where new_table.author = pname;
	end if;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE proc1
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `proc1` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `proc1`(out s int)
begin
SELECT COUNT(*) INTO s FROM T12203205;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE t1
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `t1` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `t1`(in p1 int)
begin end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
