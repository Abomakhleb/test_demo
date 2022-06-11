/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - edse
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `edse`;

USE `edse`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `admin_code` int(5) NOT NULL auto_increment,
  `admin_id` char(30) NOT NULL,
  `admin_password` char(15) NOT NULL,
  `admin_name` char(50) NOT NULL,
  `alice_seckey` varchar(20) default NULL,
  `bob_seckey` varchar(20) default NULL,
  PRIMARY KEY  (`admin_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`admin_code`,`admin_id`,`admin_password`,`admin_name`,`alice_seckey`,`bob_seckey`) values (1,'admin','admin123','admin','5³/¶¤tàI','5³/¶¤tàI');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_code` int(20) NOT NULL auto_increment,
  `c_url` varchar(50) default NULL,
  `c_uname` varchar(50) default NULL,
  `c_pwd` varchar(50) default NULL,
  PRIMARY KEY  (`c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_code`,`c_url`,`c_uname`,`c_pwd`) values (1,'ftp.drivehq.com','blrstore','*blrstore123');

/*Table structure for table `m_file` */

DROP TABLE IF EXISTS `m_file`;

CREATE TABLE `m_file` (
  `f_no` int(10) NOT NULL auto_increment,
  `f_name` varchar(20) default NULL,
  `key_word` varchar(40000) default NULL,
  `total` int(20) default NULL,
  PRIMARY KEY  (`f_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file` */

insert into `m_file` (`f_no`,`f_name`,`key_word`,`total`) values (1,'method.txt','president-praised-damodardas-failing-party-joined-bjp-government-image-go-dynamic-made-bjps-current-evening-member-may-taking-standards-history-janata-policies-reforming-who-internationally-any-trains-gujarat-make-hope-ray-credited-former-kashmir-scripted-criticised-strategise-which-mission-relations-boy-growth-lower-historic-developmentoriented-social-move-health-prime-earlier-pm-advani-development-mandate-nrendr-followed-across-respected-indians-victories-savvy-september-mp-tech-second-remains-initiatives-elections-varanasi-entered-since-hindu-bharatiya-his-family-focused-bhawan-maharashtra-eye-bharat-haryana-lk-lives-improve-investment-politician-seats-jharkhand-indias-indian-riots-oath-human-election-jammu-electoral-encouraging-although-veteran-progressivism-lok-rashtrapati-became-bureaucracy-born-states-mehsana-rashtriya-digital-modis-swayamsevak-figure-obama-direct-us-infrastructure-detail-both-dreams-candidate-th-after-forecourt-rss-billion-economic-difference-efforts-several-foreign-well-contested-initially-nationalist-poorest-modernising-emerged-helped-general-sanitation-reducing-barack-house-bring-people-focus-aspirations-sold-national-did-minister-prevent-like-parliament-gujarati-dmodrds-years-modi-domestically-appreciated-qualitative-swachh-starting-vadodara-india-secretary-led-sangh-improving-despite-tea-narendra-been-chief-majority-sabha-campaigns-controversial-popular-known-media-administration-increased-state-pracharak-leader-won-office-poor-decisive-significantly-first-',394);
insert into `m_file` (`f_no`,`f_name`,`key_word`,`total`) values (2,'testdata.txt','capital-karnataka-',3);
insert into `m_file` (`f_no`,`f_name`,`key_word`,`total`) values (3,'test1.txt','capital-karnataka-',2);
insert into `m_file` (`f_no`,`f_name`,`key_word`,`total`) values (4,'sup.txt','mtech-student-name-supriya-',4);

/*Table structure for table `m_grade` */

DROP TABLE IF EXISTS `m_grade`;

CREATE TABLE `m_grade` (
  `s_no` int(11) NOT NULL auto_increment,
  `grade_level` varchar(30) default NULL,
  `hash_key` varchar(16) default NULL,
  PRIMARY KEY  (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_grade` */

insert into `m_grade` (`s_no`,`grade_level`,`hash_key`) values (1,'Grade1','3b7e37e2b4a49100');
insert into `m_grade` (`s_no`,`grade_level`,`hash_key`) values (2,'Grade2','34dc4660399194b1');
insert into `m_grade` (`s_no`,`grade_level`,`hash_key`) values (3,'Grade3','89eca1788b4f8d28');

/*Table structure for table `m_hashtable` */

DROP TABLE IF EXISTS `m_hashtable`;

CREATE TABLE `m_hashtable` (
  `s_no` int(11) NOT NULL auto_increment,
  `key_word` varchar(50) default NULL,
  `fileno` varchar(4) default NULL,
  `key_no` varchar(3) default NULL,
  `rank_val` varchar(10) default NULL,
  PRIMARY KEY  (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_hashtable` */

insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (1,'1baa390fad5687679444ef43ebc1d765','1','20','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (2,'99b9b9280b473717ef9ddb45bd3c594a','1','20','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (3,'2287c92636453f3b63c2feaf660cc245','1','20','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (4,'5b3989953bdd4e46a312af2175a3a3a7','1','35','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (5,'a025855f80b29816a3f9c7c0cf81aa5','1','35','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (6,'a2701854f868f6b3420ef3c6f22f675c','1','35','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (7,'eb07a83b8926d86593048da3690c875d','1','123','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (8,'39a2e1a350c37ec83130dcfa830103ee','1','123','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (9,'aaade5a34336df26c9ec3ed387609961','1','123','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (10,'b7a7a9717e7509dda55a25b2523d826a','1','102','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (11,'e9587f87537788679ec460379a6fbef7','1','102','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (12,'86055a8ec19859d9414a22b86a1468a','1','102','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (13,'872963f7bd68d0188dd7167a6e70a4','1','77','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (14,'533fe1a1773fe1caea7621816c7477e2','1','77','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (15,'b01be4f7ae5fd4ed81ffce098779f355','1','77','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (16,'4868da40cfbb6f108ccb0a07bb641736','1','15','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (17,'70b6fc7bbf49b2e61759f06883214297','1','15','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (18,'316f7a44342dcae17a5d02a4ffbace2a','1','15','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (19,'fae12f895365fae185a797478a7b018f','1','121','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (20,'cc45310c9ec2b044334c695aa833d848','1','121','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (21,'ea3fe804a99a24ff138b8e1fccb586aa','1','121','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (22,'fc6dc5fc4215adba5e44ca9eeedf0208','1','17','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (23,'fdf398660e26e8f51b2d19b7d65028a','1','17','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (24,'55b2207aa2d80ab42cf59213f1289a16','1','17','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (25,'c5bb21d844ac7e29490a096daaae1475','1','172','2.79');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (26,'dc00ebff10a08317cc1b01263b02bf89','1','172','2.79');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (27,'ccd76ed44a30bfcb2d66de6399a27a72','1','172','2.79');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (28,'4ea8bc19adec49293693f6aeb96a3dde','1','158','4.06');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (29,'8b01156356366c8e83e54c4f8d58397a','1','158','4.06');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (30,'c68ab59862c0346af4a96a3ee474430e','1','158','4.06');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (31,'ca0e248f990b8b36738ca3a7fadf2bda','1','92','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (32,'fd103670a8bf65ba8d4d6b30a7062ea','1','92','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (33,'96f491695d9e44c19e69deb1d1ad652e','1','92','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (34,'2457edb27cc5bbdf65d75fb0aa3401b2','1','49','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (35,'3efa918a03a1dfe9d5df72ea3c1144f5','1','49','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (36,'2e8d83d179d94c21b666c13f8be1c260','1','49','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (37,'e18410f69bd03f78b19da31b3e9ea422','1','151','2.28');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (38,'10b7f681fd51068d7942881cb3dabee2','1','151','2.28');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (39,'b5fe799a5e75b5d0389843ff81542e5b','1','151','2.28');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (40,'49d25efbaf4e655896e739e417757994','1','165','3.3');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (41,'2c5b5b4afb0c6ba4949fabe93a60c260','1','165','3.3');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (42,'658bbf44e503cf1857a996a2c1c53332','1','165','3.3');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (43,'7fb20756c68e706657df11079b65fe70','1','122','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (44,'e44c1ad379444176a5145ef88b644796','1','122','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (45,'5ee2c84f14f2093fb73ecb80c16cf539','1','122','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (46,'159fdcee0a32a21453bcc8eb92b08c63','1','44','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (47,'d22af4592946368eb4256631c9f0e0c0','1','44','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (48,'d571b864c881d897ff64ce279b6ad628','1','44','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (49,'7e9c6b46cfb7c9c0fbb9fac3d2ee0197','1','54','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (50,'438842666c77eb47d12ad94d3179b766','1','54','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (51,'c7397468062a22f92728bf799e5d56c0','1','54','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (52,'c32609c1141c8b4950038caf29579c1b','1','145','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (53,'c36772e0f85f55f941f3f14319ddddbf','1','145','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (54,'b05db5f47324f95222b288cef5f14812','1','145','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (55,'e437dfa9c4edbf7ee0476e520f229a2b','1','11','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (56,'39cf38c4d0fe305dfa7d23a0b26e301c','1','11','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (57,'cbdefca8c8e6b0589913b3a953001ba4','1','11','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (58,'bf4612860620051ab694f6678173bf8','1','190','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (59,'723983eab0940f9881aa0115c4f1c573','1','190','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (60,'ef6d272c26fac3dbe1d058583de72f3e','1','190','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (61,'7db0ec010d7e70654f9a3d8f5f7c4283','1','45','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (62,'ba3da30d7a17ba83de73019f5271434e','1','45','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (63,'6c6db1ab4867d8006b8bbd146dd8bd00','1','45','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (64,'63eddde90587caf47f5ffdae60ec54f5','1','186','1.78');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (65,'2bfcc4010a0c1140633be1f775a6f142','1','186','1.78');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (66,'40bbffd88c467cf405d5822ed7a465a1','1','186','1.78');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (67,'ea35dfbb90377c950fde5c362cd5b831','1','24','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (68,'21634961c411a2a059414354b2b6d6dd','1','24','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (69,'440ea7e9aae043d2186b82d5a934dc66','1','24','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (70,'a75ad2bd964fc89d01ea4a8e981524ca','1','137','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (71,'296548fa4b4102d83346318f706f367','1','137','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (72,'1411a30208e3bc968e094a84e7f46f83','1','137','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (73,'7e97928c30baacd32f5b27664d8d158','1','31','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (74,'28ca04d95e613ae55d1fa92ee7c462b5','1','31','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (75,'868a17576da9e8356be54075d16a0ba4','1','31','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (76,'76be01c7eb700ee7f7911da78a9fdd48','1','30','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (77,'f9ac429ccf37e9ad4e0ec68e19824885','1','30','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (78,'3fefc17eb2886678a97e14afef50525f','1','30','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (79,'7cf2a6f3957e40a1a1d148caa0bf49fe','1','119','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (80,'bbb00bd430da1e6b7da4b1c5808bce35','1','119','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (81,'97258745581d766d1d00d38dd31b9eec','1','119','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (82,'6115889d2a5010ec39dea7b1e3a142df','1','147','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (83,'8ac45769ec65b5d6c62b7e75075043a8','1','147','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (84,'f6cdbc450395c80b2939f1b21e612feb','1','147','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (85,'bf9243e3c70e8d1f5c3295c26015436a','1','125','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (86,'cea452f6532801bc9a35fbbe8a1667','1','125','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (87,'7a063e798837cf15966eef684a45ab1f','1','125','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (88,'83529a0330ee674241b5466767ec6022','1','59','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (89,'365d153c2045912c4613497812d90f55','1','59','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (90,'3dc2a860ad302da6cc1cf013036bbe92','1','59','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (91,'48818e877605fe89077ad9553c0fca9','1','74','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (92,'d20c21332b977abbe91ee7aa35534e6a','1','74','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (93,'b6cbf02ca6520d14a12a51a872d4abd4','1','74','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (94,'c8350f1c4ba1ba0e9ba3765413d4d27f','1','146','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (95,'2688b27ab663e001624e867d0098e237','1','146','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (96,'9df3bb49b00d78173b524abdab3699f5','1','146','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (97,'c9c5ec0c0dad860e3607d1589988dd18','1','53','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (98,'9b96b37501f29c5915fcef04becec59a','1','53','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (99,'ce7043430734f7c2f011ecc7f5fb30ef','1','53','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (100,'2321d4d4ac6cff2dc54843744c738818','1','79','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (101,'866fdc71e47838f0c0ac47f2323114a1','1','79','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (102,'867f02a35cfb5c37ae8b4722a16b7fbc','1','79','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (103,'7253c64e8d2d6630424c29991e16034f','1','117','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (104,'48ba8d6b4cde4f1ea0183cce2810dab2','1','117','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (105,'bb3c3f9cf358530d31a52788b90c399d','1','117','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (106,'b8c6cb8fd8164c60c2c458e6e0ca08ad','1','128','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (107,'54e0ef94a6cf8528c5a910f07ea7d480','1','128','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (108,'41f8c57ccda4a91f4f14c578faae5617','1','128','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (109,'7856915db0cd23ca225aad4caa2c4941','1','144','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (110,'644d3e90b2baa61a48e62187ec239b2f','1','144','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (111,'d0a6059995c8ed1a359054793b647887','1','144','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (112,'fe36dc0db5caa11a7e3d63ca55417ea0','1','161','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (113,'48bef13ac87458089f1594e9bdd35c36','1','161','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (114,'fb983cdcbf4a7b396df63d40223e7463','1','161','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (115,'a0fa3ebd30f98e86b340b82b2fb644f1','1','127','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (116,'a464da50f27705fe043a5b9a3920d744','1','127','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (117,'9ac1ff9b8ef77a78f8c2c1041091816b','1','127','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (118,'52ff34bf10ee267dfe9d785eacb7b8de','1','83','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (119,'7d9860c9bedfb48dde22a200fc10d215','1','83','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (120,'ff7836ef6acde3ab6beb8f0e2a739b70','1','83','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (121,'805139fd7998ce13b32b0929c1f79c66','1','135','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (122,'b543482608691b9de40dfc8af21b8207','1','135','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (123,'ae353a518cf5fc70f0ca411cfb7ca73f','1','135','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (124,'a270d9be77b06c569c47cc5e073454f5','1','189','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (125,'dd2438ccc52fb8d70e7dca7d63946908','1','189','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (126,'1f7ce258a7ee30c0cf0f39c1f53a92a8','1','189','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (127,'46dfdd60f13245f991293c15ff80bfb','1','12','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (128,'444b880c24aecf65ff4162d26ff59d0b','1','12','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (129,'fed82fd433f77be95f87a4a26e5b1f89','1','12','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (130,'31c213d6736f5ff0f710abacb8d4a415','1','179','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (131,'55f67ca0da35b766922003322f655aae','1','179','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (132,'69470de838b858c16b73cc79e3eb800d','1','179','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (133,'330ce36bb0441797b870361d4bddc929','1','58','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (134,'16f08cb64f1d0b7a822c62b765f6506f','1','58','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (135,'e9ff97821411980f60a37a31ff2d0f30','1','58','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (136,'6c7164b2b27a7949da1137c200cb736e','1','57','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (137,'12ce0bd7220653427e49574d4428600a','1','57','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (138,'7a103bbdb9abbbc695b2fc79878329a2','1','57','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (139,'1a1b0f56275063a4119d4940db47daa9','1','105','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (140,'3a01d632aa9c54ee96f2b9709418ee5f','1','105','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (141,'1bdff7281bb7a826fb5cec5041b2d7ec','1','105','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (142,'c0d88aaec17b980b7402204b325dc7fa','1','75','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (143,'8cfbea35c3983ad8ff112e9ae7958ae0','1','75','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (144,'5920c0cf15b4af536c8f3a0a5629ee3b','1','75','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (145,'afc0c8ad089d83652aa5a34add694b31','1','107','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (146,'f13176d45ba6a7f61c5003b548c01aac','1','107','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (147,'ebe68521794437f11b421151536069a','1','107','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (148,'9759e057a00455ba1f67cc3330b595ac','1','148','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (149,'d1811e865e61450ac2cc689bcf465ab1','1','148','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (150,'36797c5a011a1cdfa810c8c3789eeffe','1','148','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (151,'27521f270d694d24831f1092c9741965','1','171','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (152,'c65a1d9618dd281c2f74fec0595ee6df','1','171','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (153,'f529cc6d73aadd679f7b3aa51a72f95e','1','171','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (154,'ee2e6c6a5ae267fd6a50e9e0ff970faf','1','27','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (155,'2651451dc1b0e6a9c701bfdbb74a842d','1','27','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (156,'c62a9584c05bbcdce956fb67dc31595','1','27','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (157,'28725f19470762cfef1d37feecbe9beb','1','41','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (158,'3f7c0d89b1a08dfe90ec3527b0da557f','1','41','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (159,'1bb09d9ac3bf4c35f3d081fb3c5316ca','1','41','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (160,'2ca58f19080405cce8582210802a5339','1','6','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (161,'8bdea6fc7e58c8856e63f558c5b70091','1','6','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (162,'147195e46a1538bf66a1712ee1d828af','1','6','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (163,'b8faa148302034db0db0ef230650f35c','1','108','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (164,'207eb1cef61518015a2889cc34b91507','1','108','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (165,'f701356689907c980051a30c2b172f17','1','108','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (166,'af7fb8cae0083d28e32d66e6e0e2261','1','111','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (167,'acc033ed18ca9c05fc5e3c07efd4f673','1','111','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (168,'d28c521db46996f011af40d18c2a5f87','1','111','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (169,'7efaaf1d97d16630e9f0ce21279ca04d','1','168','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (170,'c2d2389c5e7c2f705526201e797dc38c','1','168','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (171,'33156600ef3a160eb4380decc573fb6b','1','168','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (172,'ca40c2b5affa4dd5d965942e50f12ffe','1','103','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (173,'260203e4acb561a9756f646ccfbe65a0','1','103','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (174,'78bca0bb47fff2bd885a3961aa18a7cc','1','103','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (175,'63ed13678c3794f8a3b368d5261e6a47','1','185','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (176,'5f3995f3e7ba6b42bb21f5155f796fb5','1','185','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (177,'5c6c170a8f1eda072533786be867e88','1','185','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (178,'8c6bb0d028401c618b0d6c1150ad8d51','1','70','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (179,'f7f8611a6dcd66dbdae96986de0a6a1f','1','70','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (180,'6a014fe8544015101188a194c1132e32','1','70','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (181,'9db85bc6670a74dfef3eea4e78635cc0','1','7','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (182,'c37b7260fdb808e3f93ad474f39c80b6','1','7','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (183,'e7a40d1438c66123f21e699518b64ba9','1','7','1.02');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (184,'47b8b197ad1e2de9da14624201ff8456','1','149','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (185,'d084b6ce2273b9269adf0ff2e12c3fd6','1','149','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (186,'63d0aec739ebdf9e3f8b0b1c7d2401e3','1','149','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (187,'c6a475de3706ff8dada73533cb488be7','1','166','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (188,'5ab19d5c30c05ee2559f1cb16ca41e9e','1','166','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (189,'afb81949c56e2bef56335fa09a6a8d2f','1','166','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (190,'f4e9fb7de08066014cf70bdc07f24e55','1','5','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (191,'69c8bf7a7d8ec379c1bbcaf59419ff93','1','5','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (192,'bebd1b1519788b79070f902fbddbb294','1','5','1.52');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (193,'af9a6edd67d04266df7cfef3312df908','1','157','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (194,'f7dbe5b4204344f68dddcbfb74faf058','1','157','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (195,'995b2bd1cdc0e737710664d8f9e6cc4a','1','157','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (196,'c3ab3f868af259ca3fa6aed01451920','1','138','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (197,'42d03b76119315c51a56ee371595dc36','1','138','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (198,'fa186d996d878fe400adb05c2be7a0e2','1','138','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (199,'a7eeed06cc1e4f5a1baf90475502f282','1','37','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (200,'4513308a83b97b5b1238c54641cba784','1','37','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (201,'77c12cac5f233087fe9f79b1660fec57','1','37','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (202,'f50a647f24084610f97c10729ce97b91','1','94','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (203,'d01a3f407ffc531ba5ade8d84d23c603','1','94','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (204,'cf19e8bab7dfb2553f41bb485ac2a6cd','1','94','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (205,'a1a511120324ed9be772eeb23b1994cd','1','177','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (206,'2974f30c491bccca2ff6e091a33bacbf','1','177','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (207,'22face386fe6637d2f7a394b7e969b89','1','177','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (208,'1b667a99130fb236eb71430946e92e5f','1','129','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (209,'9a4678a3881aa2d819206723e7aff609','1','129','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (210,'9df4d07bdd25649531ffa93cc6b87030','1','129','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (211,'984abaa32b0c5b0a5412a9f87d704179','1','106','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (212,'2bacb979be17a4498173468974e810ca','1','106','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (213,'88d8e2ee11022878f9ee0f86ede440bc','1','106','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (214,'118f08273d5c0cacc235394c1d95ad0f','1','174','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (215,'23a97106b13d91c93c58b739c0a74da4','1','174','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (216,'a2a91bee5203ad44e30064014a4136fc','1','174','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (217,'f1a81f94c8defd2c7a97aab67b4367cb','1','28','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (218,'357b54efd413bcdb4a203af23de1ead9','1','28','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (219,'841d7804d2cc68fc09b53d7f4a448130','1','28','1.27');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (220,'ab844c85b94d9c634a7de8b5ee198c7','1','13','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (221,'a8a23c328073815cf83d539e7cfd6169','1','13','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (222,'21866c5684fd36fdf9ecdd3208e60187','1','13','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (223,'a91515c76da4bac59e2c66bc44e97e6d','1','51','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (224,'604f76f092bf38c25020ff0be3285c60','1','51','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (225,'34feca272ca7c68d7b6c3018299d0bd6','1','51','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (226,'5081fd2de91fc847a325c58c5c31275','1','120','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (227,'2d4a9f1561e262a1398ed115a4a4846f','1','120','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (228,'73318f4a1f323105cbbd4da2d65987ca','1','120','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (229,'5b78ee836049cbaf6ee9e67a31705da5','1','47','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (230,'c39aa4458461c3d7862876ac1f4f264f','1','47','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (231,'9720e5ad1e59787f1d70095243e8d7d5','1','47','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (232,'50e4562a44d4fbbcdbbe0c411ca66039','1','133','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (233,'a3896623b9ef96ac841bfb10ef8ef44e','1','133','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (234,'9ef3375b6cb528a2c2ad0c8989938a17','1','133','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (235,'218a1e1324b61231e2f7fdd9ad456293','1','150','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (236,'e27af64d7a0d2ff5ba6419467d52dbf2','1','150','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (237,'9eb8913ba48eb371942b2ef03c3470d8','1','150','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (238,'a8100b32ba6235beaf7d011945a620e7','1','10','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (239,'425cd4532a678837ac8a5e2187dac155','1','10','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (240,'8c433544ae9d0c08fbabcb7f46128eb1','1','10','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (241,'fe49c23af4f6057dd085edfc6c652f43','1','131','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (242,'a5e65d9417854a8d2e792342f6b14560','1','131','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (243,'f6055b780b1bf98034850ca86b6d7e88','1','131','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (244,'a3930299158f5ba1308532b258117e4c','1','99','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (245,'c5e2e3547c0786fad83fc43cadc0912f','1','99','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (246,'b812e6b536e201e75a55fe3406916c6','1','99','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (247,'16a565ec28d2e636ceb5f589a235fe63','1','82','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (248,'7f3f5a04efa192c24a7c166fda5e926f','1','82','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (249,'6fec80be9dac14bc6c120fd7bd67585a','1','82','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (250,'a4ec5aecb737bf422e76b2af82138b5b','1','52','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (251,'f42c9caa1e2a6891e8f69ca3eb094bb','1','52','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (252,'62440942c02e752bba4f1ccdc868881f','1','52','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (253,'944b461ff5b187224836119a0c52a783','1','101','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (254,'386ad9818e921ec1e76e8385b7c7b773','1','101','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (255,'8190c1f9a33b623c35ff6b83aef568f8','1','101','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (256,'9791d39faa58449c7836bb0c3663a711','1','176','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (257,'da9cf3e3cc12fbe657a0f4b9b70918fa','1','176','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (258,'7c52c9decf22b3c611df6f374b8583c5','1','176','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (259,'b596ceaa54c665c4fc58e832243f4aa9','1','68','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (260,'6099955b5d7f15ab078eee5e9e085b4a','1','68','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (261,'673749c1090c2f95da5a42cd07c389be','1','68','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (262,'2bf6682093b9f3cf8f66cd09224ab3bc','1','132','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (263,'5d8d70a836c4fd6db0ec4beb6b05559c','1','132','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (264,'61a94f3026fe8fb3cc458c19bc5afd13','1','132','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (265,'d3012303923e7320fa813bcb740cedd8','1','164','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (266,'833def03e270719f96a0de6fe70cbbfc','1','164','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (267,'d9e4fd78b0a2511bfd05aec4bf5531cc','1','164','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (268,'2254051075908eb0c82e94e8364b089a','1','69','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (269,'951e11201942ad062cb606d11ce9edbc','1','69','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (270,'7776de3b30f368e20cd4817f88b9d695','1','69','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (271,'48eb581c0b9c31f18846028d5cfd28f3','1','187','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (272,'e2dc89497101585b6bc5fbe9afe80a7c','1','187','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (273,'93e88ffdde4d4763818fffa917fe07d','1','187','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (274,'855d76fb9c43ab01fbca3f308bfc42a0','1','118','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (275,'20b8683098cdde079b403510332c40f1','1','118','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (276,'4fec779b89ccb35c618b9d101fcccf64','1','118','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (277,'2758a365971a567cd1a17ac5a0f47370','1','87','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (278,'a7b4151b7222fdb7c6fda209ada05416','1','87','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (279,'ae87a46e1d365d51f9f58f519dc1656a','1','87','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (280,'3e566c8dd0f55ec43bbfc8b28c333bb7','1','3','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (281,'60e29ffca74432cc96e11be941b56643','1','3','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (282,'6a6612ec064a4daa417c046e255774d0','1','3','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (283,'bfbd3261a363b077a37e135ff985578c','1','155','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (284,'5b20c1c2f7986bb55fa23239ed335aee','1','155','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (285,'285dbb1366b6ae8088af0ffaeb5f6804','1','155','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (286,'f9cb298b01e2ab6a09645141eab05967','1','55','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (287,'75718b984a4d3ea4f1d2145b9ea3c4b0','1','55','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (288,'8a67498aa85624c415142d52f086a796','1','55','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (289,'6b9b6857f5bdbd2dcb981bf420982c63','1','156','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (290,'aa1f25ab88cd129cb556119248eef2f9','1','156','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (291,'ab7c276562fb329c13df87342ee427b6','1','156','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (292,'9e173d3e5503faebbf5b52b395e322aa','1','62','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (293,'62a48077724acb6f112741f3c2e812a6','1','62','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (294,'ac42540f3b7ff4c3ee8a9bb61acaf605','1','62','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (295,'bc54d22ac99ff14f705d7a4ee1c46bd7','1','14','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (296,'74bdec3dbf581e46a6badf247ab015ff','1','14','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (297,'326265ff2cc799d044172b56b17e2b71','1','14','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (298,'b70633d25d988f804a48032ca241153d','1','188','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (299,'d91c090ace3c1abca74af36d7d7fe3b','1','188','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (300,'8b89e1ee116bad96e3baa3b4f6716b0','1','188','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (301,'1cbff002000d591a8b67fb0bd9af2170','1','71','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (302,'e830bce527a77c3292a7b2e135fe705d','1','71','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (303,'3397f1694ebf755acf379752ba814b91','1','71','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (304,'5e9789547c96557d84f374d2882c7df3','1','73','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (305,'592a4f73d09353b38d7cba6e85046b0f','1','73','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (306,'e441324eca6646c10757e7c8d9c907d','1','73','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (307,'b081200e036caa50cc9c598a724ccc3e','1','21','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (308,'776fbec8017c7b36a6a393977ca23ee6','1','21','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (309,'cbc2fd7c1db351410c67376afab04c36','1','21','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (310,'65a9d302bbfddfeb31e6ec5b6a5d3946','1','16','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (311,'8f2090142e7a95fb4e895cd7c32b3a00','1','16','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (312,'95ae35508a95cc876345c3b9675274a','1','16','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (313,'59990576faaa551f2319ec93aa463e2d','1','154','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (314,'e5916b0939181698b96fe993b9af7106','1','154','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (315,'cf0e6c08a9039eeeeba5a31906eadde4','1','154','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (316,'95be7d9b807c120f85515fe1b56de84b','1','63','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (317,'ee9d13919892920206103a47402f2ce7','1','63','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (318,'3a7f8c234b66b003ca6e4203df2590bc','1','63','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (319,'fe16d6bc97d13aa2c1b764227b4b5be1','1','167','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (320,'23395ddccc5a7f85f9381785766db497','1','167','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (321,'9f58b87efb27c8ed112a8961771df3e5','1','167','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (322,'1ccc0244c1b64644314cebb01e1a3058','1','139','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (323,'de005b311f521eeb22f93f234ff647be','1','139','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (324,'4b2429a3701fb1d8e27caabb05a241f','1','139','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (325,'c465a3c2371a0084a8fb251f368204b8','1','38','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (326,'fb8c3d8ecd306524955a072eea3563be','1','38','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (327,'2ce54423c22365aa08559fc55f519a04','1','38','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (328,'ebde83ebe7776f498e4f4a1c69898a4a','1','175','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (329,'e7cf33f752d2fa129c44326ca7a36b70','1','175','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (330,'e53590e0e9ff305e3d0f2c867bf4abe1','1','175','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (331,'237366903a3b71725b9e18347922ea67','1','43','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (332,'cc1d7836d5529625bc7cb4230966467e','1','43','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (333,'40e5c00d9bf334fef10ce943e28b749d','1','43','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (334,'8423b06243b9f6a3591c5ead90b39fb','1','143','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (335,'e3a4ae2c6de8f6f01ae91de3b4c8d935','1','143','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (336,'ca9f00ba351b933e2d27faa5a2251358','1','143','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (337,'df429b13c71b6a61dcb6ad5d94a8ca1b','1','90','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (338,'5b447f7f4cbde73074419526d79a3c01','1','90','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (339,'25e423dd60ae92a0515f7e9bf127a5b3','1','90','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (340,'657ce09177598065568e681c1648a420','1','192','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (341,'b714c934f949d4024749dd048d8c7cdf','1','192','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (342,'f16d33f2e5fb4647405dc80ead4a8808','1','192','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (343,'664e6e5137a9a723bfbdf8bff1abfbf8','1','26','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (344,'ea91d6b14cb68bf3703e6e9ba1553a70','1','26','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (345,'d9eb4a2400f05f03201629a5e4fb7c04','1','26','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (346,'6a88d9917b376ca19c62ed9e8b6cfbaa','1','32','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (347,'7dcbc90456c7b630681804a0ba598a1','1','32','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (348,'11079b71d85bf3e3ed8a7bf6fb6b1bd1','1','32','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (349,'b5f7298b962ecf0541774a80a2ad5d82','1','96','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (350,'400c84ad5ee2210aa2ea38ed194e96c1','1','96','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (351,'e443bea123386368e1c1bbbb705b4dca','1','96','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (352,'3b7de7d31abc175d2cfb7d27612d93e6','1','60','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (353,'eff68b2610dbe8dfc68d2a948d9b8120','1','60','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (354,'853d70ed256cd86568b39131fe73b8cd','1','60','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (355,'dc361f02e572fe1ec9229f15c9b88f9c','1','81','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (356,'4fe96c8ea691ba4608fa63f422cc0ec3','1','81','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (357,'d034a5e6fc4f0be88071746588db0ac6','1','81','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (358,'55fc63458355eda0fde07f05dd1d61f6','1','78','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (359,'c71a8f0e210c985f901f8b602e331c5e','1','78','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (360,'2c170942b2f5bae5e3315cfc0bfa264b','1','78','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (361,'cdfbd3a630b9e262aff3f23b10eb49df','1','88','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (362,'73943e5624ebb256d3c558367377bbb7','1','88','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (363,'f827cf5b17014be269e1f2c9403f46f0','1','88','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (364,'4995c520cd347ae2b8d00bc412fcd262','1','95','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (365,'4f665640ff9d32acc602312dfeccd3c9','1','95','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (366,'2f674386c1388830ecca90636d273c08','1','95','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (367,'bb7f093b654d6e96d8b44e19a95b1520','1','34','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (368,'5cf8fd47e263511a433b6911dc3cedef','1','34','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (369,'94d02a6899a6a46679e4d15315b7131b','1','34','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (370,'480ffb995e4eafc61e4b8456753c3d81','1','18','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (371,'8dfe080d0a9e742a68d980750fcdd054','1','18','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (372,'4827f7d6cd67564e906083429170c3b4','1','18','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (373,'ef7d50f8fe6a67e012bca249d423ee5a','1','110','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (374,'3dc62371f7dabda5e3c5eb03869876dd','1','110','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (375,'8a9da92336e3d228bc2f34363bb3734e','1','110','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (376,'256c185509f5ad6fd540b4b6ea032be5','1','182','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (377,'2dfba93e38e27e3ff7f9fde1177ba8a3','1','182','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (378,'caf51d6d3d6aa54a6952fc2a079b621c','1','182','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (379,'13a4b3b09d336122c657da4ff231d17e','1','76','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (380,'f6f659c9e9e60b3befc51a66bee8d03c','1','76','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (381,'6274109b16b4b9c133e59d6f427be69f','1','76','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (382,'dcdf41a58963534c1ca54b43611535c2','1','23','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (383,'5eddc6148b798323da151c4901a652c1','1','23','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (384,'43191d91a065d000eca185a47225fbfb','1','23','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (385,'a178ae8696db897781b44ea3c8a2d58d','1','136','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (386,'f3dd939a323d044df9e21a83bd6ff15e','1','136','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (387,'c55f8300bdfdac04451d0cb66bfa21e','1','136','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (388,'b53b6a0c96427e9120c31e11701b80bf','1','89','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (389,'73e2543348bce0c369af447bf0355e8c','1','89','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (390,'be0bb4a1fcac3ec2b6ba3783f865b821','1','89','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (391,'81a156eb9562b97d87a0f1f6b238725b','1','116','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (392,'7cef2aa82dab81f01f2b9c244bf3e306','1','116','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (393,'5c9789dfa0f4ff8e7deff3ad0732f347','1','116','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (394,'9b1cdac2d7aa816eb6041e9607f0fe67','1','8','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (395,'aa1034a6fe2eb64d6c34aecfcb4d6a16','1','8','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (396,'f5c22f54f58868231cce58c58ec1c411','1','8','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (397,'68bc5d78b6a44470be86f770cd049664','1','141','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (398,'a30dad1d89e833138b669b1529452a19','1','141','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (399,'b6b8f53b3d12192e84980af932ede061','1','141','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (400,'7e4337b58f165968069bfeea97d60141','1','104','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (401,'f5e64ae3f935fbdbed5f5751949d80b7','1','104','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (402,'e8dd7fd76aad695c899e6b305aa7e8ad','1','104','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (403,'6f2d963f5e9f82f080aa8c660fdec0e6','1','97','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (404,'3774ca50f82e70d97dffffe031109a60','1','97','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (405,'23e1a7ce3d275124fc5d1d4c77755a4a','1','97','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (406,'2c3ef377adac71f63d0fdb23aeed0d9c','1','183','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (407,'ce6f9b5c1f0e458a34702d0aaec18710','1','183','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (408,'283dce91b960130632fc72ce87cef180','1','183','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (409,'2098c2c11ecd003a16cd54141578cbc','1','130','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (410,'d2d1385ad8a4a6d4013bbe5761a22342','1','130','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (411,'b682d32a0572e856d41be1af8a9375dc','1','130','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (412,'76384cf7c563bc421a7f4a760f9b1bcd','1','114','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (413,'c3175b2d67267a5ad7de3f17509d9372','1','114','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (414,'af6e6e1dbcfeef5a2dec5c8784ba4ede','1','114','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (415,'381d0aea2fbd8225a84b07b787cfc221','1','85','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (416,'7105437c662c3c19bcb63fa51b959119','1','85','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (417,'f77c40267228f1f3f78814ec35391bc6','1','85','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (418,'8b4c7c14ae41cbfffbc96d63a658bc4e','1','169','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (419,'a57439d334a531b7c559487633ed9c92','1','169','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (420,'7c35cd5a306e3126d3f865e4703e9c40','1','169','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (421,'3408fe28c483bb1663e025d17fa0df9','1','19','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (422,'bdae299d093ca493b405360689c0d551','1','19','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (423,'21df54a4a2741714e6233f27160e188e','1','19','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (424,'3c9d6bc6594e5b61267dbe302d9510c8','1','48','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (425,'13442cc1f14abdbfd8906313f7490744','1','48','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (426,'359b43dcbc4b04afb9f432fef97f7f50','1','48','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (427,'229c9873f5a70845017d38bceb16ee0a','1','140','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (428,'b9ce555df5ff63e8d988db3d0bb26e6a','1','140','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (429,'bdb2d0cea7a0b5c9aedd4e941fda6950','1','140','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (430,'2c8d0a3bdc3906dec21f624a0cbff3ff','1','40','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (431,'3e5a5ba6a9d725f767f9c53bf9d46244','1','40','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (432,'4a01400cf62c0037547113bc415d8e8a','1','40','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (433,'8edc0b47c909cb8ba6c5689646cae222','1','173','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (434,'64beb0b7538cc8cc75ad5c236c19748c','1','173','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (435,'123f911e56359aa2d34f16cd8b08c57','1','173','0.76');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (436,'d794703e5c838435e3575120b2498c7d','1','160','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (437,'c3b1a7a96fc3f34085d1dff4a81f6154','1','160','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (438,'3e24e15112a82809280cf0c882cce45f','1','160','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (439,'4e7f1e78fef0c46b29beb34c0a4757ba','1','163','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (440,'20321616c35f5d8dce6fb0859531a03d','1','163','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (441,'9c273d71a659c79f56d4f6a83935f31','1','163','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (442,'1257d1cf6270c289628ce2ac60349a93','1','67','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (443,'1719635c5b8b8dbdf7519839b1aa2d11','1','67','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (444,'95e4d5c1be523fa99d131f2135430352','1','67','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (445,'26eccea424bdb34bf7d47aacd30ff36a','1','153','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (446,'daf67bb3b36c2271a1813602e5a14e3a','1','153','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (447,'8a2b7c0f4bb6e05fc810e2eca8cda4e8','1','153','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (448,'83628b2631c96cc48baebdf2f64478b4','1','162','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (449,'ec577cebe52f80fa74158b2ea1647e9f','1','162','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (450,'11560e14ff409603ef9d5078110d29c6','1','162','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (451,'64cea06f780c1cbed46295cbb8137780','1','80','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (452,'5aa1d557dd5127979f79073fb5ed143b','1','80','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (453,'319bbe333c2e51087c065245507ae640','1','80','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (454,'4630ce398461dd3e53c979abf242f70a','1','39','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (455,'6264238d1fea6b098a5ad6585fbcb163','1','39','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (456,'84f07968005b2cf731397f86f10fa7ff','1','39','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (457,'e464ce5572a704424a27bbbac331bc3','1','29','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (458,'333f7dc5a9e262efa01b3063d86f77ec','1','29','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (459,'9d16e41c6c7ed37961b9f85e24a3800f','1','29','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (460,'9da83cf0a116788b5789b58a3099244','1','109','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (461,'1ac0d01071570d8f453524c13f40d41e','1','109','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (462,'dfe1d4c8936b3c1b6e2aeb4df83f6031','1','109','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (463,'fd604a403c5f7134732c3e33006fbc39','1','50','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (464,'c7af1714cff6eb2fa487938a8827f01c','1','50','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (465,'2bed50b854b735b9e6ebbbf32d097f25','1','50','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (466,'28dfd0d4884200b0554c7bde78b0f8a','1','126','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (467,'9bba9bdf1add34d2c8542eefe9c0b2c3','1','126','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (468,'35b24eccf905dfe19d2cb894f0a5eb63','1','126','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (469,'bccfb8cfc1681889b846fdd602997c3e','1','22','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (470,'1f964ec5112195448767fa324805e240','1','22','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (471,'2498e0341f03bb72d3e2fbe99b6a87bf','1','22','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (472,'8697ff28bd5736a7c68b4f7ca5c33cc','1','42','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (473,'25328f0908276fa511cb4f9602464908','1','42','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (474,'3cb06d560c22f4f979db49323495d3ac','1','42','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (475,'fedbf2f4ed5fd1ae58c114f5d5b687c0','1','2','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (476,'3b00b57144403c24e18b5c4fd42e4bab','1','2','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (477,'f451ef23d775a12faaae6d59ab9a50cc','1','2','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (478,'363d522b03fb397089c48130a9df1e3d','1','98','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (479,'fd1a3c5397cf8bf04eaf74c8316a176b','1','98','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (480,'7125be9e56ea6ecd8712d22e65f9bbb6','1','98','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (481,'a16644a44b3aaefea13f97db721fa975','1','36','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (482,'91df083187bf1b437b32c59775a95f0c','1','36','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (483,'5a8ba75921b407e6cef3edf0c9af3c6','1','36','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (484,'d10d03b74bec430a89dd9cb3edaa5422','1','4','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (485,'8f5a7e4bd12d7e4d8f372b618600ecf5','1','4','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (486,'29377580a94b64f1491ea4de3a504870','1','4','0.51');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (487,'bda74beda3a868df534bc910b151ef1e','1','191','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (488,'5df01b077c51060fe4f9a60e57b3b8c9','1','191','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (489,'b4dd473883380b36116b2af85283cbab','1','191','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (490,'6e944fe6f518927b9b607cf266e67968','1','84','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (491,'d398d03f1b01b5411d0d6c122ae0ed8a','1','84','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (492,'2738fa0e91a7c7cce33fe91b1b1003b3','1','84','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (493,'be7be83a8179502d53a4b952c528350b','1','93','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (494,'51e8daaca7243c4aab436ac92962e286','1','93','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (495,'89335acc4b4f695edf8084f23512bb0f','1','93','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (496,'b24a863ac550d2be7deec2bff9014e21','1','184','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (497,'e3131a8e757f9aa48a9cec73445d27e8','1','184','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (498,'cb36931e1103a594ec8df7d5a3227c98','1','184','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (499,'4d34b14fd197add18b22cd681704e0fc','1','152','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (500,'c8991cb612fdbc6b9e216652156a0c74','1','152','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (501,'4b574484de70d63764f7bd7b8e11364e','1','152','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (502,'c093c6daea0834f2dc4723cf152a9a32','1','91','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (503,'5987c57643c36153b72ad2be696d96de','1','91','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (504,'3a849e109661ecad3a9ae7c9ec68f94c','1','91','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (505,'47a89bf12f9c90d6fe8bd558150e473d','1','72','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (506,'6b457167adf34d15fbadd63e6f193e08','1','72','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (507,'91737655a47ae2cc86d7d567958a4bec','1','72','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (508,'432559d3d52a3fe7b2813778524ac3d4','1','134','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (509,'7d424a83d012c1b16b2bdebf496fd3e','1','134','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (510,'8ee3ffd2ed48fff36307e4a5facb13b3','1','134','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (511,'86333a175514c89de682b886346eea3f','1','33','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (512,'b51183ed12e7a4fba60beedfd567afdc','1','33','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (513,'f6d0ea87eac6f554b4cc1f48893fedf','1','33','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (514,'c2258e3a692bfa2a916d2819964d0a4e','1','124','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (515,'b73378823ccb2f300c78f4c8a1579373','1','124','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (516,'696859779645714abda6934c407e7f15','1','124','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (517,'fb4f2e3b9174feb62a5f3d01468f1309','1','66','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (518,'5eb23b6ce8e4871fc1648386fb551428','1','66','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (519,'80c4daa8fc3ee859a3ab1d4a8aa729cd','1','66','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (520,'e689a869a10bce0e3f8b62b416a2c4f6','1','178','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (521,'14d240ae73e00c4ecfa294ca66774382','1','178','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (522,'2b43fa7be04d5a85b1bf8b02891e9b89','1','178','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (523,'85368e19bce6b5b5336c47247a939ba0','1','112','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (524,'1558316c9b39fd65bbc1e71f017520f5','1','112','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (525,'a57021b7ad12b4bc2d5408466fe7f424','1','112','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (526,'6992b931b688e3a5c60ca1c28ef47378','1','159','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (527,'9f05bacec47aba0ad6ec2aaee6da812f','1','159','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (528,'524b2206a30c50cadf10ec20932af19a','1','159','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (529,'81fa099aac4f32a7b40a7ea1e32756ef','1','25','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (530,'e3934ed39e0e36dbab3daa108ce1df61','1','25','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (531,'eca2b74428810ea3171900f266201e13','1','25','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (532,'22e1279d3c464c71862869c2fc28ef1e','1','170','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (533,'2b42cfb6d8d24a81ebc75d32b9bd1835','1','170','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (534,'26e20ff2899e913548ced5051db0c337','1','170','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (535,'bfe25b43201bf5334958413bd2679f72','1','100','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (536,'352ab85921580c95fc9ed3f226e2070b','1','100','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (537,'90481271749db114ad5cd5ab41a36f4a','1','100','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (538,'2f3349c8f8dd7e1c7b8840c1d21394be','1','180','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (539,'d974d4005f0e8901bd53c7f47d1b8fa1','1','180','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (540,'40e54a05d5b541488f775ff86c619562','1','180','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (541,'8856e585cde7a25833c9dc16f658e30c','1','64','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (542,'c789cfcefaeb1f908838fa20139d5986','1','64','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (543,'6620ef89f8f1c92850f861675e0531f1','1','64','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (544,'a34e95fbec678f9c461f05f99b6a3f6b','1','61','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (545,'55711521f37bc909dcfe9dce3e27ceaa','1','61','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (546,'ac1ee2146e3a8319cca69e57f635ece8','1','61','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (547,'1744fc2213bde63ab66cdabb39d9389b','1','9','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (548,'b1aca5b69d158aa69c7f961fdeb056f3','1','9','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (549,'72170542ec8c67fe335395d743bcfa25','1','9','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (550,'bba2b09d34d6365d3f80508975e1b6a2','1','65','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (551,'3ae833d7baa65064631030c8132812ed','1','65','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (552,'883b16599ce1aab50ee72a2f585c05a8','1','65','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (553,'fcab502dbbf76c323d77f527293cd816','1','56','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (554,'f1ee7a37660c891930417db08bfa2e55','1','56','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (555,'acf991aaaf3dcd5009761da91fc25115','1','56','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (556,'114f6df12112c384ae38c5970bea8b45','1','86','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (557,'db75174b6d18677d299a4b7a2b0662ab','1','86','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (558,'d4619c3ae607524e415a7aebd0da94fe','1','86','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (559,'2125cd17332e32a2cf82c61326f51321','1','46','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (560,'89133e207ffbdf210d38d3d6cb83cf2c','1','46','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (561,'9b324e1055132af9b91d83f266d465ab','1','46','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (562,'ff825cd4e8ba9d3014ce9435ae7944e4','1','181','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (563,'50aac2373bb0d10fb9b72fcb68853e92','1','181','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (564,'b6792a9bb8f38aaa010c0afd0594606e','1','181','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (565,'bfe378e462bee92c287b12e11f899067','1','115','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (566,'ec545b2e93ad8d03795d15165f9ac3dd','1','115','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (567,'880009e80a8231817fb4d93231cbf9b3','1','115','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (568,'6b4ed74504bcea07bde11286cc5dde82','1','1','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (569,'51fb98497b9caba5b7e497035cd984b7','1','1','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (570,'3b401330ad8f8c27df7d829428de667','1','1','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (571,'79074bb43db9d706e198eb587a80367c','1','142','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (572,'4108e30168fdde6b7da6d8c1e57d3c54','1','142','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (573,'6c39f473462d0397c8f5cdf1d523d11e','1','142','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (574,'29c0d94e3b418809403fc74c361ff51b','1','113','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (575,'29dea83d9588c23015437e0750b766a0','1','113','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (576,'f5e1cee0a70f2a5b51428f69b7eb10af','1','113','0.25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (577,'d41e56ea21c51a16d57b1d0153e2f59d','2','193','33.33');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (578,'7f2c3fab897cc79df3c82f70215fd156','2','194','66.67');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (579,'d41e56ea21c51a16d57b1d0153e2f59d','3','195','50');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (580,'7f2c3fab897cc79df3c82f70215fd156','3','196','50');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (581,'e0ae657087443a102c8cf3f9b2df431d','4','199','25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (582,'13b8e7c4afa63a631eabe499c274a1c2','4','200','25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (583,'b86cea729995966a1fe49271ab0aaca2','4','197','25');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (584,'842fc5ca8b42a4f0d4156fc9563b3660','4','198','25');

/*Table structure for table `m_request_secfile` */

DROP TABLE IF EXISTS `m_request_secfile`;

CREATE TABLE `m_request_secfile` (
  `req_no` int(50) NOT NULL auto_increment,
  `userid` varchar(100) default NULL,
  `status` varchar(50) default NULL,
  PRIMARY KEY  (`req_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_request_secfile` */

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `t_no` int(10) NOT NULL auto_increment,
  `t_date` varchar(100) NOT NULL,
  `t_time` varchar(100) NOT NULL,
  `m_loginid` varchar(50) NOT NULL,
  `f_name` varchar(50) default NULL,
  `f_status` varchar(50) default NULL,
  PRIMARY KEY  (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

insert into `m_transaction` (`t_no`,`t_date`,`t_time`,`m_loginid`,`f_name`,`f_status`) values (1,'10-09-2016','16:06:06','shanu','testdata.txt','Downloaded');
insert into `m_transaction` (`t_no`,`t_date`,`t_time`,`m_loginid`,`f_name`,`f_status`) values (2,'10-09-2016','16:06:07','shanu','testdata.txt','Downloaded');
insert into `m_transaction` (`t_no`,`t_date`,`t_time`,`m_loginid`,`f_name`,`f_status`) values (3,'10-09-2016','16:06:55','shanu','sup.txt','Downloaded');
insert into `m_transaction` (`t_no`,`t_date`,`t_time`,`m_loginid`,`f_name`,`f_status`) values (4,'10-09-2016','16:07:52','vnu','method.txt','Downloaded');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_no` int(10) NOT NULL auto_increment,
  `u_id` varchar(50) default NULL,
  `u_pass` varchar(20) default NULL,
  `u_name` varchar(50) default NULL,
  `u_email` varchar(30) default NULL,
  `u_phone` varchar(10) default NULL,
  `grade` varchar(30) default NULL,
  `status` varchar(5) default 'no',
  `u_keynmae` varchar(40) default NULL,
  PRIMARY KEY  (`u_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`u_no`,`u_id`,`u_pass`,`u_name`,`u_email`,`u_phone`,`grade`,`status`,`u_keynmae`) values (1,'shanu','shanu','shanu','shalini@celestialv.com','9876543322','1','yes','shanu_Aggregatekey.txt');
insert into `m_user` (`u_no`,`u_id`,`u_pass`,`u_name`,`u_email`,`u_phone`,`grade`,`status`,`u_keynmae`) values (2,'vnu','vnu','vnu','vinith@gmail.com','9876543422','2','yes','vnu_Aggregatekey.txt');

/*Table structure for table `t_count` */

DROP TABLE IF EXISTS `t_count`;

CREATE TABLE `t_count` (
  `t_no` int(20) NOT NULL auto_increment,
  `f_no` int(10) default NULL,
  `key_word` varchar(50) default NULL,
  `weightage` int(10) default NULL,
  `key_rank` varchar(50) default NULL,
  PRIMARY KEY  (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_count` */

insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (1,1,'president',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (2,1,'praised',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (3,1,'damodardas',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (4,1,'failing',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (5,1,'party',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (6,1,'joined',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (7,1,'bjp',4,'1.02');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (8,1,'government',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (9,1,'image',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (10,1,'go',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (11,1,'dynamic',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (12,1,'made',5,'1.27');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (13,1,'bjps',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (14,1,'current',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (15,1,'evening',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (16,1,'member',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (17,1,'may',4,'1.02');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (18,1,'taking',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (19,1,'standards',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (20,1,'history',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (21,1,'janata',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (22,1,'policies',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (23,1,'reforming',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (24,1,'who',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (25,1,'internationally',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (26,1,'any',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (27,1,'trains',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (28,1,'gujarat',5,'1.27');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (29,1,'make',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (30,1,'hope',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (31,1,'ray',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (32,1,'credited',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (33,1,'former',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (34,1,'kashmir',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (35,1,'scripted',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (36,1,'criticised',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (37,1,'strategise',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (38,1,'which',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (39,1,'mission',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (40,1,'relations',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (41,1,'boy',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (42,1,'growth',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (43,1,'lower',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (44,1,'historic',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (45,1,'developmentoriented',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (46,1,'social',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (47,1,'move',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (48,1,'health',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (49,1,'prime',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (50,1,'earlier',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (51,1,'pm',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (52,1,'advani',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (53,1,'development',4,'1.02');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (54,1,'mandate',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (55,1,'nrendr',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (56,1,'followed',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (57,1,'across',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (58,1,'respected',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (59,1,'indians',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (60,1,'victories',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (61,1,'savvy',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (62,1,'september',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (63,1,'mp',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (64,1,'tech',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (65,1,'second',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (66,1,'remains',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (67,1,'initiatives',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (68,1,'elections',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (69,1,'varanasi',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (70,1,'entered',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (71,1,'since',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (72,1,'hindu',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (73,1,'bharatiya',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (74,1,'his',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (75,1,'family',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (76,1,'focused',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (77,1,'bhawan',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (78,1,'maharashtra',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (79,1,'eye',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (80,1,'bharat',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (81,1,'haryana',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (82,1,'lk',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (83,1,'lives',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (84,1,'improve',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (85,1,'investment',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (86,1,'politician',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (87,1,'seats',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (88,1,'jharkhand',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (89,1,'indias',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (90,1,'indian',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (91,1,'riots',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (92,1,'oath',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (93,1,'human',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (94,1,'election',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (95,1,'jammu',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (96,1,'electoral',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (97,1,'encouraging',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (98,1,'although',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (99,1,'veteran',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (100,1,'progressivism',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (101,1,'lok',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (102,1,'rashtrapati',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (103,1,'became',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (104,1,'bureaucracy',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (105,1,'born',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (106,1,'states',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (107,1,'mehsana',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (108,1,'rashtriya',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (109,1,'digital',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (110,1,'modis',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (111,1,'swayamsevak',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (112,1,'figure',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (113,1,'obama',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (114,1,'direct',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (115,1,'us',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (116,1,'infrastructure',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (117,1,'detail',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (118,1,'both',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (119,1,'dreams',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (120,1,'candidate',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (121,1,'th',5,'1.27');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (122,1,'after',4,'1.02');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (123,1,'forecourt',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (124,1,'rss',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (125,1,'billion',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (126,1,'economic',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (127,1,'difference',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (128,1,'efforts',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (129,1,'several',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (130,1,'foreign',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (131,1,'well',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (132,1,'contested',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (133,1,'initially',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (134,1,'nationalist',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (135,1,'poorest',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (136,1,'modernising',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (137,1,'emerged',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (138,1,'helped',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (139,1,'general',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (140,1,'sanitation',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (141,1,'reducing',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (142,1,'barack',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (143,1,'house',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (144,1,'bring',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (145,1,'people',6,'1.52');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (146,1,'focus',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (147,1,'aspirations',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (148,1,'sold',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (149,1,'national',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (150,1,'did',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (151,1,'minister',9,'2.28');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (152,1,'prevent',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (153,1,'like',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (154,1,'parliament',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (155,1,'gujarati',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (156,1,'dmodrds',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (157,1,'years',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (158,1,'modi',16,'4.06');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (159,1,'domestically',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (160,1,'appreciated',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (161,1,'qualitative',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (162,1,'swachh',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (163,1,'starting',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (164,1,'vadodara',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (165,1,'india',13,'3.3');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (166,1,'secretary',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (167,1,'led',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (168,1,'sangh',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (169,1,'improving',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (170,1,'despite',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (171,1,'tea',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (172,1,'narendra',11,'2.79');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (173,1,'been',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (174,1,'chief',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (175,1,'majority',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (176,1,'sabha',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (177,1,'campaigns',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (178,1,'controversial',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (179,1,'popular',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (180,1,'known',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (181,1,'media',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (182,1,'administration',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (183,1,'increased',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (184,1,'state',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (185,1,'pracharak',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (186,1,'leader',7,'1.78');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (187,1,'won',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (188,1,'office',2,'0.51');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (189,1,'poor',4,'1.02');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (190,1,'decisive',3,'0.76');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (191,1,'significantly',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (192,1,'first',1,'0.25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (193,2,'capital',1,'33.33');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (194,2,'karnataka',2,'66.67');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (195,3,'capital',1,'50');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (196,3,'karnataka',1,'50');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (197,4,'mtech',1,'25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (198,4,'student',1,'25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (199,4,'name',1,'25');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (200,4,'supriya',1,'25');

/*Table structure for table `t_word` */

DROP TABLE IF EXISTS `t_word`;

CREATE TABLE `t_word` (
  `f_code` int(10) NOT NULL auto_increment,
  `f_word` varchar(30) default NULL,
  PRIMARY KEY  (`f_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_word` */

insert into `t_word` (`f_code`,`f_word`) values (1,'is');
insert into `t_word` (`f_code`,`f_word`) values (2,'was');
insert into `t_word` (`f_code`,`f_word`) values (3,'that');
insert into `t_word` (`f_code`,`f_word`) values (4,'this');
insert into `t_word` (`f_code`,`f_word`) values (5,'where');
insert into `t_word` (`f_code`,`f_word`) values (6,'the');
insert into `t_word` (`f_code`,`f_word`) values (7,'am');
insert into `t_word` (`f_code`,`f_word`) values (8,'he');
insert into `t_word` (`f_code`,`f_word`) values (9,'she');
insert into `t_word` (`f_code`,`f_word`) values (10,'it');
insert into `t_word` (`f_code`,`f_word`) values (11,'they');
insert into `t_word` (`f_code`,`f_word`) values (12,'hello');
insert into `t_word` (`f_code`,`f_word`) values (13,'are');
insert into `t_word` (`f_code`,`f_word`) values (14,'how');
insert into `t_word` (`f_code`,`f_word`) values (15,'you');
insert into `t_word` (`f_code`,`f_word`) values (17,'where');
insert into `t_word` (`f_code`,`f_word`) values (18,'short');
insert into `t_word` (`f_code`,`f_word`) values (19,'tall');
insert into `t_word` (`f_code`,`f_word`) values (20,'big');
insert into `t_word` (`f_code`,`f_word`) values (21,'with');
insert into `t_word` (`f_code`,`f_word`) values (22,'all');
insert into `t_word` (`f_code`,`f_word`) values (23,'etc');
insert into `t_word` (`f_code`,`f_word`) values (24,'see');
insert into `t_word` (`f_code`,`f_word`) values (25,'saw');
insert into `t_word` (`f_code`,`f_word`) values (26,'my');
insert into `t_word` (`f_code`,`f_word`) values (27,'am');
insert into `t_word` (`f_code`,`f_word`) values (28,'i');
insert into `t_word` (`f_code`,`f_word`) values (29,'do');
insert into `t_word` (`f_code`,`f_word`) values (30,'was');
insert into `t_word` (`f_code`,`f_word`) values (31,'is');
insert into `t_word` (`f_code`,`f_word`) values (32,'not');
insert into `t_word` (`f_code`,`f_word`) values (33,'nor');
insert into `t_word` (`f_code`,`f_word`) values (34,'either');
insert into `t_word` (`f_code`,`f_word`) values (35,'neither');
insert into `t_word` (`f_code`,`f_word`) values (36,'that');
insert into `t_word` (`f_code`,`f_word`) values (37,'over');
insert into `t_word` (`f_code`,`f_word`) values (38,'out');
insert into `t_word` (`f_code`,`f_word`) values (39,'keep');
insert into `t_word` (`f_code`,`f_word`) values (40,'and');
insert into `t_word` (`f_code`,`f_word`) values (41,'from');
insert into `t_word` (`f_code`,`f_word`) values (42,'form');
insert into `t_word` (`f_code`,`f_word`) values (43,'full');
insert into `t_word` (`f_code`,`f_word`) values (44,'the');
insert into `t_word` (`f_code`,`f_word`) values (45,'off');
insert into `t_word` (`f_code`,`f_word`) values (46,'an');
insert into `t_word` (`f_code`,`f_word`) values (47,'or');
insert into `t_word` (`f_code`,`f_word`) values (48,'had');
insert into `t_word` (`f_code`,`f_word`) values (49,'as');
insert into `t_word` (`f_code`,`f_word`) values (50,'to');
insert into `t_word` (`f_code`,`f_word`) values (51,'him');
insert into `t_word` (`f_code`,`f_word`) values (52,'self');
insert into `t_word` (`f_code`,`f_word`) values (53,'data');
insert into `t_word` (`f_code`,`f_word`) values (54,'bad');
insert into `t_word` (`f_code`,`f_word`) values (55,'free');
insert into `t_word` (`f_code`,`f_word`) values (56,'could');
insert into `t_word` (`f_code`,`f_word`) values (57,'can');
insert into `t_word` (`f_code`,`f_word`) values (58,'shall');
insert into `t_word` (`f_code`,`f_word`) values (59,'should');
insert into `t_word` (`f_code`,`f_word`) values (60,'kept');
insert into `t_word` (`f_code`,`f_word`) values (61,'also');
insert into `t_word` (`f_code`,`f_word`) values (62,'on');
insert into `t_word` (`f_code`,`f_word`) values (63,'down');
insert into `t_word` (`f_code`,`f_word`) values (64,'have');
insert into `t_word` (`f_code`,`f_word`) values (65,'has');
insert into `t_word` (`f_code`,`f_word`) values (66,'one');
insert into `t_word` (`f_code`,`f_word`) values (67,'only');
insert into `t_word` (`f_code`,`f_word`) values (68,'in');
insert into `t_word` (`f_code`,`f_word`) values (69,'therefore');
insert into `t_word` (`f_code`,`f_word`) values (70,'then');
insert into `t_word` (`f_code`,`f_word`) values (71,'take');
insert into `t_word` (`f_code`,`f_word`) values (72,'took');
insert into `t_word` (`f_code`,`f_word`) values (73,'need');
insert into `t_word` (`f_code`,`f_word`) values (74,'we');
insert into `t_word` (`f_code`,`f_word`) values (75,'you');
insert into `t_word` (`f_code`,`f_word`) values (76,'yours');
insert into `t_word` (`f_code`,`f_word`) values (77,'one');
insert into `t_word` (`f_code`,`f_word`) values (78,'your');
insert into `t_word` (`f_code`,`f_word`) values (79,'a');
insert into `t_word` (`f_code`,`f_word`) values (80,'be');
insert into `t_word` (`f_code`,`f_word`) values (81,'being');
insert into `t_word` (`f_code`,`f_word`) values (82,'because');
insert into `t_word` (`f_code`,`f_word`) values (83,'cannot');
insert into `t_word` (`f_code`,`f_word`) values (84,'would');
insert into `t_word` (`f_code`,`f_word`) values (85,'not');
insert into `t_word` (`f_code`,`f_word`) values (86,'for');
insert into `t_word` (`f_code`,`f_word`) values (87,'off');
insert into `t_word` (`f_code`,`f_word`) values (88,'of');
insert into `t_word` (`f_code`,`f_word`) values (89,'soon');
insert into `t_word` (`f_code`,`f_word`) values (90,'nothing');
insert into `t_word` (`f_code`,`f_word`) values (91,'top');
insert into `t_word` (`f_code`,`f_word`) values (92,'bottom');
insert into `t_word` (`f_code`,`f_word`) values (93,'down');
insert into `t_word` (`f_code`,`f_word`) values (94,'up');
insert into `t_word` (`f_code`,`f_word`) values (95,'list');
insert into `t_word` (`f_code`,`f_word`) values (96,'start');
insert into `t_word` (`f_code`,`f_word`) values (97,'stop');
insert into `t_word` (`f_code`,`f_word`) values (98,'how');
insert into `t_word` (`f_code`,`f_word`) values (99,'see');
insert into `t_word` (`f_code`,`f_word`) values (100,'sea');
insert into `t_word` (`f_code`,`f_word`) values (101,'these');
insert into `t_word` (`f_code`,`f_word`) values (102,'this');
insert into `t_word` (`f_code`,`f_word`) values (103,'if');
insert into `t_word` (`f_code`,`f_word`) values (104,'else');
insert into `t_word` (`f_code`,`f_word`) values (105,'much');
insert into `t_word` (`f_code`,`f_word`) values (106,'more');
insert into `t_word` (`f_code`,`f_word`) values (107,'most');
insert into `t_word` (`f_code`,`f_word`) values (108,'give');
insert into `t_word` (`f_code`,`f_word`) values (109,'gave');
insert into `t_word` (`f_code`,`f_word`) values (110,'given');
insert into `t_word` (`f_code`,`f_word`) values (111,'bangalore');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
