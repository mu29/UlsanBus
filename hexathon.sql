# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.6.24)
# Database: hexathon
# Generation Time: 2015-05-02 07:13:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table friday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friday`;

CREATE TABLE `friday` (
  `start` char(255) DEFAULT NULL,
  `dest` char(255) DEFAULT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table monday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `monday`;

CREATE TABLE `monday` (
  `start` char(255) DEFAULT NULL,
  `dest` char(255) DEFAULT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table saturday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `saturday`;

CREATE TABLE `saturday` (
  `start` char(255) DEFAULT NULL,
  `dest` char(255) DEFAULT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `saturday` WRITE;
/*!40000 ALTER TABLE `saturday` DISABLE KEYS */;

INSERT INTO `saturday` (`start`, `dest`, `time`, `min`, `max`, `avg`, `num`)
VALUES
	('현대청운고앞','현대중공업미포문앞',12,18,41,28,6),
	('한신아파트앞','우미린2차,푸르지오2차',12,6,33,14,8),
	('우미린1차','굿모닝힐',12,28,126,65,9),
	('효문사거리','동신공업사앞',12,19,97,46,4),
	('구영교','대리마을',12,23,208,58,20),
	('울산과학대학앞','우신고등학교입구',12,36,162,103,9),
	('향산','향산초등학교',12,26,29,27,2),
	('현대중공업미포문앞','서부패밀리아파트앞',12,30,66,43,6),
	('일신아파트앞','현대2차아파트',12,44,65,47,11),
	('법원','옥동중학교앞',12,44,111,63,4),
	('대리','범서중학교앞',12,52,114,76,11),
	('산업은행앞','신정1동주민센터',12,52,57,54,2),
	('천상1교사거리','구영리입구',12,24,144,76,22),
	('목화예식장앞','현대백화점앞',12,42,178,101,15),
	('경동청구','천전입구',12,35,76,55,2),
	('동신공업사앞','효정고등학교입구',12,29,48,38,2),
	('범서파출소','주공1단지',12,29,146,64,10),
	('천전입구','청구골든',12,12,18,15,2),
	('정림탑스빌앞','울산초등학교앞',12,70,86,78,2),
	('입암','진목',12,52,75,60,14),
	('우성현대아파트앞','해피랜드아파트앞',12,54,70,59,7),
	('효정고등학교입구','현대출고사무소앞',12,17,37,25,4),
	('굿모닝힐','선바위교',12,37,138,75,10),
	('울산과학기술대정문','울산과학기술대입구',12,42,322,83,9),
	('옥동중학교앞','공원묘지입구',12,34,138,84,7),
	('문수경기장앞','우신고등학교입구',12,52,264,132,3),
	('향산초등학교','면허시험장',12,46,52,49,2),
	('서부패밀리아파트앞','남목2동',12,31,120,59,6),
	('현대2차아파트','구영리입구',12,47,143,71,10),
	('해피랜드아파트앞','방어동주민센터',12,17,44,27,7),
	('동울산우체국앞','동부경찰서앞',12,47,83,70,5),
	('범서중학교앞','현대3차아파트',12,25,167,68,11),
	('달동현대아파트앞','현대해상앞',12,23,234,90,13),
	('울산과학기술대입구','사연',12,17,66,33,11),
	('동강병원앞','태화루',12,57,140,83,9),
	('구영리입구','선바위교',12,24,110,50,19),
	('삼호지하차도','좋은삼정병원앞',12,42,386,192,20),
	('굿모닝병원앞','달동현대아파트앞',12,43,133,66,13),
	('진목','진목회관',12,23,58,41,14),
	('남목1동','남목1동주민센터',12,67,134,103,6),
	('울산초등학교앞','양사초등학교앞',12,38,53,45,2),
	('면허시험장','능산',12,17,37,27,2),
	('공촌','대방아파트',12,37,83,58,7),
	('학성공원','신울산종합시장',12,67,271,172,5),
	('청구골든','능산',12,6,65,35,2),
	('방어동주민센터','방어진초등학교후문',12,11,46,26,7),
	('공원묘지입구','보건환경연구원',12,19,65,42,8),
	('남목1동주민센터','남목고등학교',12,17,44,28,4),
	('사연','진목회관',12,26,194,47,14),
	('신정1동주민센터','태화로터리',12,95,95,95,1),
	('어음상리','언양고등학교',12,35,437,164,6),
	('태화루','동강병원앞',12,64,165,114,9),
	('현대출고사무소앞','아랫율동',12,24,77,52,4),
	('양사초등학교앞','목살골목입구',12,29,40,34,2),
	('선바위교','굿모닝힐',12,30,97,63,10),
	('우미린2차,푸르지오2차','범서중학교앞',12,49,235,127,17),
	('성내','염포동',12,42,152,75,6),
	('현대3차아파트','일신아파트앞',12,42,57,51,5),
	('능산','청구골든',12,35,39,37,2),
	('진목회관','사연',12,18,46,29,14),
	('남목2동','현대중공업앞',12,12,102,63,6),
	('언양고등학교','어음하리',12,18,183,70,5),
	('대방아파트','반송',12,36,54,44,7),
	('우신고등학교입구','울산과학대학앞',12,41,153,83,4),
	('아랫율동','현대자동차2공장',12,25,80,42,4),
	('삼호주공아파트앞','삼호주공아파트후문',12,95,95,95,1),
	('방어진초등학교후문','대왕암공원입구',12,24,66,42,6),
	('대리마을','주공1단지',12,46,220,106,10),
	('범서읍주민센터','입암',12,19,116,53,15),
	('언양정류장','어음상리',12,87,309,159,5),
	('굴화주공아파트앞','굴화마을',12,48,152,84,21),
	('주공1단지','대리마을',12,29,137,87,10),
	('현대백화점앞','시외고속버스터미널',12,35,157,68,16),
	('목살골목입구','우정동주민센터입구',12,37,48,42,2),
	('신울산종합시장','홈플러스앞',12,70,110,90,2),
	('염포동','성원상떼빌앞',12,42,56,48,3),
	('남목고등학교','정수장',12,43,128,72,7),
	('현대자동차2공장','양정힐스테이트앞',12,26,38,30,3),
	('어음하리','울주도서관',12,14,47,33,5),
	('농수산물도매시장앞','시외고속버스터미널',12,17,224,92,14),
	('한라아파트앞','천상',12,35,72,48,11),
	('현대중공업앞','전하1동주민센터',12,46,140,69,6),
	('삼호주공아파트후문','정광사약수터앞',12,43,234,138,2),
	('성원상떼빌앞','신전',12,36,96,56,3),
	('반송','효성앞',12,12,68,36,7),
	('효성앞','반천',12,7,43,23,6),
	('울주도서관','언양자동차학원',12,39,72,52,5),
	('현대해상앞','달동현대아파트앞',12,35,253,74,12),
	('태화동','학성여중앞',12,45,159,80,9),
	('전하1동주민센터','전하시장앞',12,38,90,56,6),
	('좋은삼정병원앞','남운프라자',12,72,164,120,5),
	('정광사약수터앞','정광사앞',12,50,76,63,2),
	('우정지하도앞','성남동',12,80,118,98,4),
	('굴화마을','울산상업고등학교',12,26,144,79,20),
	('홈플러스앞','삼성아파트앞',12,71,90,80,2),
	('우정동주민센터입구','우정시장',12,67,101,84,2),
	('천상','범서초등학교앞',12,43,91,65,10),
	('반천','반천초등학교',12,31,71,51,6),
	('언양자동차학원','KTX울산역',12,12,125,55,6),
	('경의고등학교','상북면주민센터',12,36,36,36,1),
	('양정힐스테이트앞','현대자동차정문',12,81,113,101,3),
	('삼성아파트','성당앞',12,29,44,36,2),
	('신복로터리','남운프라자',12,64,239,161,6),
	('울산상업고등학교','백천마을',12,23,133,55,21),
	('동부경찰서앞','현대중공업일산문',12,26,237,95,5),
	('반천초등학교','미연',12,25,56,36,6),
	('백천마을','울산상업고등학교',12,14,186,30,21),
	('정수장','성내',12,17,144,59,7),
	('울산대학교앞','울산대후문앞',12,41,127,72,10),
	('대왕암공원입구','일산해수욕장',12,78,176,125,6),
	('현대자동차정문','현대자동차4공장앞',12,39,62,48,3),
	('전하시장앞','동울산우체국앞',12,14,101,58,6),
	('성광여고앞','공원묘지입구',12,92,317,215,5),
	('보건환경연구원','옥현주공2단지앞',12,40,235,161,3),
	('신전','현대자동차4공장앞',12,23,132,81,3),
	('현대중공업일산문','번덕마을',12,34,47,40,5),
	('미연','반천현대아파트입구',12,42,69,51,6),
	('상북면주민센터','궁평',12,62,62,62,1),
	('태화로터리','태화루',12,58,240,123,5),
	('성당앞','언양맨션',12,30,54,45,3),
	('학성여중앞','제일중학교앞',12,48,167,78,11),
	('언양병원','울산산업고등학교',12,115,130,122,2),
	('삼성아파트앞','평산초등학교앞',12,103,182,142,2),
	('원지마을입구','유아교육진흥원',12,193,193,193,1),
	('정광사앞','태화강전망대',12,55,129,92,2),
	('현대자동차4공장앞','신전',12,35,47,41,3),
	('삼호교앞','제일중학교앞',12,61,459,197,10),
	('시외고속버스터미널','목화예식장앞',12,36,193,131,14),
	('궁평','양등입구',12,30,30,30,1),
	('반천현대아파트입구','미연',12,37,69,59,6),
	('언양맨션','언양전화국',12,30,40,33,3),
	('울산산업고등학교','작천정입구',12,30,152,101,3),
	('유아교육진흥원','송정동',12,29,44,36,2),
	('평산초등학교앞','병영사거리',12,41,46,43,2),
	('남운프라자','신복로터리',12,143,186,166,7),
	('옥현주공2단지앞','옥현주공3단지',12,75,129,101,5),
	('작천정입구','메가마트',12,24,32,28,3),
	('제일중학교앞','삼호교앞',12,38,151,78,12),
	('태화강전망대','크로바아파트앞',12,61,168,114,2),
	('범서초등학교앞','천상1교사거리',12,35,173,108,9),
	('우정시장','태화루',12,64,171,117,2),
	('메가마트','벌장',12,12,44,32,4),
	('롯데마트','공업탑',12,18,223,109,13),
	('언양전화국','남천교',12,41,103,74,3),
	('일산해수욕장','번덕마을',12,53,150,115,5),
	('현대골든아파트앞','산전마을',12,36,53,44,2),
	('울산대후문앞','울산대학교앞',12,25,139,83,8),
	('무룡고등학교앞','북구청앞',12,36,42,39,2),
	('장성','신기',12,12,29,20,2),
	('비치타운앞','우성현대아파트앞',12,46,65,54,6),
	('산전마을','산전교앞',12,31,59,45,2),
	('장촌상리','장촌',12,29,233,131,5),
	('신정고등학교앞','옥동초등학교',12,85,262,137,8),
	('축협','언양정류장',12,67,163,109,3),
	('북구청앞','농수산물유통센터후문',12,29,47,38,2),
	('산전교앞','한국폴리텍대학앞',12,29,42,35,2),
	('옥동디아채','울주군청앞',12,38,144,104,5),
	('울산과학기술대','울산과학기술대정문',12,41,136,88,4),
	('신기','궁근정',12,54,70,62,2),
	('동구노인요양원','남목고등학교',12,26,36,32,3),
	('옥동초등학교','울주군청앞',12,53,139,83,3),
	('현대3차아파트앞','한신아파트앞',12,45,65,56,7),
	('무동','사연',12,77,114,94,4),
	('장촌','공촌',12,32,79,57,6),
	('울주군청앞','서여자중학교앞',12,19,163,72,8),
	('벌장','마산입구',12,61,71,64,3),
	('서여자중학교앞','신정고등학교앞',12,42,161,66,5),
	('농수산물유통센터후문','한국폴리텍대학앞',12,122,122,122,1),
	('궁근정','소야정',12,56,105,80,2),
	('번덕마을','일산해수욕장',12,37,133,97,4),
	('신정시장앞','시청앞',12,134,156,143,5),
	('문수경기장입구','문수실버복지관',12,23,23,23,1),
	('한국폴리텍대학앞','산전교앞',12,29,218,123,2),
	('합동공업사앞','효문사거리',12,58,163,110,2),
	('시청앞','달동사거리',12,57,85,70,5),
	('문수실버복지관','율리',12,67,67,67,1),
	('소야정','행정',12,79,89,84,2),
	('반연마을','반천현대아파트입구',12,90,90,90,1),
	('옥현주공3단지','옥현주공2단지앞',12,41,98,69,4),
	('달동사거리','시청앞',12,86,200,149,5),
	('성남동','강변공영주차장앞',12,59,181,120,5),
	('병영1동주민센터앞','병영사거리',12,48,48,48,1),
	('공업탑','롯데마트',12,58,224,130,7),
	('강변공영주차장앞','풍적맨션앞',12,31,57,44,2),
	('농심메가마트앞','종합운동장앞',12,41,161,85,3),
	('풍적맨션앞','학성배수장앞',12,30,114,58,3),
	('울산공항앞','송정동',12,75,75,75,1),
	('송정동','유아교육진흥원',12,18,18,18,1),
	('학성배수장앞','옥성초등학교앞',12,48,53,50,2),
	('종합운동장앞','학성초등학교앞',12,54,126,100,3),
	('병영사거리','평산초등학교앞',12,155,155,155,1),
	('옥성초등학교앞','학성공원',12,43,85,64,2),
	('KTX울산역','언양자동차학원',12,257,432,330,4),
	('행정','석남사',12,81,367,224,2),
	('석남사','행정',12,17,17,17,1),
	('화암','비치타운앞',12,71,78,74,2),
	('학성초등학교앞','학성공원',12,62,197,128,3),
	('한국산업인력공단','문화예술회관앞',12,91,91,91,1),
	('문화예술회관앞','KBS방송국앞',12,43,43,43,1),
	('법원앞','옥동디아채',12,47,146,87,3),
	('마산','마산입구',12,110,133,121,2),
	('태화호텔앞','크로바아파트앞',12,67,67,67,1),
	('천상중학교','천상청구그린타운',12,42,42,42,1),
	('학성배수장','풍적맨션앞',12,42,42,42,1),
	('크로바아파트앞','태화강전망대',12,49,49,49,1),
	('상북농공단지','양등입구',12,80,80,80,1),
	('이마트학성점앞','신중앙시장',12,36,36,36,1),
	('신중앙시장','역전시장',12,24,24,24,1),
	('KBS방송국앞','중앙전통시장',12,236,247,241,2),
	('천상청구그린타운','천상1교사거리',12,104,104,104,1),
	('역전시장','중앙전통시장',12,35,35,35,1),
	('중앙전통시장','정림탑스빌앞',12,71,213,142,2),
	('양등입구','향산',12,205,205,205,1),
	('자동차선적장1','성내',12,171,171,171,1),
	('서울산보람병원','상평마을',12,41,41,41,1),
	('상평마을','남천교',12,35,35,35,1),
	('남천교','축협',12,41,114,80,3),
	('신정2동주민센터입구','산업은행앞',12,153,153,153,1),
	('자동차선적장2','태화강역',12,373,373,373,1),
	('천상1교사거리','천상청구그린타운',13,83,83,83,1),
	('공업탑','롯데마트',13,143,143,143,1),
	('학성여중앞','태화동',13,43,43,43,1),
	('신정1동주민센터','태화로터리',13,44,44,44,1),
	('현대해상앞','달동현대아파트앞',13,55,55,55,1),
	('현대2차아파트','일신아파트앞',13,61,61,61,1),
	('대리','범서중학교앞',13,67,72,69,2),
	('굴화마을','울산상업고등학교',13,90,149,119,2),
	('울주도서관','어음하리',13,44,44,44,1),
	('울산대후문앞','신복로터리',13,144,144,144,1),
	('울산상업고등학교','굴화마을',13,84,84,84,2),
	('언양고등학교','어음하리',13,30,30,30,1),
	('삼성아파트','경동청구',13,149,149,149,1),
	('농수산물도매시장앞','이마트앞',13,49,49,49,1),
	('성내','염포동',13,41,41,41,1),
	('삼호지하차도','굴화주공아파트앞',13,84,84,84,1),
	('옥성초등학교앞','학성배수장',13,36,142,89,2),
	('남목1동','현대청운고앞',13,137,137,137,1),
	('입암','진목',13,67,67,67,1),
	('신복로터리','남운프라자',13,119,119,119,1),
	('어음하리','언양고등학교',13,17,17,17,1),
	('경동청구','천전입구',13,11,11,11,1),
	('보건환경연구원','옥현주공2단지앞',13,213,213,213,1),
	('태화강역','이마트앞',13,67,67,67,1),
	('천상청구그린타운','천상중학교',13,42,42,42,1),
	('축협','언양정류장',13,248,248,248,1),
	('남운프라자','신복로터리',13,130,130,130,1),
	('옥동초등학교','울주군청앞',13,143,143,143,1),
	('삼호교앞','제일중학교앞',13,71,78,74,2),
	('동울산우체국앞','동부경찰서앞',13,61,61,61,1),
	('우미린1차','우미린2차,푸르지오2차',13,107,107,107,1),
	('롯데마트','굿모닝병원앞',13,41,41,41,1),
	('현대청운고앞','현대중공업미포문앞',13,18,18,18,1),
	('태화동','동강병원앞',13,41,41,41,1),
	('천전입구','청구골든',13,18,18,18,1),
	('진목','진목회관',13,23,23,23,1),
	('일신아파트앞','현대3차아파트앞',13,52,52,52,1),
	('천상중학교','천상청구제네스아파트',13,29,29,29,1),
	('시외고속버스터미널','현대백화점앞',15,5,5,5,1),
	('농수산물도매시장앞','시외고속버스터미널',15,11,11,11,1),
	('천상1교사거리','구영리입구',15,12,41,31,3),
	('양정힐스테이트앞','현대자동차2공장',15,12,12,12,1),
	('옥현주공3단지','옥현주공2단지앞',15,23,23,23,1),
	('번덕마을','일산해수욕장',15,29,29,29,1),
	('구영교','범서초등학교앞',15,29,29,29,1),
	('진목','입암',15,29,29,29,1),
	('시청앞','신정시장앞',15,29,29,29,1),
	('일산해수욕장','번덕마을',15,29,29,29,1),
	('일신아파트앞','현대3차아파트앞',15,29,29,29,1),
	('선바위교','구영리입구',15,35,41,38,2),
	('옥동디아채','울주군청앞',15,35,35,35,1),
	('경동청구','삼성아파트',15,35,35,35,1),
	('태화호텔앞','태화로터리',15,40,40,40,1),
	('언양맨션','언양전화국',15,23,23,23,1),
	('한라아파트앞','천상청구제네스아파트',15,41,42,41,2),
	('천상','한라아파트앞',15,41,57,49,2),
	('현대출고사무소앞','효정고등학교입구',15,24,24,24,1),
	('장성','신기',15,36,36,36,1),
	('현대자동차정문','현대자동차4공장앞',15,58,58,58,1),
	('해피랜드아파트앞','방어동주민센터',15,31,35,33,2),
	('삼호지하차도','굴화주공아파트앞',15,65,65,65,1),
	('현대3차아파트앞','한신아파트앞',15,41,41,41,1),
	('비치타운앞','화암',15,53,53,53,1),
	('울주도서관','언양자동차학원',15,31,42,36,2),
	('효정고등학교입구','합동공업사앞',15,29,29,29,1),
	('천상청구제네스아파트','천상중학교',15,35,35,35,1),
	('서여자중학교앞','신정고등학교앞',15,35,35,35,1),
	('옥동초등학교','울주군청앞',15,53,53,53,1),
	('한신아파트앞','우미린2차,푸르지오2차',15,23,23,23,1),
	('범서초등학교앞','천상',15,41,41,41,1),
	('방어진초등학교후문','방어동주민센터',15,35,51,43,2),
	('방어동주민센터','방어진초등학교후문',15,26,41,33,2),
	('현대자동차4공장앞','신전',15,47,47,47,1),
	('우정지하도앞','성남프라자앞',15,79,79,79,1),
	('학성여중앞','제일중학교앞',15,96,96,96,1),
	('현대중공업일산문','동부경찰서앞',15,43,43,43,1),
	('현대해상앞','달동현대아파트앞',15,37,37,37,1),
	('천상중학교','천상청구그린타운',15,43,43,43,1),
	('언양자동차학원','울주도서관',15,14,60,37,2),
	('범서읍주민센터','입암',15,67,72,69,2),
	('신기','궁근정',15,66,66,66,1),
	('풍적맨션앞','학성배수장앞',15,67,67,67,1),
	('반연마을','반천현대아파트입구',15,107,107,107,1),
	('대리마을','구영교',15,66,66,66,1),
	('언양전화국','남천교',15,96,96,96,1),
	('좋은삼정병원앞','남운프라자',15,124,124,124,1),
	('현대백화점앞','시외고속버스터미널',15,72,72,72,1),
	('굴화마을','울산상업고등학교',15,90,90,90,1),
	('옥현주공2단지앞','옥현주공3단지',15,109,109,109,1),
	('울주군청앞','법원',15,56,56,56,1),
	('달동현대아파트앞','굿모닝병원앞',15,24,24,24,1),
	('언양병원','울산산업고등학교',15,98,98,98,1),
	('구영교','백천마을',16,31,107,55,9),
	('동부경찰서앞','동울산우체국앞',16,46,49,47,2),
	('산업은행앞','신정1동주민센터',16,48,48,48,1),
	('구영리입구','선바위교',16,74,79,76,3),
	('신정시장앞','시청앞',16,131,132,131,2),
	('반천현대아파트입구','미연',16,48,72,60,2),
	('어음하리','언양고등학교',16,29,40,34,2),
	('울산상업고등학교','백천마을',16,29,76,41,10),
	('반천현대아파트종점','무동',16,161,161,161,1),
	('입암','진목',16,49,64,56,4),
	('백천마을','울산상업고등학교',16,5,90,23,9),
	('학성배수장앞','옥성초등학교앞',16,60,60,60,1),
	('한라아파트앞','천상청구제네스아파트',16,40,40,40,1),
	('굿모닝병원앞','롯데마트',16,49,132,65,6),
	('울산산업고등학교','작천정입구',16,46,46,46,1),
	('굴화주공아파트앞','삼호지하차도',16,40,156,76,9),
	('삼호지하차도','굴화주공아파트앞',16,41,344,144,9),
	('시청앞','달동사거리',16,47,138,82,3),
	('진목','진목회관',16,24,55,32,4),
	('우미린2차,푸르지오2차','범서중학교앞',16,60,121,83,4),
	('우성현대아파트앞','비치타운앞',16,58,76,67,2),
	('공원묘지입구','옥동중학교앞',16,47,60,53,2),
	('신전','성원상떼빌앞',16,25,109,67,2),
	('신정1동주민센터','태화로터리',16,47,47,47,1),
	('남운프라자','삼호지하차도',16,83,197,154,4),
	('남천교','축협',16,89,89,89,1),
	('옥성초등학교앞','학성공원',16,35,47,41,2),
	('천상청구그린타운','천상1교사거리',16,108,108,108,1),
	('법원','옥동중학교앞',16,89,100,94,2),
	('작천정입구','벌장',16,31,31,31,1),
	('미연','반천초등학교',16,46,56,51,2),
	('선바위교','굿모닝힐',16,52,83,65,3),
	('이마트앞','농수산물도매시장앞',16,78,183,130,4),
	('궁근정','소야정',16,115,115,115,1),
	('동울산우체국앞','전하시장앞',16,78,83,80,2),
	('범서중학교앞','대리',16,35,154,91,5),
	('현대백화점앞','목화예식장앞',16,64,164,114,7),
	('진목회관','사연',16,26,47,33,6),
	('신정고등학교앞','공업탑',16,70,163,127,3),
	('옥현주공3단지','울산과학대학앞',16,52,119,74,3),
	('성원상떼빌앞','염포동',16,44,44,44,1),
	('무동','사연',16,79,94,86,2),
	('굴화마을','울산상업고등학교',16,25,150,85,8),
	('천상1교사거리','범서읍주민센터',16,36,126,60,4),
	('비치타운앞','화암',16,55,57,56,2),
	('전하시장앞','전하1동주민센터',16,17,30,23,2),
	('달동사거리','롯데마트',16,61,126,84,3),
	('반천초등학교','반천',16,41,41,41,2),
	('합동공업사앞','효문사거리',16,205,205,205,1),
	('사연','울산과학기술대입구',16,29,59,38,7),
	('옥동중학교앞','법원앞',16,60,67,63,2),
	('화암','꽃바위',16,24,73,48,2),
	('목화예식장앞','현대해상앞',16,21,72,43,6),
	('반천','효성앞',16,17,64,40,2),
	('시외고속버스터미널','농수산물도매시장앞',16,60,200,150,7),
	('롯데마트','굿모닝병원앞',16,17,174,60,6),
	('울산과학기술대입구','울산과학기술대정문',16,30,53,39,6),
	('소야정','행정',16,82,82,82,1),
	('제일중학교앞','삼호교앞',16,56,208,145,3),
	('성남프라자앞','옥교동',16,219,219,219,1),
	('효성앞','반송',16,12,41,26,2),
	('굿모닝힐','우미린1차',16,86,99,94,3),
	('대리','구영교',16,47,93,66,5),
	('대왕암공원입구','일산해수욕장',16,184,184,184,1),
	('삼호교앞','삼호지하차도',16,121,215,170,3),
	('효문사거리','농심메가마트앞',16,12,65,38,2),
	('학성공원','학성초등학교앞',16,80,120,100,3),
	('KBS방송국앞','목화예식장앞',16,282,282,282,1),
	('현대해상앞','달동현대아파트앞',16,47,162,101,5),
	('범서읍주민센터','입암',16,37,88,69,3),
	('농수산물도매시장앞','이마트앞',16,43,197,73,8),
	('전하1동주민센터','현대중공업앞',16,78,81,79,2),
	('반송','대방아파트',16,20,41,30,2),
	('공업탑','롯데마트',16,113,209,147,3),
	('행정','석남사',16,66,66,66,1),
	('현대중공업앞','남목2동',16,40,49,44,2),
	('대리마을','주공1단지',16,46,294,130,4),
	('울산과학대학앞','울산대학교앞',16,69,147,117,3),
	('농심메가마트앞','종합운동장앞',16,53,112,82,2),
	('대방아파트','공촌',16,24,46,35,2),
	('언양고등학교','어음상리',16,29,221,125,2),
	('보건환경연구원','성광여고앞',16,52,52,52,1),
	('학성초등학교앞','종합운동장앞',16,59,119,89,2),
	('KTX울산역','장촌상리',16,228,275,251,2),
	('신복로터리','울산대후문앞',16,84,186,119,3),
	('일산해수욕장','번덕마을',16,72,72,72,1),
	('태화로터리','태화루',16,68,499,320,3),
	('법원앞','옥동디아채',16,137,137,137,1),
	('자동차선적장2','태화강역',16,372,372,372,1),
	('종합운동장앞','농심메가마트앞',16,32,150,91,2),
	('달동현대아파트앞','현대해상앞',16,23,133,63,5),
	('장촌상리','장촌',16,31,216,123,2),
	('주공1단지','범서파출소',16,35,152,67,4),
	('염포동','성내',16,180,180,180,1),
	('울산대후문앞','울산대학교앞',16,38,135,78,4),
	('울산대학교앞','울산대후문앞',16,47,123,73,3),
	('우미린1차','우미린2차,푸르지오2차',16,37,122,92,3),
	('옥동디아채','울주군청앞',16,43,43,43,1),
	('공촌','장촌',16,52,79,65,2),
	('축협','언양정류장',16,259,259,259,1),
	('남목2동','서부패밀리아파트앞',16,90,94,92,2),
	('태화강역','이마트앞',16,71,71,71,1),
	('성광여고앞','옥현주공2단지앞',16,102,102,102,1),
	('성내','정수장',16,64,64,64,1),
	('옥교동','구역전시장앞',16,175,175,175,1),
	('장촌','공촌',16,53,72,62,2),
	('태화루','동강병원앞',16,101,124,112,2),
	('번덕마을','현대중공업일산문',16,113,113,113,1),
	('정수장','동구노인요양원',16,30,30,30,1),
	('범서파출소','우미린2차,푸르지오2차',16,53,154,100,4),
	('현대중공업일산문','동부경찰서앞',16,42,42,42,1),
	('구역전시장앞','학성새벽시장',16,59,59,59,1),
	('동구노인요양원','남목고등학교',16,42,42,42,1),
	('동신공업사앞','효정고등학교입구',16,24,24,24,1),
	('동강병원앞','태화동',16,64,66,65,2),
	('울주군청앞','서여자중학교앞',16,84,132,108,2),
	('효정고등학교입구','현대출고사무소앞',16,14,14,14,1),
	('옥현주공2단지앞','옥현주공3단지',16,107,113,110,2),
	('현대출고사무소앞','아랫율동',16,21,21,21,1),
	('현대3차아파트','일신아파트앞',16,56,58,57,3),
	('좋은삼정병원앞','남운프라자',16,123,154,138,2),
	('언양정류장','어음상리',16,153,186,169,2),
	('아랫율동','현대자동차2공장',16,23,23,23,1),
	('서여자중학교앞','신정고등학교앞',16,50,50,50,1),
	('서부패밀리아파트앞','현대중공업미포문앞',16,165,165,165,1),
	('원지마을입구','유아교육진흥원',16,194,194,194,1),
	('현대중공업미포문앞','현대청운고앞',16,36,172,104,2),
	('일신아파트앞','현대2차아파트',16,54,55,54,2),
	('남목고등학교','남목1동',16,83,111,97,2),
	('유아교육진흥원','송정동',16,41,41,41,1),
	('울산과학기술대정문','울산과학기술대',16,53,551,316,4),
	('학성여중앞','태화동',16,58,70,64,2),
	('태화동','학성여중앞',16,127,136,131,2),
	('현대청운고앞','남목1동',16,23,34,28,2),
	('어음상리','언양고등학교',16,105,383,244,2),
	('현대자동차2공장','양정힐스테이트앞',16,99,99,99,1),
	('울산과학기술대','울산과학기술대정문',16,40,40,40,1),
	('송정동','울산공항앞',16,58,58,58,1),
	('옥동초등학교','울주군청앞',16,104,104,104,1),
	('남목1동','현대청운고앞',16,69,130,99,2),
	('학성새벽시장','학성공원',16,216,216,216,1),
	('학성배수장','풍적맨션앞',16,17,17,17,1),
	('울산공항앞','무룡고등학교앞',16,64,64,64,1),
	('해피랜드아파트앞','방어동주민센터',16,12,12,12,1),
	('현대2차아파트','천상1교사거리',16,47,139,93,2),
	('양정힐스테이트앞','현대자동차정문',16,101,101,101,1),
	('무룡고등학교앞','북구청앞',16,25,25,25,1),
	('울주도서관','언양자동차학원',16,43,43,43,1),
	('방어동주민센터','방어진초등학교후문',16,37,37,37,1),
	('남목1동주민센터','남목고등학교',16,23,23,23,1),
	('현대자동차정문','현대자동차4공장앞',16,35,35,35,1),
	('석남사','행정',16,490,490,490,1),
	('북구청앞','농수산물유통센터후문',16,59,59,59,1),
	('언양자동차학원','KTX울산역',16,65,65,65,1),
	('방어진초등학교후문','대왕암공원입구',16,59,59,59,1),
	('풍적맨션앞','성남동',16,108,108,108,1),
	('현대자동차4공장앞','신전',16,59,59,59,1),
	('신울산종합시장','홈플러스앞',16,58,58,58,1),
	('천상청구제네스아파트','천상중학교',16,893,893,893,1);

/*!40000 ALTER TABLE `saturday` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sunday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sunday`;

CREATE TABLE `sunday` (
  `start` char(255) DEFAULT NULL,
  `dest` char(255) DEFAULT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table thursday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `thursday`;

CREATE TABLE `thursday` (
  `start` char(255) DEFAULT NULL,
  `dest` char(255) DEFAULT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tuesday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tuesday`;

CREATE TABLE `tuesday` (
  `start` char(255) DEFAULT NULL,
  `dest` char(255) DEFAULT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table wednesday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wednesday`;

CREATE TABLE `wednesday` (
  `start` char(255) DEFAULT NULL,
  `dest` char(255) DEFAULT NULL,
  `time` int(4) NOT NULL,
  `min` int(4) NOT NULL,
  `max` int(4) NOT NULL,
  `avg` int(4) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;