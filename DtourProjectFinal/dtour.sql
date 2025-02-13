-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 192.168.0.96    Database: dtour
-- ------------------------------------------------------
-- Server version	5.5.32

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `answer_num` int(11) NOT NULL AUTO_INCREMENT,
  `qna_num` int(11) DEFAULT NULL,
  `answer_writer` varchar(30) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  PRIMARY KEY (`answer_num`),
  KEY `answer_writer` (`answer_writer`),
  KEY `qna_num` (`qna_num`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`answer_writer`) REFERENCES `manager` (`Id`),
  CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`qna_num`) REFERENCES `qna` (`qna_num`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,1,NULL,'123테스트'),(3,1,'manager','ㅇㅇㅇㅇㅇ'),(4,1,'manager','안녕하세요'),(5,2,'manager','testtest'),(6,3,'manager','의견 제시해주셔서 감사합니다. 추후에 기능 추가하겠습니다. 감사합니다.'),(7,3,'manager','dd'),(8,11,'manager','testtest'),(9,7,'manager','dd'),(10,16,'manager','test test');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_num` int(11) NOT NULL AUTO_INCREMENT,
  `board_num` int(11) DEFAULT NULL,
  `comment_writer` varchar(30) NOT NULL,
  `content` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_num`),
  KEY `board_num` (`board_num`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`board_num`) REFERENCES `freeboard` (`board_num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `festival` (
  `id` int(11) NOT NULL,
  `gu` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `period` varchar(20) DEFAULT NULL,
  `addr` varchar(20) NOT NULL,
  `method` varchar(10) NOT NULL,
  `first_year` int(11) NOT NULL,
  `visit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (1,'본청','형형색색 달구벌 관등놀이','문화예술','미개최','대구전역','혼합형',2013,'미개최'),(2,'본청','대구포크페스티벌','문화예술','2023-10-06_10-07','코오롱야외음악당','혼합형',2015,'18000'),(3,'본청','대구국제재즈축제','문화예술','2023-10-06_10-08','수성못','대면',2005,'10000'),(4,'본청','대구생활문화제 ','문화예술','2023-05-13_05-14','생활문화센터 등 대구일원','혼합형',2014,'1500'),(5,'본청','파워풀대구페스티벌','문화예술','2023-05-13_05-14','국채보상로 일원','대면',2005,'800000'),(6,'본청','대구국제뮤지컬페스티벌','문화예술','2023-05-19_06-05','오페라하우스 및 공연장','혼합형',2007,'32617'),(7,'본청','대구국제오페라축제','문화예술','2023-10-06_11-11','대구오페라하우스 및 대구일원','대면',2003,'28557'),(8,'본청','대구콘텐츠페어','기타(산업육성)','2023-10-07_10-08','엑스코','혼합형',2022,'3374(오프라인 2604, 온라인 770)'),(9,'본청','팔공산 산중전통장터 승시 축제','전통역사','2023-10-07_10-09','동화사','대면',2010,'45268'),(10,'본청','대구치맥페스티벌','기타','2023-08-30_09-03','두류공원','대면',2013,'200000'),(11,'본청','제45회대구약령시한방문화축제','전통역사','2023-05-05_05-07','대구약령시일원','대면',1978,'130000'),(12,'중구','제18회 대구패션주얼리위크','특산물','2023-09-15_09-17','대구패션주얼리특구 일원','대면',2006,'2000'),(13,'중구','제10회 빨간구두이야기(수제화축제)','문화예술','2023-09-23','향촌동 수제화골목','대면',2014,'300'),(14,'중구','서문시장글로벌대축제','전통역사','미개최','서문시장일대','혼합',1997,'미개최'),(15,'중구','교동시장한마음축제','전통역사','미개최','교동시장일대','혼합',2011,'미개최'),(16,'중구','대구 문화재야행','문화예술','2023-08-18_08-19','경상감영공원','대면',2016,'12723'),(17,'중구','제11회 대구스트리트모터페스티벌','기타','2023-05-20_05-21','남산동자동차부속골목일원','대면',2010,'10000'),(18,'중구','제11회 김광석, 나의 노래 다시부르기','문화예술','2023-10-07','신천둔치','대면',2013,'4000'),(19,'중구','제34회 동성로축제','기타','2023-05-12_05-14','동성로일원','대면',1990,'85000'),(20,'중구','제31회 봉산미술제','문화예술','미개최','봉산문화거리일원','대면',1993,'5000'),(21,'중구','김광석길페스티벌','문화예술','2023-10-21_10-22','김광석거리일원','대면',2020,'35000'),(22,'중구','대구화교중화문화축제','문화예술','미개최','대구화교소학교, 종로거리일원','대면',2006,'미개최'),(23,'동구','팔공산 벚꽃축제','생태자연','2023-04-06_04-09','팔공산동화지구','대면',2009,'미개최'),(24,'동구','팔공산 단풍축제','생태자연','2023-10-27_10-31','팔공산동화지구','미정',2000,'온라인 개최'),(25,'서구','달구벌목민관 부임 마을축제','전통역사','2023-10-14_10-15','서구일대북비산네거리','대면',2015,'미개최'),(26,'남구','제28회 대덕제 대구앞산축제','문화예술','2023-05-05_05-06','앞산빨래터공원','대면',1987,'10000'),(27,'남구','제11회 로드페스티벌','문화예술','2023-06-17_06-18','대명공연거리','대면',2013,'5000'),(28,'남구','2023 대구할로윈축제','문화예술','2023-10-28_10-29','안지랑곱창골목','대면',2018,'5000'),(29,'북구','금호강바람소리길축제','문화예술,생태환경','2023-09-15_09-17','금호강 산격대교 하단','대면',2015,'50000'),(30,'북구','떡볶이 페스티벌','문화예술','2023-06-17_06-18','DGB대구은행파크','대면',2021,'30000'),(31,'북구','논두렁밭두렁마을축제','생태환경','2023-10-28','학정동 들녘','대면',2014,'4000'),(32,'북구','댕댕이 페스티벌','주민화합','2023-05-20_05-21','금호강 산격대교 하단','대면',2023,'미개최'),(33,'수성구','수성못페스티벌','문화예술','2023-09-22_09-24','수성못','대면',2014,'180000'),(34,'달서구','장미꽃 필 무렵','생태자원','2023-05-19_05-21','이곡장미공원 등','대면',2011,'5300'),(35,'달서구','선사문화체험축제','전통역사','2023-05-12_05-13','한샘청동공원 등','대면',2015,'5000'),(36,'달서구','희망달서 큰잔치','주민화합','2023-10-14_10-15','달서아트센터 일원','대면',2013,'5000'),(37,'달성군','제27회 참꽃 문화제','문화예술','2023-04-22_04-23','비슬산','대면',1997,'미개최'),(38,'달성군','2023 100대 피아노','문화예술','2023-10-07','사문진야외공연장','대면',2012,'20000'),(39,'달성군','yes 키즈존','문화예술','2023-05-21 and 10-07','강정보, 국립대구과학관','대면',2023,'미개최');
/*!40000 ALTER TABLE `festival` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freeboard`
--

DROP TABLE IF EXISTS `freeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freeboard` (
  `board_num` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `writer` varchar(30) NOT NULL,
  `content` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` mediumtext,
  `passwd` varchar(20) NOT NULL,
  PRIMARY KEY (`board_num`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeboard`
--

LOCK TABLES `freeboard` WRITE;
/*!40000 ALTER TABLE `freeboard` DISABLE KEYS */;
INSERT INTO `freeboard` VALUES (38,'김광석길 다녀왔어요','홍길동','김광석길 다녀왔어요','2024-12-19 08:57:36','imageFile/51.jpg','123');
/*!40000 ALTER TABLE `freeboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interestlist`
--

DROP TABLE IF EXISTS `interestlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interestlist` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `num` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interestlist`
--

LOCK TABLES `interestlist` WRITE;
/*!40000 ALTER TABLE `interestlist` DISABLE KEYS */;
INSERT INTO `interestlist` VALUES (20,'abc',29,'계명대학교 동산의료원 의료선교박물관','대구광역시 중구 달구벌대로 2029','053-250-8700'),(21,'abc',7,'대구미술관','대구광역시 수성구 미술관로 40',''),(23,'abc',1,'대구 근대골목','대구광역시 중구 일대','053-661-2624'),(24,'abc',17,'국립대구박물관','대구광역시 수성구 청호로 321','053-768-6051~2'),(30,'123',7,'83타워','대구광역시 달서구 두류공원로 200','053-620-0114'),(31,'123',12,'경상감영공원','대구광역시 중구 경상감영길 99','053-254-9404'),(32,'123',8,'서문시장','대구광역시 중구 큰장로26길 45','053-256-6341'),(33,'123',5,'팔공산','대구광역시 동구 팔공산로185길 68','053-989-8300'),(34,'123',29,'계명대학교 동산의료원 의료선교박물관','대구광역시 중구 달구벌대로 2029','053-250-8700'),(35,'123',17,'국립대구박물관','대구광역시 수성구 청호로 321','053-768-6051~2'),(36,'123',15,'교동시장한마음축제','교동시장일대','미개최'),(37,'123',21,'김광석길페스티벌','김광석거리일원','2023-10-21_10-22'),(39,'123',16,'국립대구과학관','대구광역시 달성군 유가면 테크노대로 6길 20','0507-1465-6114'),(41,'123',7,'대구국제오페라축제','대구오페라하우스 및 대구일원','2023-10-06_11-11'),(43,'123',39,'yes 키즈존','강정보, 국립대구과학관','2023-05-21 and 10-07'),(44,'123',38,'2023 100대 피아노','사문진야외공연장','2023-10-07'),(45,'123',6,'갓바위','대구광역시 동구 갓바위로 229',''),(46,'123',27,'남평문씨 본리 세거지(인흥마을)','대구광역시 달성군 화원읍 인흥3길 16','053-631-8686'),(47,'123',12,'녹동서원','대구광역시 달성군 가창면 우록길 218','053-767-5790'),(48,'123',1,'대구 근대골목','대구광역시 중구 일대','053-661-2624'),(49,'123',14,'대구수목원','대구광역시 달서구 화암로 342','053-803-7270'),(50,'123',15,'대구시민안전테마파크','대구광역시 동구 팔공산로 1155','053-980-7777'),(51,'123',2,'대구약령시','대구광역시 중구 달구벌대로 415길 49','053-253-4729 (대구약령시한의약박물관)'),(52,'123',13,'대구사격장','대구광역시 북구 문주길 170','053-312-0000'),(53,'123',31,'수태골 계곡','대구광역시 동구 팔공산로 1037-10',''),(54,'123',8,'동화사','대구광역시 동구 동화사1길 1','053-980-7900'),(55,'123',19,'부인사','대구광역시 동구 팔공산로 967-28','053-982-5006'),(56,'123',23,'동촌유원지','대구광역시 동구 효동로 2길 72','053-662-2865'),(57,'123',36,'염불암 계곡','대구광역시 동구 도학동',''),(58,'123',32,'신숭겸장군 유적지','대구광역시 동구 신숭겸길 17','053-981-6407'),(59,'123',26,'하중도','대구광역시 북구 노곡동','053-803-1552'),(60,'123',34,'이상화,서상돈 고택','대구광역시 중구 서성로 6-1','053-256-3762'),(61,'123',28,'화원유원지','대구광역시 달성군 화원읍 사문진로 1길 40-14','053-659-4465'),(62,'123',18,'들안길 먹거리타운','대구광역시 수성구 상동, 두산동 일대','053-666-2763'),(63,'123',30,'대구향교','대구광역시 중구 명륜로 112','053-422-8700'),(64,'123',33,'묘골마을(육신사)','대구광역시 달성군 하빈면 육신사길 64','053-668-2482'),(65,'123',4,'이월드','대구광역시 달서구 두류공원로 200','070-7549-8112'),(66,'123',22,'도동 측백나무숲','대구광역시 동구 도동 산 78-1','053-985-6406'),(67,'123',7,'대구미술관','대구광역시 수성구 미술관로 40',''),(68,'123',10,'스파밸리와 네이처파크','대구광역시 달성군 가창면 가창로 891','1688-8511'),(69,'123',3,'도동서원','대구광역시 달성군 구지면 구지서로 726','053-616-6407'),(70,'123',11,'마비정벽화마을','대구광역시 달성군 화원읍 마비정길 262-5','053-633-2222'),(71,'123',24,'봉무공원','대구광역시 동구 팔공로 50길 66','053-662-3545'),(72,'123',21,'불로동 고분군','대구광역시 동구 팔공로32길','053-662-2363'),(73,'123',25,'앞산 카페거리','대구광역시 남구 대명로 141 일대','053-664-2765'),(74,'123',20,'옻골마을(경주최씨 종가)','대구광역시 동구 옻골로 195-5','053-983-1040'),(75,'123',5,'앞산공원 전망대','대구광역시 남구 앞산순환로 454','053-803-5450'),(76,'123',35,'파계사','대구광역시 동구 파계로 741','053-984-4550'),(77,'manager',7,'83타워','대구광역시 달서구 두류공원로 200','053-620-0114'),(80,'1111',29,'계명대학교 동산의료원 의료선교박물관','대구광역시 중구 달구벌대로 2029','053-250-8700'),(83,'1111',1,'대구 근대골목','대구광역시 중구 일대','053-661-2624'),(84,'1111',17,'국립대구박물관','대구광역시 수성구 청호로 321','053-768-6051~2'),(86,'1111',7,'대구미술관','대구광역시 수성구 미술관로 40',''),(89,'1111',21,'김광석길페스티벌','김광석거리일원','2023-10-21_10-22'),(91,'1111',14,'서문시장글로벌대축제','서문시장일대','미개최'),(92,'1111',7,'83타워','대구광역시 달서구 두류공원로 200','053-620-0114'),(93,'1111',12,'경상감영공원','대구광역시 중구 경상감영길 99','053-254-9404');
/*!40000 ALTER TABLE `interestlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Id` varchar(20) NOT NULL,
  `pw` varchar(30) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('manager','1234','매니저');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollitem`
--

DROP TABLE IF EXISTS `pollitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pollitem` (
  `listnum` smallint(6) NOT NULL,
  `itemnum` smallint(6) NOT NULL DEFAULT '0',
  `item` varchar(50) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listnum`,`itemnum`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollitem`
--

LOCK TABLES `pollitem` WRITE;
/*!40000 ALTER TABLE `pollitem` DISABLE KEYS */;
INSERT INTO `pollitem` VALUES (1,0,'답변1',1),(1,1,'답변2',3),(1,2,'답변3',6),(1,3,'답변4',2),(2,0,'팔공산',4),(2,1,'동성로',6),(2,2,'두류공원',8),(2,3,'서문시장',4);
/*!40000 ALTER TABLE `pollitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polllist`
--

DROP TABLE IF EXISTS `polllist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polllist` (
  `num` smallint(6) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL DEFAULT '',
  `sdate` date DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `wdate` date DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '1',
  `active` smallint(6) DEFAULT '1',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polllist`
--

LOCK TABLES `polllist` WRITE;
/*!40000 ALTER TABLE `polllist` DISABLE KEYS */;
INSERT INTO `polllist` VALUES (1,'테스트','2024-12-01','2024-12-31','2024-12-18',1,1),(2,'대구 관광지 중 가장 추천하고 싶은 장소?','2024-12-19','2024-12-20','2024-12-19',1,1);
/*!40000 ALTER TABLE `polllist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qna_num` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `writer` varchar(30) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`qna_num`),
  KEY `writer` (`writer`),
  CONSTRAINT `qna_ibfk_1` FOREIGN KEY (`writer`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'test','1111','test','2024-12-16 01:45:27'),(2,'test','1111','test','2024-12-16 05:39:06'),(3,'맛집 리스트 추가 건의','1111','관광지 주변에 맛집 어떤 것이 있는지 추가해주세요!','2024-12-17 05:34:08'),(5,'1','2222','1','2024-12-17 07:36:28'),(6,'2','2222','2','2024-12-17 07:36:31'),(7,'3','2222','3','2024-12-17 07:36:35'),(8,'1234','2222','1234','2024-12-17 07:36:38'),(11,'8','2222','8','2024-12-17 07:36:48'),(12,'test','2222','test','2024-12-18 01:37:15'),(13,'test','2222','test','2024-12-18 01:37:19'),(14,'test','2222','test','2024-12-18 01:37:27'),(16,'test1','2222','test1','2024-12-18 01:37:47');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regionboard`
--

DROP TABLE IF EXISTS `regionboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regionboard` (
  `RB_IDX` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` text NOT NULL,
  `NAME` varchar(10) NOT NULL,
  `ADDRESS` text NOT NULL,
  `PHONE_NUMBER` varchar(20) NOT NULL,
  `CONTENT` text NOT NULL,
  `REGDATE` datetime DEFAULT NULL,
  `IMAGE_PATH` varchar(255) DEFAULT NULL,
  `VIDEO_PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RB_IDX`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regionboard`
--

LOCK TABLES `regionboard` WRITE;
/*!40000 ALTER TABLE `regionboard` DISABLE KEYS */;
INSERT INTO `regionboard` VALUES (42,'동화사','manager','test','test','test','2024-12-19 18:00:43','uploads/3dcd8597-642f-48fa-8585-14d3345097d2_1.jpg','uploads/699af7c0-b2a0-443f-b06a-4ff87b9bbfa6_'),(43,'수성구 야경','manager','대구광역시 수성구','053','대구광역시 수성구 야경입니다','2024-12-19 18:04:38','uploads/fda3de52-c77c-4eec-bd81-7977b3a12700_캡처.JPG','uploads/1734599295375_video1.mp4'),(44,'대구 야경 명소 TOP3','manager','대구','053','대구 야경 명소','2024-12-19 18:07:32','uploads/e16fa033-4224-4082-8561-2b939ba3c1c1_캡처.JPG','uploads/567e4fdc-5838-430e-a7ec-7151ff76850b_videoplayback.mp4');
/*!40000 ALTER TABLE `regionboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour12`
--

DROP TABLE IF EXISTS `tour12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `addr` varchar(30) NOT NULL,
  `num` varchar(30) DEFAULT NULL,
  `parking` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour12`
--

LOCK TABLES `tour12` WRITE;
/*!40000 ALTER TABLE `tour12` DISABLE KEYS */;
INSERT INTO `tour12` VALUES (1,'비슬산','대구광역시 달성군 유가읍 양리 산5','053-614-5481','여'),(2,'디아크','대구광역시 달성군 다사읍 강정본길 57','053-585-0916~7','여'),(3,'신천','대구광역시 중구 동인동3가','053-605-8102~8','여'),(4,'국채보상운동기념공원','대구광역시 중구 국채보상로 670','053-254-9401','여'),(5,'팔공산','대구광역시 동구 팔공산로185길 68','053-989-8300','여'),(6,'수성못','대구광역시 수성구 용학로 35-5','053-761-0645','여'),(7,'83타워','대구광역시 달서구 두류공원로 200','053-620-0114','여'),(8,'서문시장','대구광역시 중구 큰장로26길 45','053-256-6341','여'),(9,'대구스타디움','대구광역시 수성구 유니버시아드로 180','053-803-8300','여'),(10,'동성로','대구광역시 중구 동성로3가 56-3','053-252-2696(동성로 관광안내소)','인근 유료주차장'),(11,'달성토성','대구광역시 중구 달성공원로 35','053-803-7350','여'),(12,'경상감영공원','대구광역시 중구 경상감영길 99','053-254-9404','여');
/*!40000 ALTER TABLE `tour12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourlist`
--

DROP TABLE IF EXISTS `tourlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourlist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL,
  `addr` varchar(30) NOT NULL,
  `content` text,
  `num` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourlist`
--

LOCK TABLES `tourlist` WRITE;
/*!40000 ALTER TABLE `tourlist` DISABLE KEYS */;
INSERT INTO `tourlist` VALUES (1,'대구 근대골목','대구광역시 중구 일대','대구 근대문화의 발자취를 따라 떠나는 신나는 골목 투어. 청라언덕에서 시작해 선교사 주택과 3.1만세운동길, 계산성당, 이상화와 서상돈고택 한의약박물관, 진골목 등을 두루 살피는 도심 걷기 여행 코스 ','053-661-2624'),(2,'대구약령시','대구광역시 중구 달구벌대로 415길 49','대구약령시는 조선 효종 9년(1658년) 경상감사가 직무하는 감영(監營)의 소재지로 집결하는 약재 중에 좋은 것은 중앙기관으로 상납하고 그 나머지를 일반인들에게 판매하면서 시작되었다. 일제의 탄압에도 불구하고 끈질긴 생명력을 유지하여 350년의 전통을 꿋꿋이 이어나오고 있는 곳이다. 현재 대구약령시의 자취가 남아있는 곳은 대구광역시 중구 남성동 일대이다. 이 곳은 옛 대구성(大邱城) 이 있었던 남성로(南城路)의 약전(藥廛)골목이며, 남성로를 따라 약 650m 도로에 한약방과 한의원, 인삼사, 약업사, 제탕원, 제환·제분소, 한약찻집, 한방 음식점, 한방·전통상품점 등 350여 업소가 즐비하게 들어서 약령시를 형성하고 있다. 매년 5월초에는 대구약령시축제를 개최하여 약령시의 문화적 가치를 전국적으로 홍보함으로써 약령시와 한의약에 대한 국민적 관심과 사랑을 유도하고 있다.','053-253-4729 (대구약령시한의약박물관)'),(3,'도동서원','대구광역시 달성군 구지면 구지서로 726','아름드리 은행나무와 아름다운 토담을 품은 고즈넉한 서원. 조선 초기의 성리학자 김굉필을 배향한 서원. 1568년 비슬산 동쪽에 건립되었다가 임진왜란 때 소실된 이후 지금 자리에 중건. 조선 중기 서원 건축의 특징을 살필 수 있다. 불필요한 장식 대신 간소함을 추구했으며 서원 입구인 수월루와 강당격인 중정당, 사당이 일직선상에 배치되어 있다. 중정당 기단에 여의주와 물고기를 물고 있는 4개의 용머리 조각과 수막새의 장식무늬가 빼어난 토담이 독특하다','053-616-6407'),(4,'이월드','대구광역시 달서구 두류공원로 200','놀이기구와 전시공간이 공존하는 유럽식 도시공원으로 남녀노소 누구나 즐길 수 있는 공간, 83타워 전망대는 밤이 되면 오색찬란한 이월드 야경과 대구 시내 야경이 360도로 펼쳐진다.','070-7549-8112'),(5,'앞산공원 전망대','대구광역시 남구 앞산순환로 454','대구 시내를 조망할 수 있는 으뜸 명소로, S자로 굽어지며 흐르는 낙동강을 시작으로 오른쪽으로 도시를 감싸는 산자락이 겹겹이 펼쳐진다. 노을이 붉게 물든 하늘 아래 하나 둘 불을 밝히는 도심의 불빛이 잔물결 일렁이는 바다처럼 아름답게 펼쳐진다','053-803-5450'),(6,'갓바위','대구광역시 동구 갓바위로 229','갓바위는 정성껏 기도하는 사람의 소원 한 가지는 꼭 들어준다는 전설을 간직하고 있다. 갓바위가 있는 관봉에 올라서면 팔공산 능선과 구불구불한 길이 겹겹이 펼쳐진다. 보물 제431호로 지정된 관봉석조여래좌상 앞에서 정성스레 기도를 올리는 사람들로 사시사철 붐빈다',''),(7,'대구미술관','대구광역시 수성구 미술관로 40','대구미술관은 국내외의 근·현대미술을 소개하는 전시는 물론, 미술 강좌 등 다양한 교육프로그램 운영과 시민의 문화예술욕구에 부응하는 문화공간으로서의 역할을 담당하고 있다',''),(8,'동화사','대구광역시 동구 동화사1길 1','수려한 자연과 소중한 문화재를 품은 사찰. 팔공산 남쪽 기슭에 자리한 신라시대 사찰로 대웅전, 마애불좌상, 비로암 석조비로자나불좌상, 비로암 삼층석탑, 금당암 동·서 삼층석탑, 당간지주 등 경내에 문화유산이 많다. 전체 높이 33m에 이르는 세계 최대 규모 석조불상인 약사여래대불이 있다','053-980-7900'),(9,'김광석 다시그리기길과 방천시장','대구 중구 대봉동 6-11','방천시장 뒷골목, 350m 이어진 골목 담벼락에 김광석의 삶과 노래를 주제로 한 벽화가 실감나게 펼쳐진다. 드라마 \"하이드 지킬',' 나\"\"에 등장했던 장면을 따라 벽화 앞에서 기념사진 남기기'),(10,'스파밸리와 네이처파크','대구광역시 달성군 가창면 가창로 891','주암산 기슭 청정자연에서 물놀이와 온천 즐기기. 워터파크, 온천, 숲 속 호텔, 동물원과 식물원이 한 자리에 있는 복합테마파크. 맑은 공기를 마시며 한방과 힐링 콘셉트의 온천탕과 파도풀, 바데풀 등을 갖춘 워터파크를 즐길 수 있다. 네이처파크에는 구절초공원, 편백숲 등 자연친화적인 산책길이 잘 닦여 있다','1688-8511'),(11,'마비정벽화마을','대구광역시 달성군 화원읍 마비정길 262-5','옛 농촌 풍경이 마을 토담과 벽면을 가득 채운 정겨운 벽화마을. 마을길을 따라 1960~70년대 정겨운 농촌 풍경이 벽화로 꾸며져 있다. 벽화 외에도 연리목과 물레방아, 옛 우물, 거북바위와 남근석 등 볼거리가 다양. 농촌체험전시장에서 두부 만들기, 떡메치기, 열무김치 담그기 등 여러 가지 체험 프로그램을 이용할 수 있다. 체험은 20명 이상 가능하다','053-633-2222'),(12,'녹동서원','대구광역시 달성군 가창면 우록길 218','조선으로 귀화한 일본 장수 김충선을 기리는 서원. 임진왜란 때 귀화한 모하당 김충선을 추모하기 위해 1789년에 건립. 경내에는 녹동사, 향양문, 유적비, 서원 뒤쪽 삼정산에는 김충선의 묘소가 있다. 달성한일우호관, 김충선의 귀화 후 활약상을 보여주는 역사관, 체험실 등이 있다','053-767-5790'),(13,'대구사격장','대구광역시 북구 문주길 170','동양 최대 규모의 사격장에서 스트레스 한 방에 날리기. 실외 클레이사격장, 실내 권총사격장과 스크린사격장, 전투체험사격장 등 다양한 사격 체험 시설을 갖췄다. 방아쇠를 당기는 순간 짜릿한 손맛이 느껴지며, 멀리 표적을 겨냥하고 날아가는 접시를 맞추면서 스트레스를 날릴 수 있다. 안전요원의 안내에 따라 초보자도 쉽게 사격을 즐길 수 있다 실탄 사격은 만 14세 이상부터 가능, 신분증 지참 필수','053-312-0000'),(14,'대구수목원','대구광역시 달서구 화암로 342','쓰레기 매립장이 청정 수목원으로 재탄생. 쓰레기 매립장이었던 장소를 활용해 만든 전국 최초의 도심형 수목원. 약 246,503㎡ 면적에 약초원, 야생초화원, 방향식물원, 죽림원 등 23개 테마관이 있다. 산림문화전시관에서 쓰레기 매립장 복원, 우리의 나무 문화, 신기한 식물 탐험 등을 주제로 전시가 이뤄진다','053-803-7270'),(15,'대구시민안전테마파크','대구광역시 동구 팔공산로 1155','시민 안전의식 함양의 장. 지하철안전체험장, 교통안전체험장, 모노레일체험장 등 각종 안전체험장을 한 자리에서 경험. 소방관이 직접 심폐소생술(CPR) 등 체험을 도와 효과적인 학습 가능. 자칫 지루할 수도 있는 안전체험이 다채로운 구성과 소방관의 열정적인 시범으로 활기를 띤다. 진지한 표정으로 체험에 임하는 아이들이 훗날 어떠한 사고에도 의연히 대처할 수 있을 것만 같아 흐뭇하다','053-980-7777'),(16,'국립대구과학관','대구광역시 달성군 유가면 테크노대로 6길 20','과학이 쉽고 재밌어지는 공간. 놀이와 체험을 통해 과학을 배우는 과학놀이터. 다양한 전시와 체험 프로그램을 통해 과학에 쉽고 재미있게 접근한다. 상설전시관 외 천체투영관, 4D영상관, 천체관측소, 야외 과학놀이터 등 다양한 시설을 갖췄다','0507-1465-6114'),(17,'국립대구박물관','대구광역시 수성구 청호로 321','대구와 경북 지역 문화유산을 보고 체험하는 알찬 공간. 박물관 실내의 고대문화실, 중세문화실, 섬유복식실, 기획전시실과 야외의 유물 전시장, 유적공원, 토기가마전시장 등을 돌아보며 대구·경북 지역의 문화유산을 관람. 암각화 찍어보기, 탁본하기, 문화재 조각 맞추기 등 다양한 체험 프로그램을 운영','053-768-6051~2'),(18,'들안길 먹거리타운','대구광역시 수성구 상동, 두산동 일대','식당별로 국제대회 입상과 특색음식 있는 개발로 국내·외 방문객 에게 최고의 먹거리를 제공하는 관광 명소로서 각광을 받고 있는 곳이다. ‘먹자골목’이라고도 불린다. 들안길 일대에는 뷔페, 한식, 일식, 갈비, 회 등 다양한 음식점이 즐비하게 늘어서 있으며 최고의 맛과 시설로 손님을 맞이하고 있다. 국수, 해장국, 보쌈, 장어, 복어 등 한 두가지 만을 취급하는 전문식당들도 고유의 비법으로 손님을 끌고 있다. 인근에 수성유원지가 자리 잡고 있어, 식사 후 가볼만 하다.','053-666-2763'),(19,'부인사','대구광역시 동구 팔공산로 967-28','대한불교조계종 제9교구 본사인 동화사(桐華寺)의 말사로, 부인사(符仁寺) 또는 부인사(夫人寺)라고도 한다. 신라 선덕여왕 때 창건된 절로 추정하고 있다. 고려시대에 초조대장경의 판각이 이루어졌다고도 말해지는 부인사는 몽골 칩입시 화재로 대부분 소실되었다. 이후 중건하였으나 임진왜란 때 다시 불탔다. 지금 건물은 1930년대 초 비구니 허상득(許相得)이 원 위치에서 서북쪽으로 약 400m 거리에 있는 암자터에 중창한 것이다. 당우에는 석가모니불상과 아미타불상, 관세음보살상을 안치한 대웅전과 선덕묘, 2동의 요사채가 있다. 이 밖에도 주춧돌, 화려한 문양의 장대석(長臺石)을 볼 수 있다. <좀 더 알아보기> 부인사는 동구 신무동 팔공산 남쪽 중턱에 있는 사찰로 대한불교 조계종 제9교구 본사인 동화사의 말사이다. 현재의 부인사는 옛 부인사 경역의 뒷쪽 산밑에 자리잡고 있는 작은 절이지만 한때는 고려 초조대장경을 보관했던 호국사찰로서 매우 중요한 사찰이다. 그러나 부인사에 관한 개창시기나 연혁은 잘 알려지지 않아 부인사의 창건연대와 위치에 대해서는 논란이 많은 편이다. 당시 7세기 초 창건으로 전해오고 있는 현 부인사에는 신라 선덕여왕 어진을 모시고 매년 음력 3월 보름에 신무동 주민과 사찰측 및 경주 김씨 종중에서 선덕여왕 숭모제를 지내는 것에서 부인사의 내력을 짐작할 만하다. 옛 절터가 지금은 포도밭으로 변해 있지만 현 사찰에서 200m 남쪽에 당간지주가 남아 있고 팔공산 순환도로 남쪽으로 추정 금당좌가 연접하고 있어 옛날 번창기의 사역 범위를 보여주고 있다. 현 부인사는 6.25동란 때 불탄 것을 1959년에 중건한 것이다. 고려시대에는 국내에서 유일한 승시장이 부인사에 개설될 정도로 아주 번창했던 사찰이었음을 알 수 있다. 정도전의 송화암종사우운시서의 기록 중에도 부인사가 팔공산에 위치한 거찰이었음을 알 수 있다. 부인사는 고려 초조대장경의 판각처로 널리 알려져 있는데, 현종 3.4년(1013)경부터 조각되기 시작하여 숙종 4년(1099)에 완성된 총 1만 여권의 초조대장경은 처음 여왕사, 개국사 등에 봉안하였다가 그 후 어느 시기에 이곳 부인사에 봉안하게 되었고 이곳에서 여러번의 인간(印刊)이 있었다. 그후 고종 19년(1232) 몽고의 제2차 침입시 원군이 부인사 대장경과 황룡사 9층 목탑을 불태워버렸다. 이상의 자료들을 통해서도 부인사의 창건연대는 확실히 알 수 없지만 사찰의 위치가 지금의 영천 근방으로 팔공산 동화사와 인접해 있었고 거찰로서 고려 초조대장경을 보관하여 외침을 극복하려 했던 호국사찰임을 알 수 있다.','053-982-5006'),(20,'옻골마을(경주최씨 종가)','대구광역시 동구 옻골로 195-5','문화재청이 선정한 ‘전국 10대 아름다운 돌담길’. 350년 수령의 회화나무숲을 지나 마을에 들어서면 옛 돌담길을 따라 고택 20여 채가 옹기종기 모여 있다. 400여 년 이어온 고택을 통해 조선시대 생활양식을 살펴볼 수 있다. 마을에는 전통체험을 할 수 있는 프로그램을 운영한다. 마을 해설을 무료로 들을 수 있다','053-983-1040'),(21,'불로동 고분군','대구광역시 동구 팔공로32길','팔공산 남쪽 기슭에 펼쳐진 올록볼록 솟은 거대한 고분군. 삼국시대 형성된 대규모 고분군. 210여 기의 고분이 밀집되어 있다. 봄, 가을철에는 고분군 사이로 코스모스 등이 피어 한층 아름답고 서정적인 풍경을 선사한다. 능선을 따라 올록볼록 솟은 고분군 뒤로 대구 시가지가 한 눈에 들어온다. 고분 아래 생태 습지가 조성되어 있어 아이들 학습 공간으로 활용도가 높다','053-662-2363'),(22,'도동 측백나무숲','대구광역시 동구 도동 산 78-1','불로동에서 동쪽으로 2km쯤 가면 길 오른쪽에 내를 낀 향산이 나타난다. 이 산의 북쪽으로 비탈의 높이가 100여m에 길이 60여m의 낭떠러지를 온통 덮고 있는 울창한 숲이 바로 우리나라 천연기념물 제1호로 지정된 동구 도동 측백수림이다. 측백나무는 측백나무과에 딸린 상록교목으로 큰 것은 높이 20m에 이른다. 이곳의 측백수림은 측백나무의 남한지로써 식물지리학상의 중요성으로 인해 1934년 천연기념물로 지정되었다. 또한 이곳은 조선조 대구가 낳은 대학자인 서거정 선생이 찬미한 대구 10경중 한곳으로, 측백수림 아래에는 옛날 대구에서 영천·경주로 가는 길이 있어 절벽 아래를 흐르는 계곡수와 더불어 아름다운 경치를 이루어 행인들의 피로를 덜어 주었다고 한다.','053-985-6406'),(23,'동촌유원지','대구광역시 동구 효동로 2길 72','동촌유원지(44만평)는 대구시 동쪽 금호강변에 있는 유원지로 오래전부터 대구시민이 즐겨 찾는 곳이다. 각종 위락시설이 잘 갖춰져 있으며 드라이브를 즐길 수 있는 도로가 건설되어 있다. 수량이 많은 금호강에는 조교가 가설되어 있고 아양교가 걸쳐 있다.','053-662-2865'),(24,'봉무공원','대구광역시 동구 팔공로 50길 66','시민들의 휴식처로 각광을 받고 있는 도심 속 자연공원으로 55만평 규모의 넓은 대지에 테니스장, 족구장, 배드민턴장 등 각종 운동경기장과 운동기구가 갖추어져 있으며 야외공연장, 야영장, 어린이 놀이터가 마련되어 있음. 또한 시민들이 항상 즐길 수 있는 단산지 주변 일주 산책로를 정비하여 주요지점 12개소에 우리 꽃 2만 8천여 본을 집단 식재하여 시민들의 건강한 삶을 위한 휴식처이자 자연생태학습장이 되고 있음','053-662-3545'),(25,'앞산 카페거리','대구광역시 남구 대명로 141 일대','대명9동 일대 주택을 리모델링한 레스토랑, 아기자기한 개인 카페가 모여 있는 앞산카 페거리는 맛있는 식사와 커피, 디저트는 물론 봄에는 새하얀 벚꽃, 가을 은행나무 가로 수, 겨울에는 크리스마스 거리조명 등 계절별 인생샷을 남길 수 있어 커플 데이트 명소로 유명하다.','053-664-2765'),(26,'하중도','대구광역시 북구 노곡동','봄 유채꽃, 가을 코스모스가 장관. 상습 침수지이자 환경 오염원이던 땅을 정비해 계절별로 피는 꽃을 심으면서 시민들의 휴식처로 변신함. 봄에는 유채꽃과 보리, 가을에는 코스모스와 메밀을 심어 아름다운 풍광을 연출. 하중도 하류에는 하천 정화력을 가진 물억새를 식재했다','053-803-1552'),(27,'남평문씨 본리 세거지(인흥마을)','대구광역시 달성군 화원읍 인흥3길 16','문익점의 후손들이 대대손손 살아온 남평 문씨 집성촌. 문익점의 18대 후손인 문경호가 터를 닦고 남평 문씨 일가가 집성촌을 이룬 마을. 전형적인 배산임수 구조에 집과 도로가 반듯하게 정리되어 있어 주변 정경과 어우러져 아늑하고 평화로운 분위기를 풍긴다. 세거지 입구에 연못 등 쉼터가 잘 가꿔져 있으며 문화관광해설사도 배치되어 있다','053-631-8686'),(28,'화원유원지','대구광역시 달성군 화원읍 사문진로 1길 40-14','신라 때부터 꽃이 만발한 아름다운 동산이라고 해서 불려진 화원동산은 아름답고 수려한 경관을 자랑하며, 자연전망대에 오르면 낙동강을 한눈에 조망할 수 있음. 자연학습장과 동물원, 잔디 광장, 연못 등이 있으며 전망대까지 오리 전기차가 운행되고 있음. 사문진 주막촌, 사문진 나루터, 사문진 피크닉장 등이 있어 즐거운 강변 휴식공간으로 이용되고 있음','053-659-4465'),(29,'계명대학교 동산의료원 의료선교박물관','대구광역시 중구 달구벌대로 2029','대구의 몽마르트르에서 만나는 고풍스러운 옛 선교사 주택. 1910년 경 미국인 선교사 챔니스가 머물던 주택으로 현재 의료박물관으로 운영중. 담쟁이 넝쿨이 뒤덮인 벽돌 건물이 1900년대의 모습을 그대로 간직하고 있다. 당시 선교사들의 주거 양식을 살펴볼 수 있는 귀중한 문화유산이다. 1층 전시실에는 1800~1900년대 동서양 의료기기가 전시되어 있다.','053-250-8700'),(30,'대구향교','대구광역시 중구 명륜로 112','조선시대부터 이어져 내려온 공자의 가르침이 깃든 배움터. 조선 건국과 더불어 1398년 지금의 중구 교동에 대구향교 창건. 임진왜란 때 소실된 후 1932년 지금 자리에 대성전과 동서무, 명륜당 재이건. 1995년 유림회관이 신축되면서 현재의 모습을 갖추게 됨. 규모가 크지는 않지만 단아한 건물과 잘 가꿔진 조경 덕분에 조용히 사색하며 거닐기 좋다','053-422-8700'),(31,'수태골 계곡','대구광역시 동구 팔공산로 1037-10','수량이 풍부하고 울창한 숲과 기암괴석들이 절경을 이룬다. 계곡을 따라 시원한 산행을 즐길 수 있다.',''),(32,'신숭겸장군 유적지','대구광역시 동구 신숭겸길 17','태조 왕건을 대신해 목숨을 바친 신숭겸 장군의 충절이 깃든 곳. 고려 개국 공신인 신숭겸 장군이 공산 전투 때 태조 왕건 대신 순절한 역사적인 장소. 1607년 경상도 관찰사 류영선이 장군의 혼을 위로하고자 태조 왕건이 세웠던 옛 지묘사 터에 표충사와 표충단, 충렬비를 건립. 고종 8년 서원철폐령으로 표충사는 사라지고 후손들이 세운 표충재가 지금까지 남아 있음','053-981-6407'),(33,'묘골마을(육신사)','대구광역시 달성군 하빈면 육신사길 64','대구광역시 달성군 하빈면 묘리에 있는 사당이다. 조선 세조 때의 사육신 박팽년(朴彭年), 성삼문(成三問), 하위지(河緯地), 이개(李塏), 유성원(柳誠源), 유응부(兪應浮) 등의 위패를 봉안하고 있다','053-668-2482'),(34,'이상화,서상돈 고택','대구광역시 중구 서성로 6-1','일제에 항거한 대구 출신의 독립운동가를 만난다. 이상화 시인은 일제강점기에 민족의 광복을 위해 저항 정신의 횃불을 밝힌 시를 지었다. 그의 시향이 이상화고택에 남아 있다. 서상돈은 정부가 일본에 빚을 많이 져 국권을 상실한다고 생각하여 1907년 금연으로 나라의 빚을 갚자는 국채보상운동을 벌였다','053-256-3762'),(35,'파계사','대구광역시 동구 파계로 741','신라시대에 창건된 고찰로 동화사의 말사이다. 사찰 규모는 그리 크지 않지만 보물과 문화재급 건물이 많고 조용하고 아늑한 분위기. 팔공산 자락 아래 펼쳐진 사찰은 숲과 계곡으로 둘러싸여 멋스러운 느낌이다','053-984-4550'),(36,'염불암 계곡','대구광역시 동구 도학동','팔공산에서 가장 높은 곳에 위치한 암자인 염불암 주변에 있는 수려한 경관의 계곡이다.','');
/*!40000 ALTER TABLE `tourlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `passwd` varchar(30) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` date NOT NULL,
  `user_email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1111','1111','11111','남','2012-09-11','1111@1111.com'),('123','123','123','남','2009-02-15','123'),('2222','2222','2222','여','2024-12-12','222222222@naver.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `year` int(11) DEFAULT NULL,
  `visitors` double DEFAULT NULL,
  `prevVisitors` double DEFAULT NULL,
  `growthRate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (2024,88533904,85531134,3.89),(2023,103000000,98800000,4.2),(2022,98800000,87700000,12.7),(2021,87700000,86200000,1.7),(2020,86200000,107000000,-19.7),(2019,107000000,105000000,2.3);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_age`
--

DROP TABLE IF EXISTS `visitor_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_age` (
  `visitor_age` text,
  `M_Ratio_2024` double DEFAULT NULL,
  `F_Ratio_2024` double DEFAULT NULL,
  `M_Ratio_2023` double DEFAULT NULL,
  `F_Ratio_2023` double DEFAULT NULL,
  `M_Ratio_2022` double DEFAULT NULL,
  `F_Ratio_2022` double DEFAULT NULL,
  `M_Ratio_2021` double DEFAULT NULL,
  `F_Ratio_2021` double DEFAULT NULL,
  `M_Ratio_2020` double DEFAULT NULL,
  `F_Ratio_2020` double DEFAULT NULL,
  `M_Ratio_2019` double DEFAULT NULL,
  `F_Ratio_2019` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_age`
--

LOCK TABLES `visitor_age` WRITE;
/*!40000 ALTER TABLE `visitor_age` DISABLE KEYS */;
INSERT INTO `visitor_age` VALUES ('70세 이상',2.9,3.8,2.9,3.9,2.8,3.8,2.7,3.6,2.7,3.4,2.1,2.5),('60~69세',6.5,5.8,6.4,5.7,6.1,5.6,5.8,5.1,5.4,4.8,4.7,4.3),('50~59세',8.9,7.2,8.9,7.2,8.7,7.4,8.7,7,8.9,7.1,8.8,7.4),('40~49세',9,6.1,9,6,8.8,6,9.1,5.8,9.1,6.2,9.4,6.8),('30~39세',10.9,7.5,10.7,7.3,10.1,7.1,10.2,6.8,9.9,6.7,10,7.1),('20~29세',13,10.1,13.5,10.2,13.8,10.6,14.8,11.1,14.9,11,14.9,11.2),('10~19세',3.4,3.2,3.5,3.1,3.8,3.4,3.8,3.4,4.2,3.7,4.8,4.2),('0~9세',0.8,0.9,0.8,0.9,1,1,1,1,1,1.1,0.9,0.9);
/*!40000 ALTER TABLE `visitor_age` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-20  9:17:58
