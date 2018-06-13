-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-06-13 06:12:42
-- 服务器版本： 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b3log_symphony`
--

-- --------------------------------------------------------

--
-- 表的结构 `symphony_article`
--

DROP TABLE IF EXISTS `symphony_article`;
CREATE TABLE IF NOT EXISTS `symphony_article` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `articleTitle` varchar(255) NOT NULL COMMENT '甯栧瓙鏍囬',
  `articleTags` varchar(255) NOT NULL COMMENT '甯栧瓙琛ㄦ儏锛岃嫳鏂囩姸鎬侀�楀彿鍒嗛殧',
  `articleAuthorId` varchar(19) NOT NULL COMMENT '甯栧瓙浣滆�� id',
  `articleCommentCount` int(11) NOT NULL COMMENT '甯栧瓙鍥炲笘璁℃暟',
  `articleViewCount` int(11) NOT NULL COMMENT '甯栧瓙娴忚璁℃暟',
  `articleContent` mediumtext NOT NULL COMMENT '甯栧瓙姝ｆ枃鍐呭',
  `articleRewardContent` mediumtext NOT NULL COMMENT '甯栧瓙鎵撹祻鍖哄唴瀹�',
  `articleRewardPoint` int(11) NOT NULL COMMENT '甯栧瓙鎵撹祻绉垎',
  `articlePermalink` varchar(255) NOT NULL COMMENT '甯栧瓙璁块棶璺緞',
  `articleCreateTime` bigint(20) NOT NULL COMMENT '甯栧瓙鍒涘缓鏃堕棿',
  `articleUpdateTime` bigint(20) NOT NULL COMMENT '甯栧瓙鏇存柊鏃堕棿',
  `articleLatestCmtTime` bigint(20) NOT NULL COMMENT '甯栧瓙鏈�鏂板洖甯栨椂闂�',
  `articleLatestCmterName` varchar(20) NOT NULL COMMENT '甯栧瓙鏈�鏂板洖甯栬�呯敤鎴峰悕',
  `articleRandomDouble` double NOT NULL COMMENT '甯栧瓙闅忔満鏁帮紝鐢ㄤ簬蹇�熼�夋嫨闅忔満甯栧瓙',
  `articleCommentable` char(1) NOT NULL COMMENT '甯栧瓙鏄惁鍙洖甯�',
  `syncWithSymphonyClient` char(1) NOT NULL COMMENT '鏄惁寮�鍚鎴风鍚屾锛岀ぞ鍖虹増涓嶇敤鍏虫敞璇ュ瓧娈�',
  `clientArticleId` varchar(32) DEFAULT NULL COMMENT '瀹㈡埛绔枃绔� id锛岀ぞ鍖虹増涓嶇敤鍏虫敞璇ュ瓧娈�',
  `clientArticlePermalink` varchar(255) DEFAULT NULL COMMENT '瀹㈡埛绔枃绔犺闂矾寰勶紝绀惧尯鐗堜笉鐢ㄥ叧娉ㄨ瀛楁',
  `articleEditorType` int(11) NOT NULL COMMENT '0锛欳odeMirror-Markdown',
  `articleStatus` int(11) NOT NULL COMMENT '0锛氭甯革紝1锛氬皝绂侊紝2锛氶攣瀹�',
  `articleType` int(11) NOT NULL COMMENT '0锛氭櫘閫氬笘瀛愶紝1锛氳璁虹粍锛堝皬榛戝眿锛夛紝2锛氬悓鍩庡箍鎾紝3锛氭�濈华',
  `articleGoodCnt` int(11) NOT NULL COMMENT '甯栧瓙鐐硅禐璁℃暟',
  `articleBadCnt` int(11) NOT NULL COMMENT '甯栧瓙鐐硅俯璁℃暟',
  `articleCollectCnt` int(11) NOT NULL COMMENT '甯栧瓙鏀惰棌璁℃暟',
  `articleWatchCnt` int(11) NOT NULL COMMENT '甯栧瓙鍏虫敞璁℃暟',
  `redditScore` double NOT NULL COMMENT '甯栧瓙 Reddit 绠楁硶璇勫垎',
  `articleCity` varchar(32) NOT NULL COMMENT '鍙戝笘 IP 鎵�鍦ㄥ煄甯�',
  `articleIP` varchar(128) NOT NULL COMMENT '鍙戝笘 IP',
  `articleUA` varchar(255) NOT NULL COMMENT 'User-Agent',
  `articleStick` bigint(20) NOT NULL COMMENT '甯栧瓙缃《鏃堕棿',
  `articleAnonymous` int(11) NOT NULL COMMENT '0锛氬叕寮�锛�1锛氬尶鍚�',
  `articlePerfect` int(11) NOT NULL COMMENT '0锛氶潪浼橀�夛紝1锛氫紭閫�',
  `articleAnonymousView` int(11) NOT NULL COMMENT '0锛氬厑璁镐笉鐧诲綍娴忚锛� 1锛氱櫥褰曟墠鍙祻瑙�',
  `articleAudioURL` text NOT NULL COMMENT '甯栧瓙璇煶鏂囦欢 URL',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='甯栧瓙琛�';

--
-- 转存表中的数据 `symphony_article`
--

INSERT INTO `symphony_article` (`oId`, `articleTitle`, `articleTags`, `articleAuthorId`, `articleCommentCount`, `articleViewCount`, `articleContent`, `articleRewardContent`, `articleRewardPoint`, `articlePermalink`, `articleCreateTime`, `articleUpdateTime`, `articleLatestCmtTime`, `articleLatestCmterName`, `articleRandomDouble`, `articleCommentable`, `syncWithSymphonyClient`, `clientArticleId`, `clientArticlePermalink`, `articleEditorType`, `articleStatus`, `articleType`, `articleGoodCnt`, `articleBadCnt`, `articleCollectCnt`, `articleWatchCnt`, `redditScore`, `articleCity`, `articleIP`, `articleUA`, `articleStick`, `articleAnonymous`, `articlePerfect`, `articleAnonymousView`, `articleAudioURL`) VALUES
('1527491098243', '关于公交卡使用的注意事项', '公交资讯', '1527413002403', 2, 36, '这是第一个新帖子 :smile:\n这是修改后的帖子 :dizzy_face:', '', 0, '/article/1527491098243', 1527491098241, 1528696039863, 1527496657166, 'caozhengbin', 0.3596294252869907, '1', '0', '1527491098243', '', 0, 0, 0, 0, 0, 0, 2, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527496231742', '失物招领', '失物招领', '1527445273905', 4, 73, '第二个帖子', '', 0, '/article/1527496231742', 1527496231741, 1528696088203, 1527597456693, 'caozhengbin', 0.9374043194383603, '1', '0', '1527496231742', '', 0, 0, 0, 1, 0, 2, 1, 3861, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527496379412', 'Hi, czb', '私信', '1527445273905', 0, 7, '这是一份私信\n\n\n@czb ', '', 0, '/article/1527496379412', 1527496376456, 1527496376456, 0, '', 0.00174798499297113, '1', '0', '1527496379412', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527577811533', '线路整改', '行风建设,公交资讯', '1527413002403', 5, 24, '这是CZB的第三个帖子', '', 0, '/article/1527577811533', 1527577811530, 1528696008173, 1528435878942, 'caozhengbin', 0.5361986601535565, '1', '0', '1527577811533', '', 0, 0, 0, 0, 0, 1, 1, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527579101393', '给 CZB 的私信', '私信', '1527445273905', 0, 4, '@czb 案例win此欧文【我cpp你去我佩服你脾气哦年轻弄破去哦陪你评价温暖', '', 0, '/article/1527579101393', 1527579101391, 1527579101391, 0, '', 0.359334045149309, '1', '0', '1527579101393', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527588789100', '公交行业资讯', '公交行业', '1527413002403', 2, 24, '这是一个测试的帖子', '', 0, '/article/1527588789100', 1527588789095, 1528695992837, 1528436372978, 'caozhengbin', 0.7502716769946595, '1', '0', '1527588789100', '', 0, 0, 0, 0, 0, 0, 1, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527596720588', '私信', '私信', '1527413002403', 0, 4, '@caozhengbin\n哈哈哈哈哈，私信测试。', '', 0, '/article/1527596720588', 1527596720586, 1527596720586, 0, '', 0.15551911836615573, '1', '0', '1527596720588', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527597062620', '私信', '私信', '1527445273905', 0, 1, '@czb\n能收到吗\n弄清哪些哦IQ温暖哦我能成为你从我', '', 0, '/article/1527597062620', 1527597062617, 1527597062617, 0, '', 0.17971519000515812, '1', '0', '1527597062620', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527597353112', '私信', '私信', '1527413002403', 0, 3, '@admin\n你彼此宿便noi你从抛弃我抛弃我那你我i偶尔吃', '', 0, '/article/1527597353112', 1527597353110, 1527597353110, 0, '', 0.24381699433955695, '1', '0', '1527597353112', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527620001481', 'Hi, caozhengbin', '私信', '1527413002403', 0, 3, 'qnwoicnqwfnwpmcoqwcoiqnyouyongma\n\n\n@caozhengbin ', '', 0, '/article/1527620001481', 1527620001478, 1527620001478, 0, '', 0.6742138860195226, '1', '0', '1527620001481', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1527623376126', 'Hi, czb', '私信', '1527445273905', 0, 1, '并从文；qupo汽车你去我i后不错午后普宁粗人\n\n\n@czb ', '', 0, '/article/1527623376126', 1527623376124, 1527623376124, 0, '', 0.48288629924886284, '1', '0', '1527623376126', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1528434389852', 'Hi, caozhengbin', '私信', '1527413002403', 0, 1, '2018-6-8\n\n\n@caozhengbin ', '', 0, '/article/1528434389852', 1528434389848, 1528434389848, 0, '', 0.5183699529275404, '1', '0', '1528434389852', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1528435613099', '失物招领的信息', '私信', '1527445273905', 0, 12, '您昨天发的失物招领的帖子，好像是我的东西，请问您具体的联系方式以跟您沟通。\n\n\n@czb ', '', 0, '/article/1528435613099', 1528435613097, 1528856261555, 0, '', 0.9966734987249005, '1', '0', '1528435613099', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1528436220029', 'Hi, caozhengbin', '私信', '1527413002403', 0, 1, '212312312312\n\n\n@caozhengbin ', '', 0, '/article/1528436220029', 1528436220026, 1528436220026, 0, '', 0.9675554103380388, '1', '0', '1528436220029', '', 0, 0, 1, 0, 0, 0, 0, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, ''),
('1528789202539', '关于第一次行风交流会', '行风建设', '1527413002403', 4, 7, '第一章 总则\n\n第一条为了加强公交行业行风建设，提高全行业的服务质量和管理水平，根据市政风行风建设工作总体要求，并结合本市公交行业实际情况，制定本实施意见。\n\n第二条加强公交行业行风建设，是贯彻落实“\n\n第三条公交行业的行风建设，应坚持以切实解决群众反映的突出问题为工作重点，以人民群众满意为根本标准，以加强各项软、硬件建设为主要内容，以提高全行业的服务质量和管理水平，构建和谐交通为追求目标。 :smile:', '', 0, '/article/1528789202539', 1528789202488, 1528789202488, 1528855977620, 'caozhengbin', 0.3267790554430119, '1', '0', '1528789202539', '', 0, 0, 0, 0, 0, 0, 1, 0, '', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_book`
--

DROP TABLE IF EXISTS `symphony_book`;
CREATE TABLE IF NOT EXISTS `symphony_book` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `bookTitle` varchar(128) NOT NULL COMMENT '涔﹀悕',
  `bookSubTitle` varchar(128) NOT NULL COMMENT '瀛愭爣棰�',
  `bookOriginalTitle` varchar(128) NOT NULL COMMENT '鍘熷涔﹀悕',
  `bookAltTitle` varchar(128) NOT NULL COMMENT '鍙�変功鍚�',
  `bookDoubanURL` varchar(128) NOT NULL COMMENT '璞嗙摚閾炬帴',
  `bookAuthor` varchar(255) NOT NULL COMMENT '浣滆��',
  `bookAuthorIntro` text NOT NULL COMMENT '浣滆�呯畝浠�',
  `bookBinding` varchar(32) NOT NULL COMMENT '瑁呰',
  `bookCatalog` text NOT NULL COMMENT '鐩綍',
  `bookImgURL` varchar(128) NOT NULL COMMENT '灏侀潰鍥剧墖 URL',
  `bookISBN10` varchar(10) NOT NULL COMMENT 'ISBN 10',
  `bookISBN13` varchar(13) NOT NULL COMMENT 'ISBN 13',
  `bookPages` varchar(4) NOT NULL COMMENT '涔︾睄椤垫暟',
  `bookPrice` varchar(32) NOT NULL COMMENT '涔︾睄浠锋牸',
  `bookPublishDate` varchar(32) NOT NULL COMMENT '鍑虹増鏃ユ湡',
  `bookPublisher` varchar(64) NOT NULL COMMENT '鍑虹増绀�',
  `bookSeries` varchar(64) NOT NULL COMMENT '涓涗功',
  `bookSummary` text NOT NULL COMMENT '涔︾睄姒傝堪',
  `bookTags` varchar(128) NOT NULL COMMENT '涔︾睄鏍囩锛岃嫳鏂囩姸鎬侀�楀彿鍒嗛殧',
  `bookTranslator` varchar(128) NOT NULL COMMENT '璇戣��',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涔︾睄琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_breezemoon`
--

DROP TABLE IF EXISTS `symphony_breezemoon`;
CREATE TABLE IF NOT EXISTS `symphony_breezemoon` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `breezemoonContent` mediumtext NOT NULL COMMENT '娓呴鏄庢湀姝ｆ枃',
  `breezemoonAuthorId` varchar(19) NOT NULL COMMENT '浣滆�� id',
  `breezemoonCreated` bigint(20) NOT NULL COMMENT '鍒涘缓鏃堕棿',
  `breezemoonUpdated` bigint(20) NOT NULL COMMENT '鏇存柊鏃堕棿',
  `breezemoonIP` varchar(128) NOT NULL COMMENT 'IP',
  `breezemoonUA` varchar(255) NOT NULL COMMENT 'User-Agent',
  `breezemoonStatus` int(11) NOT NULL COMMENT '0锛氭甯革紝1锛氬皝绂�',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='娓呴鏄庢湀琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_character`
--

DROP TABLE IF EXISTS `symphony_character`;
CREATE TABLE IF NOT EXISTS `symphony_character` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `characterUserId` varchar(19) NOT NULL COMMENT '鐢ㄦ埛 id',
  `characterImg` mediumtext NOT NULL COMMENT '鍥剧墖 BASE64 缂栫爜',
  `characterContent` varchar(16) NOT NULL COMMENT '瀛�',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='瀛楄〃';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_comment`
--

DROP TABLE IF EXISTS `symphony_comment`;
CREATE TABLE IF NOT EXISTS `symphony_comment` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `clientCommentId` varchar(32) DEFAULT NULL COMMENT '瀹㈡埛绔瘎璁� id',
  `commentContent` text NOT NULL COMMENT '鍥炲笘姝ｆ枃鍐呭',
  `commentCreateTime` bigint(20) NOT NULL COMMENT '鍥炲笘鍒涘缓鏃堕棿',
  `commentAuthorId` varchar(19) NOT NULL COMMENT '鍥炲笘浣滆�� id',
  `commentOnArticleId` varchar(19) NOT NULL COMMENT '鍥炲笘鐨勫笘瀛� id',
  `commentSharpURL` varchar(255) NOT NULL COMMENT '鍥炲笘甯﹂敋鐐� URL',
  `commentOriginalCommentId` varchar(19) NOT NULL COMMENT '鍥炲閽堝鍥炲笘 id锛屽嵆 鐖跺洖甯� id',
  `commentStatus` int(11) NOT NULL COMMENT '0锛氭甯革紝1锛氬皝绂�',
  `commentIP` varchar(128) NOT NULL COMMENT '鍥炲笘 IP',
  `commentUA` varchar(255) NOT NULL COMMENT 'User-Agent',
  `commentAnonymous` int(11) NOT NULL COMMENT '0锛氬叕寮�鍥炲笘锛�1锛氬尶鍚嶅洖甯�',
  `commentGoodCnt` int(11) NOT NULL COMMENT '鍥炲笘鐐硅禐璁℃暟',
  `commentBadCnt` int(11) NOT NULL COMMENT '鍥炲笘鐐硅俯璁℃暟',
  `commentScore` double NOT NULL COMMENT '鍥炲笘璇勫垎',
  `commentReplyCnt` int(11) NOT NULL COMMENT '鍥炲璁℃暟',
  `commentAudioURL` text NOT NULL COMMENT '鍥炲笘璇煶鏂囦欢 URL',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鍥炲笘琛�';

--
-- 转存表中的数据 `symphony_comment`
--

INSERT INTO `symphony_comment` (`oId`, `clientCommentId`, `commentContent`, `commentCreateTime`, `commentAuthorId`, `commentOnArticleId`, `commentSharpURL`, `commentOriginalCommentId`, `commentStatus`, `commentIP`, `commentUA`, `commentAnonymous`, `commentGoodCnt`, `commentBadCnt`, `commentScore`, `commentReplyCnt`, `commentAudioURL`) VALUES
('1527495768024', NULL, '这是一个回帖 ', 1527495768083, '1527409718429', '1527491098243', '/article/1527491098243#1527495768024', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 1, 0, 0.37844750322520615, 0, ''),
('1527496657167', NULL, '这是第二个回帖 ', 1527496657217, '1527445273905', '1527491098243', '/article/1527491098243#1527496657167', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1527500131244', NULL, '回帖 ', 1527500131851, '1527413002403', '1527496231742', '/article/1527496231742#1527500131244', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 1, ''),
('1527500169297', NULL, '二楼 ', 1527500169348, '1527413002403', '1527496231742', '/article/1527496231742#1527500169297', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 1, ''),
('1527597432404', NULL, '这是一个回复 ', 1527597432464, '1527445273905', '1527496231742', '/article/1527496231742#1527597432404', '1527500169297', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 1, 0, 0, ''),
('1527597456693', NULL, '回复测试 ', 1527597456806, '1527445273905', '1527496231742', '/article/1527496231742#1527597456693', '1527500131244', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 1, 0, 0.37844750322520615, 0, ''),
('1527623037219', NULL, '回帖测试 ', 1527623037276, '1527445273905', '1527577811533', '/article/1527577811533#1527623037219', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 1, ''),
('1527623048158', NULL, '回帖测试2 ', 1527623048209, '1527445273905', '1527577811533', '/article/1527577811533#1527623048158', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1527623103640', NULL, '![83f984c8cc3c4a72bf34c6ff5e645298_49b5e91b841c510207118f81d54943c3.jpg](http://localhost:8080/upload/83f984c8cc3c4a72bf34c6ff5e645298_49b5e91b841c510207118f81d54943c3.jpg) \n\n回复 ', 1527623103736, '1527413002403', '1527577811533', '/article/1527577811533#1527623103640', '1527623037219', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1527704932383', NULL, '楼主说的是，我支持楼主 ', 1527704932476, '1527445273905', '1527577811533', '/article/1527577811533#1527704932383', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1528435878951', NULL, '测试 ', 1528435879011, '1527445273905', '1527577811533', '/article/1527577811533#1528435878951', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1528436051042', NULL, '回复测试，2018-6-8 ', 1528436051102, '1527445273905', '1527588789100', '/article/1527588789100#1528436051042', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1528436372979', NULL, 'test 2 ', 1528436373030, '1527445273905', '1527588789100', '/article/1527588789100#1528436372979', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1528789503684', NULL, '支持公交行业的良性发展 ', 1528789503735, '1527445273905', '1528789202539', '/article/1528789202539#1528789503684', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1528789517677', NULL, '我也来支持一波 ', 1528789517727, '1527445273905', '1528789202539', '/article/1528789202539#1528789517677', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1528789551951', NULL, '每个人都为公交公司提点意见也是不错的，对我们来说很有参与感。 :smile: ', 1528789552001, '1527445273905', '1528789202539', '/article/1528789202539#1528789551951', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, ''),
('1528855977635', NULL, '随手抓拍良好的行风现象![019861380d46453f8fb3de56e9e0047c_1519800272935279.png](http://localhost:8080/upload/019861380d46453f8fb3de56e9e0047c_1519800272935279.png) ', 1528855978282, '1527445273905', '1528789202539', '/article/1528789202539#1528855977635', '', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_domain`
--

DROP TABLE IF EXISTS `symphony_domain`;
CREATE TABLE IF NOT EXISTS `symphony_domain` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `domainTitle` varchar(50) NOT NULL COMMENT '棰嗗煙鏍囬',
  `domainURI` varchar(32) NOT NULL COMMENT '棰嗗煙璁块棶璺緞',
  `domainDescription` text NOT NULL COMMENT '棰嗗煙鎻忚堪',
  `domainType` varchar(16) NOT NULL COMMENT '棰嗗煙绫诲瀷',
  `domainSort` int(11) NOT NULL COMMENT '棰嗗煙鎺掑簭',
  `domainNav` int(11) NOT NULL COMMENT '0锛氫綔涓哄鑸紝1锛氫笉浣滀负瀵艰埅',
  `domainTagCnt` int(11) NOT NULL COMMENT '棰嗗煙鏍囩璁℃暟',
  `domainIconPath` text NOT NULL COMMENT '棰嗗煙鍥剧墖璺緞',
  `domainCSS` mediumtext NOT NULL COMMENT '棰嗗煙 CSS',
  `domainStatus` int(11) NOT NULL COMMENT '0锛氭甯革紝1锛氬皝绂�',
  `domainSeoTitle` varchar(128) NOT NULL COMMENT '棰嗗煙 SEO 鏍囬',
  `domainSeoKeywords` varchar(128) NOT NULL COMMENT '棰嗗煙 SEO 鍏抽敭瀛�',
  `domainSeoDesc` text NOT NULL COMMENT '棰嗗煙 SEO 鎻忚堪',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='棰嗗煙琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_domain_tag`
--

DROP TABLE IF EXISTS `symphony_domain_tag`;
CREATE TABLE IF NOT EXISTS `symphony_domain_tag` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `domain_oId` varchar(19) NOT NULL COMMENT '棰嗗煙 id',
  `tag_oId` varchar(19) NOT NULL COMMENT '鏍囩 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='棰嗗煙 - 鏍囩鍏宠仈琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_emotion`
--

DROP TABLE IF EXISTS `symphony_emotion`;
CREATE TABLE IF NOT EXISTS `symphony_emotion` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `emotionUserId` varchar(19) NOT NULL COMMENT '鐢ㄦ埛 Id',
  `emotionContent` varchar(64) NOT NULL COMMENT '琛ㄦ儏鍐呭锛宔moji 鐨� ASCII锛屾瘮濡� smile',
  `emotionSort` int(11) NOT NULL COMMENT '鎺掑簭',
  `emotionType` int(11) NOT NULL COMMENT '0锛歟moji',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鐢ㄦ埛甯哥敤琛ㄦ儏琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_follow`
--

DROP TABLE IF EXISTS `symphony_follow`;
CREATE TABLE IF NOT EXISTS `symphony_follow` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `followerId` varchar(19) NOT NULL COMMENT '鍏虫敞鑰� id',
  `followingId` varchar(19) NOT NULL COMMENT '鍏虫敞瀹炰綋 id',
  `followingType` int(11) NOT NULL COMMENT '0锛氱敤鎴凤紝1锛氭爣绛撅紝2锛氬笘瀛愭敹钘忥紝3锛氬笘瀛愬叧娉�',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鍏虫敞琛�';

--
-- 转存表中的数据 `symphony_follow`
--

INSERT INTO `symphony_follow` (`oId`, `followerId`, `followingId`, `followingType`) VALUES
('1527445497788', '1527445273905', '1527409723366', 1),
('1527495768664', '1527409718429', '1527491098243', 3),
('1527495946992', '1527445273905', '1527413002403', 0),
('1527496171042', '1527445273905', '1527409719398', 0),
('1527496444720', '1527413002403', '1527445273905', 0),
('1527496657567', '1527445273905', '1527491098243', 3),
('1527496979454', '1527445273905', '1527491098339', 1),
('1527496983209', '1527445273905', '1527496231793', 1),
('1527499801087', '1527413002403', '1527491098339', 1),
('1527577961103', '1527413002403', '1527496231793', 1),
('1527597477399', '1527445273905', '1527496231742', 2),
('1527597627119', '1527413002403', '1527496231742', 2),
('1527614847486', '1527413002403', '1527496231742', 3),
('1527623037584', '1527445273905', '1527577811533', 3),
('1527623119591', '1527413002403', '1527577811533', 2),
('1528436051426', '1527445273905', '1527588789100', 3),
('1528789157843', '1527413002403', '1527577811591', 1),
('1528789161835', '1527413002403', '1527577811815', 1),
('1528789168291', '1527413002403', '1528696088029', 1),
('1528789504097', '1527445273905', '1528789202539', 3);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_invitecode`
--

DROP TABLE IF EXISTS `symphony_invitecode`;
CREATE TABLE IF NOT EXISTS `symphony_invitecode` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `code` varchar(16) NOT NULL COMMENT '閭�璇风爜',
  `generatorId` varchar(19) NOT NULL COMMENT '鐢熸垚鑰� id',
  `userId` varchar(19) NOT NULL COMMENT '浣跨敤鑰� id',
  `useTime` bigint(20) NOT NULL COMMENT '浣跨敤鏃堕棿',
  `status` int(11) NOT NULL COMMENT '0锛氬凡浣跨敤锛�1锛氭湭浣跨敤锛�2锛氬仠鐢�',
  `memo` text NOT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='閭�璇风爜琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_link`
--

DROP TABLE IF EXISTS `symphony_link`;
CREATE TABLE IF NOT EXISTS `symphony_link` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `linkAddr` text NOT NULL COMMENT '閾炬帴鍦板潃',
  `linkTitle` text NOT NULL COMMENT '閾炬帴鏍囬',
  `linkType` int(11) NOT NULL COMMENT '0锛氱啍鐐�',
  `linkSubmitCnt` int(11) NOT NULL COMMENT '鎻愪氦璁℃暟',
  `linkClickCnt` int(11) NOT NULL COMMENT '鐐瑰嚮璁℃暟',
  `linkGoodCnt` int(11) NOT NULL COMMENT '鐐硅禐璁℃暟',
  `linkBadCnt` int(11) NOT NULL COMMENT '鐐硅俯璁℃暟',
  `linkBaiduRefCnt` int(11) NOT NULL COMMENT '鐧惧害寮曠敤璁℃暟',
  `linkScore` double NOT NULL COMMENT '璇勫垎',
  `linkPingCnt` int(11) NOT NULL COMMENT 'Ping 璁℃暟',
  `linkPingErrCnt` int(11) NOT NULL COMMENT 'Ping 澶辫触璁℃暟',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='閾炬帴琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_liveness`
--

DROP TABLE IF EXISTS `symphony_liveness`;
CREATE TABLE IF NOT EXISTS `symphony_liveness` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `livenessUserId` varchar(19) NOT NULL COMMENT '鐢ㄦ埛 id',
  `livenessDate` varchar(8) NOT NULL COMMENT '娲昏穬搴﹁褰曟棩鏈�',
  `livenessPoint` int(11) NOT NULL COMMENT '绉垎璁℃暟',
  `livenessArticle` int(11) NOT NULL COMMENT '鍙戝笘璁℃暟',
  `livenessComment` int(11) NOT NULL COMMENT '鍥炲笘璁℃暟',
  `livenessActivity` int(11) NOT NULL COMMENT '娲诲姩璁℃暟',
  `livenessThank` int(11) NOT NULL COMMENT '鎰熻阿璁℃暟',
  `livenessVote` int(11) NOT NULL COMMENT '鎶曠エ璁℃暟',
  `livenessReward` int(11) NOT NULL COMMENT '鎵撹祻璁℃暟',
  `livenessPV` int(11) NOT NULL COMMENT 'PV 璁℃暟',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='娲昏穬搴﹁〃';

--
-- 转存表中的数据 `symphony_liveness`
--

INSERT INTO `symphony_liveness` (`oId`, `livenessUserId`, `livenessDate`, `livenessPoint`, `livenessArticle`, `livenessComment`, `livenessActivity`, `livenessThank`, `livenessVote`, `livenessReward`, `livenessPV`) VALUES
('1527409725150', '1527409718429', '20180527', 0, 1, 0, 0, 0, 0, 0, 2),
('1527416275478', '1527413002403', '20180527', 0, 1, 0, 1, 0, 0, 0, 2),
('1527490868971', '1527409718429', '20180528', 0, 0, 1, 0, 0, 1, 0, 11),
('1527490997587', '1527413002403', '20180528', 0, 2, 3, 0, 0, 0, 0, 14),
('1527495921521', '1527445273905', '20180528', 0, 2, 1, 0, 0, 0, 0, 15),
('1527577314654', '1527413002403', '20180529', 0, 5, 0, 0, 0, 0, 0, 52),
('1527577517632', '1527445273905', '20180529', 0, 2, 2, 0, 0, 0, 0, 13),
('1527589385515', '1527409718429', '20180529', 0, 0, 0, 0, 0, 0, 0, 2),
('1527612472118', '1527413002403', '20180530', 0, 1, 1, 0, 0, 9, 0, 30),
('1527620028565', '1527445273905', '20180530', 0, 1, 2, 0, 0, 0, 0, 9),
('1527704626770', '1527413002403', '20180531', 0, 0, 0, 0, 0, 0, 0, 7),
('1527704886782', '1527445273905', '20180531', 0, 0, 1, 0, 0, 0, 0, 1),
('1527847397714', '1527413002403', '20180601', 0, 0, 0, 0, 0, 0, 0, 3),
('1528047992693', '1527413002403', '20180604', 0, 0, 0, 0, 0, 0, 0, 1),
('1528392143526', '1527409718429', '20180608', 0, 0, 0, 0, 0, 0, 0, 1),
('1528421970746', '1527413002403', '20180608', 0, 3, 3, 0, 0, 0, 0, 12),
('1528435368338', '1527445273905', '20180608', 0, 2, 3, 0, 0, 0, 0, 5),
('1528682854514', '1527413002403', '20180611', 0, 0, 0, 0, 0, 0, 0, 7),
('1528696064850', '1527445273905', '20180611', 0, 0, 0, 0, 0, 0, 0, 2),
('1528789184971', '1527413002403', '20180612', 0, 1, 0, 0, 0, 0, 0, 4),
('1528789484095', '1527445273905', '20180612', 0, 0, 3, 0, 0, 0, 0, 5),
('1528849042951', '1527445273905', '20180613', 0, 0, 1, 0, 0, 0, 0, 7),
('1528856507646', '1527413002403', '20180613', 0, 0, 0, 0, 0, 0, 0, 12);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_notification`
--

DROP TABLE IF EXISTS `symphony_notification`;
CREATE TABLE IF NOT EXISTS `symphony_notification` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `userId` varchar(19) NOT NULL COMMENT '鐢ㄦ埛 id',
  `dataId` varchar(64) NOT NULL COMMENT '鏁版嵁瀹炰綋 id',
  `dataType` int(11) NOT NULL COMMENT '鏁版嵁绫诲瀷',
  `hasRead` char(1) NOT NULL COMMENT '鏄惁宸茶',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='閫氱煡琛�';

--
-- 转存表中的数据 `symphony_notification`
--

INSERT INTO `symphony_notification` (`oId`, `userId`, `dataId`, `dataType`, `hasRead`) VALUES
('1527409719304', '1527409718429', '', 16, '1'),
('1527409720710', '1527409719398', '', 16, '0'),
('1527416063656', '1527413002403', '', 16, '1'),
('1527445489779', '1527445273905', '', 16, '1'),
('1527495947094', '1527413002403', '1527445273905', 17, '1'),
('1527496171184', '1527409719398', '1527445273905', 17, '0'),
('1527496171734', '1527409718429', '1527445273905', 17, '1'),
('1527496444861', '1527445273905', '1527413002403', 17, '1'),
('1527496657618', '1527413002403', '1527496657167', 3, '1'),
('1527496657698', '1527409718429', '1527496657167', 21, '1'),
('1527500132155', '1527445273905', '1527500131244', 3, '1'),
('1527500169649', '1527445273905', '1527500169297', 3, '1'),
('1527577812465', '1527445273905', '1527577811533', 4, '1'),
('1527578242765', '1527445273905', '1527496231742-1527413002403', 24, '1'),
('1527588789733', '1527445273905', '1527588789100', 4, '1'),
('1527597432723', '1527413002403', '1527597432404', 13, '1'),
('1527597457110', '1527413002403', '1527597456693', 13, '1'),
('1527597627319', '1527445273905', '1527496231742-1527413002403', 23, '1'),
('1527614568655', '1527445273905', '1527597456693-1527413002403', 25, '1'),
('1527614713130', '1527445273905', '1527496231742-1527413002403', 27, '1'),
('1527614847580', '1527445273905', '1527496231742-1527413002403', 24, '1'),
('1527618810364', '1527445273905', '1527496231742-1527413002403', 27, '1'),
('1527620002111', '1527445273905', '1527620001481', 2, '1'),
('1527623037635', '1527413002403', '1527623037219', 3, '1'),
('1527623376672', '1527413002403', '1527623376126', 2, '1'),
('1527704932774', '1527413002403', '1527704932383', 3, '1'),
('1527848377992', '1527445273905', '1527491098243', 20, '1'),
('1527848378097', '1527409718429', '1527491098243', 20, '1'),
('1528392953672', '1527445273905', 'defaultRole-1528392246593', 19, '1'),
('1528393005617', '1527413002403', 'defaultRole-1528392611403', 19, '1'),
('1528434390458', '1527445273905', '1528434389852', 2, '1'),
('1528435613554', '1527413002403', '1528435613099', 2, '1'),
('1528436220512', '1527445273905', '1528436220029', 2, '1'),
('1528436373403', '1527413002403', '1528436372979', 3, '1'),
('1528695993212', '1527445273905', '1527588789100', 20, '1'),
('1528696008515', '1527445273905', '1527577811533', 20, '1'),
('1528696040153', '1527445273905', '1527491098243', 20, '1'),
('1528696040267', '1527409718429', '1527491098243', 20, '0'),
('1528696088405', '1527413002403', '1527496231742', 20, '1'),
('1528789203024', '1527445273905', '1528789202539', 4, '1'),
('1528789504147', '1527413002403', '1528789503684', 3, '1'),
('1528789518017', '1527413002403', '1528789517677', 3, '1'),
('1528789552297', '1527413002403', '1528789551951', 3, '1');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_option`
--

DROP TABLE IF EXISTS `symphony_option`;
CREATE TABLE IF NOT EXISTS `symphony_option` (
  `oId` varchar(64) NOT NULL COMMENT '涓婚敭',
  `optionValue` text NOT NULL COMMENT '鍙傛暟閰嶇疆鍊�',
  `optionCategory` varchar(100) NOT NULL COMMENT '鍙傛暟閰嶇疆鍒嗙被',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鍙傛暟閰嶇疆琛�';

--
-- 转存表中的数据 `symphony_option`
--

INSERT INTO `symphony_option` (`oId`, `optionValue`, `optionCategory`) VALUES
('miscAllowAddArticle', '0', 'misc'),
('miscAllowAddComment', '0', 'misc'),
('miscAllowAnonymousView', '0', 'misc'),
('miscAllowRegister', '0', 'misc'),
('miscLanguage', 'zh_CN', 'misc'),
('statisticArticleCount', '15', 'statistic'),
('statisticCmtCount', '17', 'statistic'),
('statisticDomainCount', '0', 'statistic'),
('statisticLinkCount', '0', 'statistic'),
('statisticMaxOnlineVisitorCount', '8', 'statistic'),
('statisticMemberCount', '5', 'statistic'),
('statisticTagCount', '9', 'statistic');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_permission`
--

DROP TABLE IF EXISTS `symphony_permission`;
CREATE TABLE IF NOT EXISTS `symphony_permission` (
  `oId` varchar(32) NOT NULL COMMENT '涓婚敭',
  `permissionCategory` int(11) NOT NULL COMMENT '鏉冮檺鍒嗙被',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鏉冮檺琛�';

--
-- 转存表中的数据 `symphony_permission`
--

INSERT INTO `symphony_permission` (`oId`, `permissionCategory`) VALUES
('adUpdateADSide', 8),
('adUpdateBanner', 8),
('articleAddArticle', 2),
('articleCancelStickArticle', 2),
('articleReindexArticle', 2),
('articleReindexArticles', 2),
('articleRemoveArticle', 2),
('articleStickArticle', 2),
('articleUpdateArticleBasic', 2),
('breezemoonRemoveBreezemoon', 11),
('breezemoonUpdateBreezemoon', 11),
('commentRemoveComment', 3),
('commentUpdateCommentBasic', 3),
('commonAddArticle', 0),
('commonAddArticleAnonymous', 0),
('commonAddBreezemoon', 0),
('commonAddComment', 0),
('commonAddCommentAnonymous', 0),
('commonAtParticipants', 0),
('commonAtUser', 0),
('commonBadArticle', 0),
('commonBadComment', 0),
('commonExchangeIC', 0),
('commonFollowArticle', 0),
('commonGoodArticle', 0),
('commonGoodComment', 0),
('commonRemoveArticle', 0),
('commonRemoveBreezemoon', 0),
('commonRemoveComment', 0),
('commonStickArticle', 0),
('commonThankArticle', 0),
('commonThankComment', 0),
('commonUpdateArticle', 0),
('commonUpdateBreezemoon', 0),
('commonUpdateComment', 0),
('commonUseIL', 0),
('commonViewArticleHistory', 0),
('commonViewCommentHistory', 0),
('commonWatchArticle', 0),
('domainAddDomain', 4),
('domainAddDomainTag', 4),
('domainRemoveDomain', 4),
('domainRemoveDomainTag', 4),
('domainUpdateDomainBasic', 4),
('icGenIC', 7),
('icUpdateICBasic', 7),
('menuAdmin', 10),
('menuAdminAD', 10),
('menuAdminArticles', 10),
('menuAdminBreezemoons', 10),
('menuAdminComments', 10),
('menuAdminDomains', 10),
('menuAdminIcs', 10),
('menuAdminMisc', 10),
('menuAdminRoles', 10),
('menuAdminRWs', 10),
('menuAdminTags', 10),
('menuAdminUsers', 10),
('miscAllowAddArticle', 9),
('miscAllowAddComment', 9),
('miscAllowAnonymousView', 9),
('miscLanguage', 9),
('miscRegisterMethod', 9),
('rwAddReservedWord', 6),
('rwRemoveReservedWord', 6),
('rwUpdateReservedWordBasic', 6),
('tagUpdateTagBasic', 5),
('userAddPoint', 1),
('userAddUser', 1),
('userDeductPoint', 1),
('userExchangePoint', 1),
('userUpdateUserAdvanced', 1),
('userUpdateUserBasic', 1);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_pointtransfer`
--

DROP TABLE IF EXISTS `symphony_pointtransfer`;
CREATE TABLE IF NOT EXISTS `symphony_pointtransfer` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `fromId` varchar(19) NOT NULL COMMENT '婧愯处鎴� id',
  `toId` varchar(19) NOT NULL COMMENT '鐩爣璐︽埛 id',
  `sum` int(11) NOT NULL COMMENT '杞处閲戦',
  `fromBalance` int(11) NOT NULL COMMENT '婧愯处鎴蜂綑棰�',
  `toBalance` int(11) NOT NULL COMMENT '鐩爣璐︽埛浣欓',
  `time` bigint(20) NOT NULL COMMENT '杞处鏃堕棿',
  `type` int(11) NOT NULL COMMENT '杞处绫诲瀷',
  `dataId` varchar(19) NOT NULL COMMENT '鏁版嵁瀹炰綋 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='绉垎杞处琛�';

--
-- 转存表中的数据 `symphony_pointtransfer`
--

INSERT INTO `symphony_pointtransfer` (`oId`, `fromId`, `toId`, `sum`, `fromBalance`, `toBalance`, `time`, `type`, `dataId`) VALUES
('1527409719163', 'sys', '1527409718429', 500, 0, 500, 1527409719163, 0, '1527409718429'),
('1527409720632', 'sys', '1527409719398', 500, 0, 500, 1527409720616, 0, '1527409719398'),
('1527409725056', '1527409718429', 'sys', 20, 480, 0, 1527409725040, 1, '1527409724493'),
('1527416063534', 'sys', '1527413002403', 500, 0, 500, 1527416063521, 0, '1527413002403'),
('1527416275386', '1527413002403', 'sys', 20, 480, 0, 1527416275383, 1, '1527416273220'),
('1527423768604', '1527413002403', 'sys', 20, 460, 0, 1527423768582, 26, ''),
('1527423796621', 'sys', '1527413002403', 5, 0, 465, 1527423795000, 27, ''),
('1527445489664', 'sys', '1527445273905', 500, 0, 500, 1527445489643, 0, '1527445273905'),
('1527491098650', '1527413002403', 'sys', 20, 440, 0, 1527491098647, 1, '1527491098243'),
('1527495768385', '1527409718429', '1527413002403', 5, 475, 445, 1527495768368, 3, '1527495768024'),
('1527496232142', '1527445273905', 'sys', 20, 480, 0, 1527496232140, 1, '1527496231742'),
('1527496380416', '1527445273905', 'sys', 20, 460, 0, 1527496380412, 1, '1527496379412'),
('1527496465293', '1527413002403', 'sys', 21, 424, 0, 1527496465290, 1, '1527496464855'),
('1527496657358', '1527445273905', '1527413002403', 5, 455, 429, 1527496657352, 3, '1527496657167'),
('1527500131962', '1527413002403', '1527445273905', 5, 424, 460, 1527500131958, 3, '1527500131244'),
('1527500169486', '1527413002403', '1527445273905', 5, 419, 465, 1527500169481, 3, '1527500169297'),
('1527500180330', '1527413002403', '1527445273905', 5, 414, 470, 1527500180325, 3, '1527500180133'),
('1527577471618', '1527413002403', 'sys', 21, 393, 0, 1527577471615, 1, '1527577471227'),
('1527577812284', '1527413002403', 'sys', 21, 372, 0, 1527577812280, 1, '1527577811533'),
('1527579103989', '1527445273905', 'sys', 21, 449, 0, 1527579103986, 1, '1527579101393'),
('1527583097996', '1527413002403', 'sys', 100, 272, 0, 1527583097930, 23, '7'),
('1527588789576', '1527413002403', 'sys', 21, 251, 0, 1527588789573, 1, '1527588789100'),
('1527596721692', '1527413002403', 'sys', 21, 230, 0, 1527596721677, 1, '1527596720588'),
('1527597062995', '1527445273905', 'sys', 21, 428, 0, 1527597062972, 1, '1527597062620'),
('1527597353581', '1527413002403', 'sys', 21, 209, 0, 1527597353578, 1, '1527597353112'),
('1527597432561', '1527445273905', 'sys', 2, 426, 0, 1527597432549, 3, '1527597432404'),
('1527597456987', '1527445273905', 'sys', 2, 424, 0, 1527597456972, 3, '1527597456693'),
('1527620001993', '1527413002403', 'sys', 21, 188, 0, 1527620001973, 1, '1527620001481'),
('1527623037406', '1527445273905', '1527413002403', 5, 419, 193, 1527623037400, 3, '1527623037219'),
('1527623048402', '1527445273905', '1527413002403', 5, 414, 198, 1527623048373, 3, '1527623048158'),
('1527623103839', '1527413002403', 'sys', 2, 196, 0, 1527623103834, 3, '1527623103640'),
('1527623376554', '1527445273905', 'sys', 21, 393, 0, 1527623376551, 1, '1527623376126'),
('1527704932621', '1527445273905', '1527413002403', 5, 388, 201, 1527704932600, 3, '1527704932383'),
('1527848377877', '1527413002403', 'sys', 10, 191, 0, 1527848377860, 2, '1527491098243'),
('1528421970577', '1527413002403', 'sys', 21, 170, 0, 1528421970574, 1, '1528421970165'),
('1528434390329', '1527413002403', 'sys', 21, 149, 0, 1528434390325, 1, '1528434389852'),
('1528435368270', '1527445273905', 'sys', 21, 367, 0, 1528435368267, 1, '1528435367919'),
('1528435582279', '1527413002403', '1527445273905', 5, 144, 372, 1528435582273, 3, '1528435582059'),
('1528435613452', '1527445273905', 'sys', 21, 351, 0, 1528435613449, 1, '1528435613099'),
('1528435744684', '1527413002403', '1527445273905', 5, 139, 356, 1528435744678, 3, '1528435744491'),
('1528435879187', '1527445273905', '1527413002403', 5, 351, 144, 1528435879179, 3, '1528435878951'),
('1528436051262', '1527445273905', '1527413002403', 5, 346, 149, 1528436051255, 3, '1528436051042'),
('1528436220416', '1527413002403', 'sys', 21, 128, 0, 1528436220413, 1, '1528436220029'),
('1528436373236', '1527445273905', '1527413002403', 5, 341, 133, 1528436373199, 3, '1528436372979'),
('1528436452535', '1527413002403', '1527445273905', 5, 128, 346, 1528436452514, 3, '1528436452296'),
('1528695993066', '1527413002403', 'sys', 8, 120, 0, 1528695993048, 2, '1527588789100'),
('1528696008385', '1527413002403', 'sys', 10, 110, 0, 1528696008383, 2, '1527577811533'),
('1528696040019', '1527413002403', 'sys', 10, 100, 0, 1528696040006, 2, '1527491098243'),
('1528696088330', '1527445273905', 'sys', 12, 334, 0, 1528696088327, 2, '1527496231742'),
('1528789202888', '1527413002403', 'sys', 21, 79, 0, 1528789202885, 1, '1528789202539'),
('1528789503921', '1527445273905', '1527413002403', 5, 329, 84, 1528789503916, 3, '1528789503684'),
('1528789517876', '1527445273905', '1527413002403', 5, 324, 89, 1528789517871, 3, '1528789517677'),
('1528789552165', '1527445273905', '1527413002403', 5, 319, 94, 1528789552150, 3, '1528789551951'),
('1528855978454', '1527445273905', '1527413002403', 5, 314, 99, 1528855978454, 3, '1528855977635'),
('1528856261742', '1527445273905', 'sys', 6, 308, 0, 1528856261730, 2, '1528435613099');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_referral`
--

DROP TABLE IF EXISTS `symphony_referral`;
CREATE TABLE IF NOT EXISTS `symphony_referral` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `referralUser` varchar(19) NOT NULL COMMENT '鎺ㄤ粙鐢ㄦ埛鍚�',
  `referralDataId` varchar(19) NOT NULL COMMENT '鏁版嵁瀹炰綋 id',
  `referralType` int(11) NOT NULL COMMENT '0锛氬笘瀛�',
  `referralIP` varchar(128) NOT NULL COMMENT '鐐瑰嚮 IP',
  `referralClick` int(11) NOT NULL COMMENT '鎺ㄤ粙鐐瑰嚮璁℃暟',
  `referralUserHasPoint` char(1) NOT NULL,
  `referralAuthorHasPoint` char(1) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鎺ㄤ粙璁板綍琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_revision`
--

DROP TABLE IF EXISTS `symphony_revision`;
CREATE TABLE IF NOT EXISTS `symphony_revision` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `revisionDataType` int(11) NOT NULL COMMENT '0锛氬笘瀛愶紝1锛氬洖甯�',
  `revisionDataId` varchar(19) NOT NULL COMMENT '鏁版嵁瀹炰綋 id',
  `revisionData` mediumtext NOT NULL COMMENT '淇鏁版嵁',
  `revisionAuthorId` varchar(19) NOT NULL COMMENT '浣滆�� id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='淇鍙樻洿琛�';

--
-- 转存表中的数据 `symphony_revision`
--

INSERT INTO `symphony_revision` (`oId`, `revisionDataType`, `revisionDataId`, `revisionData`, `revisionAuthorId`) VALUES
('1527491098520', 0, '1527491098243', '{\"articleTitle\":\"这是一个新帖子\",\"articleContent\":\"这是第一个新帖子 :smile:\"}', '1527413002403'),
('1527495768277', 1, '1527495768024', '{\"commentContent\":\"这是一个回帖 \"}', '1527409718429'),
('1527496232011', 0, '1527496231742', '{\"articleTitle\":\"这是第二个帖子\",\"articleContent\":\"第二个帖子\"}', '1527445273905'),
('1527496380289', 0, '1527496379412', '{\"articleTitle\":\"Hi, czb\",\"articleContent\":\"这是一份私信\\n\\n\\n@czb \"}', '1527445273905'),
('1527496657248', 1, '1527496657167', '{\"commentContent\":\"这是第二个回帖 \"}', '1527445273905'),
('1527500131874', 1, '1527500131244', '{\"commentContent\":\"回帖 \"}', '1527413002403'),
('1527500169399', 1, '1527500169297', '{\"commentContent\":\"二楼 \"}', '1527413002403'),
('1527577811980', 0, '1527577811533', '{\"articleTitle\":\"czb 的第三个帖子\",\"articleContent\":\"这是CZB的第三个帖子\"}', '1527413002403'),
('1527579103816', 0, '1527579101393', '{\"articleTitle\":\"给 CZB 的私信\",\"articleContent\":\"@czb 案例win此欧文【我cpp你去我佩服你脾气哦年轻弄破去哦陪你评价温暖\"}', '1527445273905'),
('1527588789405', 0, '1527588789100', '{\"articleTitle\":\"测试的帖子\",\"articleContent\":\"这是一个测试的帖子\"}', '1527413002403'),
('1527596721515', 0, '1527596720588', '{\"articleTitle\":\"私信\",\"articleContent\":\"@caozhengbin\\n哈哈哈哈哈，私信测试。\"}', '1527413002403'),
('1527597062837', 0, '1527597062620', '{\"articleTitle\":\"私信\",\"articleContent\":\"@czb\\n能收到吗\\n弄清哪些哦IQ温暖哦我能成为你从我\"}', '1527445273905'),
('1527597353442', 0, '1527597353112', '{\"articleTitle\":\"私信\",\"articleContent\":\"@admin\\n你彼此宿便noi你从抛弃我抛弃我那你我i偶尔吃\"}', '1527413002403'),
('1527597432477', 1, '1527597432404', '{\"commentContent\":\"这是一个回复 \"}', '1527445273905'),
('1527597456842', 1, '1527597456693', '{\"commentContent\":\"回复测试 \"}', '1527445273905'),
('1527620001819', 0, '1527620001481', '{\"articleTitle\":\"Hi, caozhengbin\",\"articleContent\":\"qnwoicnqwfnwpmcoqwcoiqnyouyongma\\n\\n\\n@caozhengbin \"}', '1527413002403'),
('1527623037321', 1, '1527623037219', '{\"commentContent\":\"回帖测试 \"}', '1527445273905'),
('1527623048270', 1, '1527623048158', '{\"commentContent\":\"回帖测试2 \"}', '1527445273905'),
('1527623103757', 1, '1527623103640', '{\"commentContent\":\"![83f984c8cc3c4a72bf34c6ff5e645298_49b5e91b841c510207118f81d54943c3.jpg](http://localhost:8080/upload/83f984c8cc3c4a72bf34c6ff5e645298_49b5e91b841c510207118f81d54943c3.jpg) \\n\\n回复 \"}', '1527413002403'),
('1527623376407', 0, '1527623376126', '{\"articleTitle\":\"Hi, czb\",\"articleContent\":\"并从文；qupo汽车你去我i后不错午后普宁粗人\\n\\n\\n@czb \"}', '1527445273905'),
('1527704932499', 1, '1527704932383', '{\"commentContent\":\"楼主说的是，我支持楼主 \"}', '1527445273905'),
('1527848377693', 0, '1527491098243', '{\"articleTitle\":\"这是一个新帖子\",\"articleContent\":\"这是第一个新帖子 :smile:\\n这是修改后的帖子 :dizzy_face:\"}', '1527413002403'),
('1528434390178', 0, '1528434389852', '{\"articleTitle\":\"Hi, caozhengbin\",\"articleContent\":\"2018-6-8\\n\\n\\n@caozhengbin \"}', '1527413002403'),
('1528435613310', 0, '1528435613099', '{\"articleTitle\":\"Hi, czb\",\"articleContent\":\"消息通知私信测试\\n\\n\\n@czb \"}', '1527445273905'),
('1528435879094', 1, '1528435878951', '{\"commentContent\":\"测试 \"}', '1527445273905'),
('1528436051170', 1, '1528436051042', '{\"commentContent\":\"回复测试，2018-6-8 \"}', '1527445273905'),
('1528436220252', 0, '1528436220029', '{\"articleTitle\":\"Hi, caozhengbin\",\"articleContent\":\"212312312312\\n\\n\\n@caozhengbin \"}', '1527413002403'),
('1528436373094', 1, '1528436372979', '{\"commentContent\":\"test 2 \"}', '1527445273905'),
('1528695992879', 0, '1527588789100', '{\"articleTitle\":\"公交行业资讯\",\"articleContent\":\"这是一个测试的帖子\"}', '1527413002403'),
('1528696008189', 0, '1527577811533', '{\"articleTitle\":\"线路整改\",\"articleContent\":\"这是CZB的第三个帖子\"}', '1527413002403'),
('1528696039865', 0, '1527491098243', '{\"articleTitle\":\"关于公交卡使用的注意事项\",\"articleContent\":\"这是第一个新帖子 :smile:\\n这是修改后的帖子 :dizzy_face:\"}', '1527413002403'),
('1528696088205', 0, '1527496231742', '{\"articleTitle\":\"失物招领\",\"articleContent\":\"第二个帖子\"}', '1527445273905'),
('1528789202723', 0, '1528789202539', '{\"articleTitle\":\"关于第一次行风交流会\",\"articleContent\":\"第一章 总则\\n\\n第一条为了加强公交行业行风建设，提高全行业的服务质量和管理水平，根据市政风行风建设工作总体要求，并结合本市公交行业实际情况，制定本实施意见。\\n\\n第二条加强公交行业行风建设，是贯彻落实\\u201c\\n\\n第三条公交行业的行风建设，应坚持以切实解决群众反映的突出问题为工作重点，以人民群众满意为根本标准，以加强各项软、硬件建设为主要内容，以提高全行业的服务质量和管理水平，构建和谐交通为追求目标。 :smile:\"}', '1527413002403'),
('1528789503799', 1, '1528789503684', '{\"commentContent\":\"支持公交行业的良性发展 \"}', '1527445273905'),
('1528789517778', 1, '1528789517677', '{\"commentContent\":\"我也来支持一波 \"}', '1527445273905'),
('1528789552048', 1, '1528789551951', '{\"commentContent\":\"每个人都为公交公司提点意见也是不错的，对我们来说很有参与感。 :smile: \"}', '1527445273905'),
('1528855978329', 1, '1528855977635', '{\"commentContent\":\"随手抓![019861380d46453f8fb3de56e9e0047c_1519800272935279.png](http://localhost:8080/upload/019861380d46453f8fb3de56e9e0047c_1519800272935279.png) \"}', '1527445273905'),
('1528856007390', 1, '1528855977635', '{\"commentContent\":\"随手抓拍量的行风现象![019861380d46453f8fb3de56e9e0047c_1519800272935279.png](http://localhost:8080/upload/019861380d46453f8fb3de56e9e0047c_1519800272935279.png) \"}', '1527445273905'),
('1528856022050', 1, '1528855977635', '{\"commentContent\":\"随手抓拍良好的行风现象![019861380d46453f8fb3de56e9e0047c_1519800272935279.png](http://localhost:8080/upload/019861380d46453f8fb3de56e9e0047c_1519800272935279.png) \"}', '1527445273905'),
('1528856261559', 0, '1528435613099', '{\"articleTitle\":\"失物招领的信息\",\"articleContent\":\"您昨天发的失物招领的帖子，好像是我的东西，请问您具体的联系方式以跟您沟通。\\n\\n\\n@czb \"}', '1527445273905');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_reward`
--

DROP TABLE IF EXISTS `symphony_reward`;
CREATE TABLE IF NOT EXISTS `symphony_reward` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `senderId` varchar(19) NOT NULL COMMENT '鎵撹祻浜� id',
  `dataId` varchar(19) NOT NULL COMMENT '鏁版嵁瀹炰綋 id',
  `type` int(11) NOT NULL COMMENT '0锛氬笘瀛愶紝1锛氬洖甯栵紝2锛氱敤鎴�',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鎵撹祻琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_role`
--

DROP TABLE IF EXISTS `symphony_role`;
CREATE TABLE IF NOT EXISTS `symphony_role` (
  `oId` varchar(32) NOT NULL COMMENT '涓婚敭',
  `roleName` varchar(32) NOT NULL COMMENT '瑙掕壊鍚嶇О',
  `roleDescription` text NOT NULL COMMENT '瑙掕壊鎻忚堪',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='瑙掕壊琛�';

--
-- 转存表中的数据 `symphony_role`
--

INSERT INTO `symphony_role` (`oId`, `roleName`, `roleDescription`) VALUES
('1528392189334', '普通用户', ''),
('1528392246593', '司机', ''),
('1528392611403', '经理', ''),
('1528392662667', '线路规划人员', ''),
('adminRole', 'Admin', ''),
('defaultRole', 'Default', ''),
('leaderRole', 'Leader', ''),
('memberRole', 'Member', ''),
('regularRole', 'Regular', ''),
('visitorRole', 'Visitor', '');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_role_permission`
--

DROP TABLE IF EXISTS `symphony_role_permission`;
CREATE TABLE IF NOT EXISTS `symphony_role_permission` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `roleId` varchar(32) NOT NULL COMMENT '瑙掕壊 id',
  `permissionId` varchar(32) NOT NULL COMMENT '鏉冮檺 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='瑙掕壊 - 鏉冮檺鍏宠仈琛�';

--
-- 转存表中的数据 `symphony_role_permission`
--

INSERT INTO `symphony_role_permission` (`oId`, `roleId`, `permissionId`) VALUES
('1527409708195', 'regularRole', 'commonGoodComment'),
('1527409708258', 'regularRole', 'commonUseIL'),
('1527409708320', 'regularRole', 'commonBadArticle'),
('1527409708383', 'regularRole', 'commonAddComment'),
('1527409708445', 'regularRole', 'commonViewCommentHistory'),
('1527409708508', 'regularRole', 'commonUpdateArticle'),
('1527409708570', 'regularRole', 'commonWatchArticle'),
('1527409708711', 'regularRole', 'commonAtParticipants'),
('1527409708773', 'regularRole', 'tagUpdateTagBasic'),
('1527409708836', 'regularRole', 'commonAddArticle'),
('1527409708898', 'regularRole', 'commonExchangeIC'),
('1527409708961', 'regularRole', 'commonThankArticle'),
('1527409709023', 'regularRole', 'commonRemoveArticle'),
('1527409709086', 'regularRole', 'commonRemoveComment'),
('1527409709148', 'regularRole', 'commonThankComment'),
('1527409709211', 'regularRole', 'menuAdminTags'),
('1527409709273', 'regularRole', 'commonStickArticle'),
('1527409709336', 'regularRole', 'commonViewArticleHistory'),
('1527409709398', 'regularRole', 'commonUpdateBreezemoon'),
('1527409709461', 'regularRole', 'menuAdmin'),
('1527409709523', 'regularRole', 'commonAtUser'),
('1527409709586', 'regularRole', 'commonFollowArticle'),
('1527409709648', 'regularRole', 'commonBadComment'),
('1527409709711', 'regularRole', 'commonGoodArticle'),
('1527409709773', 'regularRole', 'commonAddArticleAnonymous'),
('1527409709836', 'regularRole', 'commonRemoveBreezemoon'),
('1527409709961', 'regularRole', 'commonUpdateComment'),
('1527409710023', 'regularRole', 'commonAddCommentAnonymous'),
('1527409710086', 'regularRole', 'commonAddBreezemoon'),
('1527409710148', 'leaderRole', 'menuAdminIcs'),
('1527409710211', 'leaderRole', 'userExchangePoint'),
('1527409710273', 'leaderRole', 'articleReindexArticle'),
('1527409710336', 'leaderRole', 'icGenIC'),
('1527409710398', 'leaderRole', 'commonUseIL'),
('1527409710461', 'leaderRole', 'commonBadArticle'),
('1527409710523', 'leaderRole', 'commonAddComment'),
('1527409710586', 'leaderRole', 'rwAddReservedWord'),
('1527409710648', 'leaderRole', 'commonViewCommentHistory'),
('1527409710711', 'leaderRole', 'commentUpdateCommentBasic'),
('1527409710773', 'leaderRole', 'commonUpdateArticle'),
('1527409710836', 'leaderRole', 'commonAddArticle'),
('1527409710898', 'leaderRole', 'commonExchangeIC'),
('1527409710961', 'leaderRole', 'commonThankArticle'),
('1527409711023', 'leaderRole', 'commonRemoveArticle'),
('1527409711086', 'leaderRole', 'commonRemoveComment'),
('1527409711148', 'leaderRole', 'icUpdateICBasic'),
('1527409711211', 'leaderRole', 'menuAdminTags'),
('1527409711273', 'leaderRole', 'commonAtUser'),
('1527409711336', 'leaderRole', 'commonBadComment'),
('1527409711398', 'leaderRole', 'articleCancelStickArticle'),
('1527409711461', 'leaderRole', 'commonRemoveBreezemoon'),
('1527409711523', 'leaderRole', 'rwRemoveReservedWord'),
('1527409711586', 'leaderRole', 'articleStickArticle'),
('1527409711648', 'leaderRole', 'commonUpdateComment'),
('1527409711711', 'leaderRole', 'commonAddCommentAnonymous'),
('1527409711773', 'leaderRole', 'rwUpdateReservedWordBasic'),
('1527409711836', 'leaderRole', 'menuAdminArticles'),
('1527409711992', 'leaderRole', 'commonGoodComment'),
('1527409712054', 'leaderRole', 'menuAdminComments'),
('1527409712117', 'leaderRole', 'userAddUser'),
('1527409712179', 'leaderRole', 'commonWatchArticle'),
('1527409712242', 'leaderRole', 'breezemoonRemoveBreezemoon'),
('1527409712304', 'leaderRole', 'commonAtParticipants'),
('1527409712367', 'leaderRole', 'tagUpdateTagBasic'),
('1527409712429', 'leaderRole', 'menuAdminRWs'),
('1527409712492', 'leaderRole', 'commonThankComment'),
('1527409712554', 'leaderRole', 'commonStickArticle'),
('1527409712617', 'leaderRole', 'commonViewArticleHistory'),
('1527409712679', 'leaderRole', 'commonUpdateBreezemoon'),
('1527409712742', 'leaderRole', 'menuAdmin'),
('1527409712804', 'leaderRole', 'userAddPoint'),
('1527409712867', 'leaderRole', 'commonFollowArticle'),
('1527409712929', 'leaderRole', 'commonGoodArticle'),
('1527409712992', 'leaderRole', 'userUpdateUserBasic'),
('1527409713054', 'leaderRole', 'articleUpdateArticleBasic'),
('1527409713117', 'leaderRole', 'commonAddArticleAnonymous'),
('1527409713179', 'leaderRole', 'userDeductPoint'),
('1527409713242', 'leaderRole', 'userUpdateUserAdvanced'),
('1527409713304', 'leaderRole', 'breezemoonUpdateBreezemoon'),
('1527409713367', 'leaderRole', 'commonAddBreezemoon'),
('1527409713429', 'leaderRole', 'menuAdminUsers'),
('1527409713492', 'leaderRole', 'menuAdminBreezemoons'),
('1527409713554', 'adminRole', 'menuAdminIcs'),
('1527409713617', 'adminRole', 'userExchangePoint'),
('1527409713679', 'adminRole', 'articleReindexArticle'),
('1527409713742', 'adminRole', 'icGenIC'),
('1527409713804', 'adminRole', 'commonUseIL'),
('1527409713867', 'adminRole', 'commonBadArticle'),
('1527409714070', 'adminRole', 'commonAddComment'),
('1527409714195', 'adminRole', 'rwAddReservedWord'),
('1527409714257', 'adminRole', 'commonViewCommentHistory'),
('1527409714320', 'adminRole', 'commentUpdateCommentBasic'),
('1527409714382', 'adminRole', 'commonUpdateArticle'),
('1527409714445', 'adminRole', 'domainAddDomain'),
('1527409714507', 'adminRole', 'domainUpdateDomainBasic'),
('1527409714570', 'adminRole', 'commonAddArticle'),
('1527409714632', 'adminRole', 'commonExchangeIC'),
('1527409714695', 'adminRole', 'commonThankArticle'),
('1527409714757', 'adminRole', 'commonRemoveArticle'),
('1527409714820', 'adminRole', 'commonRemoveComment'),
('1527409714882', 'adminRole', 'icUpdateICBasic'),
('1527409715007', 'adminRole', 'menuAdminTags'),
('1527409715070', 'adminRole', 'commonAtUser'),
('1527409715132', 'adminRole', 'commonBadComment'),
('1527409715195', 'adminRole', 'articleCancelStickArticle'),
('1527409715257', 'adminRole', 'menuAdminAD'),
('1527409715320', 'adminRole', 'miscAllowAddComment'),
('1527409715382', 'adminRole', 'commonRemoveBreezemoon'),
('1527409715445', 'adminRole', 'rwRemoveReservedWord'),
('1527409715507', 'adminRole', 'articleStickArticle'),
('1527409715570', 'adminRole', 'commonUpdateComment'),
('1527409715632', 'adminRole', 'commonAddCommentAnonymous'),
('1527409715695', 'adminRole', 'miscAllowAnonymousView'),
('1527409715757', 'adminRole', 'rwUpdateReservedWordBasic'),
('1527409715820', 'adminRole', 'menuAdminArticles'),
('1527409715882', 'adminRole', 'commonGoodComment'),
('1527409715945', 'adminRole', 'domainRemoveDomainTag'),
('1527409716007', 'adminRole', 'menuAdminComments'),
('1527409716070', 'adminRole', 'miscRegisterMethod'),
('1527409716132', 'adminRole', 'userAddUser'),
('1527409716195', 'adminRole', 'menuAdminMisc'),
('1527409716257', 'adminRole', 'articleRemoveArticle'),
('1527409716320', 'adminRole', 'commonWatchArticle'),
('1527409716382', 'adminRole', 'breezemoonRemoveBreezemoon'),
('1527409716445', 'adminRole', 'commonAtParticipants'),
('1527409716507', 'adminRole', 'tagUpdateTagBasic'),
('1527409716570', 'adminRole', 'miscAllowAddArticle'),
('1527409716632', 'adminRole', 'menuAdminRWs'),
('1527409716695', 'adminRole', 'commonThankComment'),
('1527409716757', 'adminRole', 'commentRemoveComment'),
('1527409716820', 'adminRole', 'commonStickArticle'),
('1527409716882', 'adminRole', 'articleAddArticle'),
('1527409716945', 'adminRole', 'commonViewArticleHistory'),
('1527409717007', 'adminRole', 'commonUpdateBreezemoon'),
('1527409717070', 'adminRole', 'menuAdmin'),
('1527409717132', 'adminRole', 'userAddPoint'),
('1527409717195', 'adminRole', 'commonFollowArticle'),
('1527409717257', 'adminRole', 'commonGoodArticle'),
('1527409717320', 'adminRole', 'userUpdateUserBasic'),
('1527409717382', 'adminRole', 'articleUpdateArticleBasic'),
('1527409717445', 'adminRole', 'domainAddDomainTag'),
('1527409717507', 'adminRole', 'commonAddArticleAnonymous'),
('1527409717570', 'adminRole', 'userDeductPoint'),
('1527409717632', 'adminRole', 'adUpdateADSide'),
('1527409717695', 'adminRole', 'userUpdateUserAdvanced'),
('1527409717757', 'adminRole', 'adUpdateBanner'),
('1527409717820', 'adminRole', 'breezemoonUpdateBreezemoon'),
('1527409717882', 'adminRole', 'miscLanguage'),
('1527409717945', 'adminRole', 'menuAdminRoles'),
('1527409718007', 'adminRole', 'commonAddBreezemoon'),
('1527409718070', 'adminRole', 'menuAdminUsers'),
('1527409718132', 'adminRole', 'articleReindexArticles'),
('1527409718195', 'adminRole', 'menuAdminDomains'),
('1527409718257', 'adminRole', 'menuAdminBreezemoons'),
('1527409718320', 'adminRole', 'domainRemoveDomain'),
('1527614530561', 'memberRole', 'commonAddArticle'),
('1527614530617', 'memberRole', 'commonAddBreezemoon'),
('1527614530669', 'memberRole', 'commonAddComment'),
('1527614530719', 'memberRole', 'commonAtParticipants'),
('1527614530769', 'memberRole', 'commonAtUser'),
('1527614530819', 'memberRole', 'commonBadArticle'),
('1527614530870', 'memberRole', 'commonBadComment'),
('1527614530920', 'memberRole', 'commonFollowArticle'),
('1527614530971', 'memberRole', 'commonGoodArticle'),
('1527614531108', 'memberRole', 'commonGoodComment'),
('1527614531159', 'memberRole', 'commonRemoveArticle'),
('1527614531209', 'memberRole', 'commonRemoveBreezemoon'),
('1527614531259', 'memberRole', 'commonRemoveComment'),
('1527614531309', 'memberRole', 'commonThankArticle'),
('1527614531360', 'memberRole', 'commonThankComment'),
('1527614531410', 'memberRole', 'commonUpdateArticle'),
('1527614531461', 'memberRole', 'commonUpdateBreezemoon'),
('1527614531512', 'memberRole', 'commonUpdateComment'),
('1527614531562', 'memberRole', 'commonUseIL'),
('1527614531612', 'memberRole', 'commonWatchArticle'),
('1527710489164', 'defaultRole', 'commonAddArticle'),
('1527710489283', 'defaultRole', 'commonAddArticleAnonymous'),
('1527710489334', 'defaultRole', 'commonAddBreezemoon'),
('1527710489385', 'defaultRole', 'commonAddComment'),
('1527710489436', 'defaultRole', 'commonAddCommentAnonymous'),
('1527710489486', 'defaultRole', 'commonAtParticipants'),
('1527710489536', 'defaultRole', 'commonAtUser'),
('1527710489587', 'defaultRole', 'commonBadArticle'),
('1527710489638', 'defaultRole', 'commonBadComment'),
('1527710489689', 'defaultRole', 'commonExchangeIC'),
('1527710489740', 'defaultRole', 'commonFollowArticle'),
('1527710489791', 'defaultRole', 'commonGoodArticle'),
('1527710489841', 'defaultRole', 'commonGoodComment'),
('1527710489892', 'defaultRole', 'commonRemoveArticle'),
('1527710489943', 'defaultRole', 'commonRemoveBreezemoon'),
('1527710489994', 'defaultRole', 'commonRemoveComment'),
('1527710490045', 'defaultRole', 'commonStickArticle'),
('1527710490096', 'defaultRole', 'commonThankArticle'),
('1527710490146', 'defaultRole', 'commonThankComment'),
('1527710490197', 'defaultRole', 'commonUpdateArticle'),
('1527710490247', 'defaultRole', 'commonUpdateBreezemoon'),
('1527710490297', 'defaultRole', 'commonUpdateComment'),
('1527710490347', 'defaultRole', 'commonUseIL'),
('1527710490398', 'defaultRole', 'commonViewArticleHistory'),
('1527710490464', 'defaultRole', 'commonViewCommentHistory'),
('1527710490515', 'defaultRole', 'commonWatchArticle'),
('1527710490566', 'defaultRole', 'adUpdateADSide'),
('1527710490616', 'defaultRole', 'adUpdateBanner'),
('1527710490666', 'defaultRole', 'breezemoonRemoveBreezemoon'),
('1527710490717', 'defaultRole', 'breezemoonUpdateBreezemoon'),
('1528392719667', '1528392189334', 'commonAddArticle'),
('1528392721591', '1528392189334', 'commonAddArticleAnonymous'),
('1528392721721', '1528392189334', 'commonAddBreezemoon'),
('1528392721799', '1528392189334', 'commonAddComment'),
('1528392721849', '1528392189334', 'commonAddCommentAnonymous'),
('1528392721899', '1528392189334', 'commonAtParticipants'),
('1528392721949', '1528392189334', 'commonAtUser'),
('1528392722000', '1528392189334', 'commonBadArticle'),
('1528392722052', '1528392189334', 'commonBadComment'),
('1528392722102', '1528392189334', 'commonExchangeIC'),
('1528392722153', '1528392189334', 'commonFollowArticle'),
('1528392722204', '1528392189334', 'commonGoodArticle'),
('1528392722254', '1528392189334', 'commonGoodComment'),
('1528392722304', '1528392189334', 'commonRemoveArticle'),
('1528392722354', '1528392189334', 'commonRemoveBreezemoon'),
('1528392722406', '1528392189334', 'commonRemoveComment'),
('1528392722457', '1528392189334', 'commonStickArticle'),
('1528392722508', '1528392189334', 'commonThankArticle'),
('1528392722558', '1528392189334', 'commonThankComment'),
('1528392722608', '1528392189334', 'commonUpdateArticle'),
('1528392722658', '1528392189334', 'commonUpdateBreezemoon'),
('1528392722709', '1528392189334', 'commonUpdateComment'),
('1528392722759', '1528392189334', 'commonUseIL'),
('1528392722809', '1528392189334', 'commonViewArticleHistory'),
('1528392722859', '1528392189334', 'commonViewCommentHistory'),
('1528392722910', '1528392189334', 'commonWatchArticle'),
('1528392801778', '1528392246593', 'commonAddArticle'),
('1528392803771', '1528392246593', 'commonAddArticleAnonymous'),
('1528392803822', '1528392246593', 'commonAddBreezemoon'),
('1528392803872', '1528392246593', 'commonAddComment'),
('1528392803923', '1528392246593', 'commonAddCommentAnonymous'),
('1528392803973', '1528392246593', 'commonAtParticipants'),
('1528392804023', '1528392246593', 'commonAtUser'),
('1528392804074', '1528392246593', 'commonBadArticle'),
('1528392804125', '1528392246593', 'commonBadComment'),
('1528392804175', '1528392246593', 'commonExchangeIC'),
('1528392804225', '1528392246593', 'commonFollowArticle'),
('1528392804326', '1528392246593', 'commonGoodArticle'),
('1528392804377', '1528392246593', 'commonGoodComment'),
('1528392804428', '1528392246593', 'commonRemoveArticle'),
('1528392804478', '1528392246593', 'commonRemoveBreezemoon'),
('1528392804529', '1528392246593', 'commonRemoveComment'),
('1528392804579', '1528392246593', 'commonStickArticle'),
('1528392804629', '1528392246593', 'commonThankArticle'),
('1528392804680', '1528392246593', 'commonThankComment'),
('1528392804730', '1528392246593', 'commonUpdateArticle'),
('1528392804781', '1528392246593', 'commonUpdateBreezemoon'),
('1528392804831', '1528392246593', 'commonUpdateComment'),
('1528392804881', '1528392246593', 'commonUseIL'),
('1528392804932', '1528392246593', 'commonViewArticleHistory'),
('1528392804982', '1528392246593', 'commonViewCommentHistory'),
('1528392805032', '1528392246593', 'commonWatchArticle'),
('1528392839165', '1528392662667', 'commonAddArticle'),
('1528392840317', '1528392662667', 'commonAddArticleAnonymous'),
('1528392840368', '1528392662667', 'commonAddBreezemoon'),
('1528392840419', '1528392662667', 'commonAddComment'),
('1528392840469', '1528392662667', 'commonAddCommentAnonymous'),
('1528392840520', '1528392662667', 'commonAtParticipants'),
('1528392840571', '1528392662667', 'commonAtUser'),
('1528392840621', '1528392662667', 'commonBadArticle'),
('1528392840672', '1528392662667', 'commonBadComment'),
('1528392840722', '1528392662667', 'commonExchangeIC'),
('1528392840772', '1528392662667', 'commonFollowArticle'),
('1528392840823', '1528392662667', 'commonGoodArticle'),
('1528392840873', '1528392662667', 'commonGoodComment'),
('1528392840924', '1528392662667', 'commonRemoveArticle'),
('1528392840974', '1528392662667', 'commonRemoveBreezemoon'),
('1528392841024', '1528392662667', 'commonRemoveComment'),
('1528392841075', '1528392662667', 'commonStickArticle'),
('1528392841125', '1528392662667', 'commonThankArticle'),
('1528392841176', '1528392662667', 'commonThankComment'),
('1528392841226', '1528392662667', 'commonUpdateArticle'),
('1528392841277', '1528392662667', 'commonUpdateBreezemoon'),
('1528392841328', '1528392662667', 'commonUpdateComment'),
('1528392841378', '1528392662667', 'commonUseIL'),
('1528392841428', '1528392662667', 'commonViewArticleHistory'),
('1528392841478', '1528392662667', 'commonViewCommentHistory'),
('1528392841528', '1528392662667', 'commonWatchArticle'),
('1528392892019', '1528392611403', 'commonAddArticle'),
('1528392893369', '1528392611403', 'commonAddArticleAnonymous'),
('1528392893420', '1528392611403', 'commonAddBreezemoon'),
('1528392893470', '1528392611403', 'commonAddComment'),
('1528392893521', '1528392611403', 'commonAddCommentAnonymous'),
('1528392893571', '1528392611403', 'commonAtParticipants'),
('1528392893621', '1528392611403', 'commonAtUser'),
('1528392893671', '1528392611403', 'commonBadArticle'),
('1528392893722', '1528392611403', 'commonBadComment'),
('1528392893773', '1528392611403', 'commonExchangeIC'),
('1528392893823', '1528392611403', 'commonFollowArticle'),
('1528392893873', '1528392611403', 'commonGoodArticle'),
('1528392893924', '1528392611403', 'commonGoodComment'),
('1528392893974', '1528392611403', 'commonRemoveArticle'),
('1528392894024', '1528392611403', 'commonRemoveBreezemoon'),
('1528392894075', '1528392611403', 'commonRemoveComment'),
('1528392894125', '1528392611403', 'commonStickArticle'),
('1528392894175', '1528392611403', 'commonThankArticle'),
('1528392894225', '1528392611403', 'commonThankComment'),
('1528392894276', '1528392611403', 'commonUpdateArticle'),
('1528392894326', '1528392611403', 'commonUpdateBreezemoon'),
('1528392894376', '1528392611403', 'commonUpdateComment'),
('1528392894426', '1528392611403', 'commonUseIL'),
('1528392894477', '1528392611403', 'commonViewArticleHistory'),
('1528392894527', '1528392611403', 'commonViewCommentHistory'),
('1528392894577', '1528392611403', 'commonWatchArticle');

-- --------------------------------------------------------

--
-- 表的结构 `symphony_tag`
--

DROP TABLE IF EXISTS `symphony_tag`;
CREATE TABLE IF NOT EXISTS `symphony_tag` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `tagReferenceCount` int(11) NOT NULL COMMENT '鏍囩寮曠敤锛堝笘瀛�/鐢ㄦ埛鑷瘎绛夛級璁℃暟',
  `tagCommentCount` int(11) NOT NULL COMMENT '鏍囩鍥炲笘璁℃暟',
  `tagFollowerCount` int(11) NOT NULL COMMENT '鏍囩鍏虫敞鑰呰鏁�',
  `tagLinkCount` int(11) NOT NULL COMMENT '鏍囩閾炬帴寮曠敤璁℃暟',
  `tagTitle` varchar(50) NOT NULL COMMENT '鏍囩鏍囬',
  `tagURI` varchar(255) NOT NULL COMMENT '鏍囩璁块棶璺緞',
  `tagDescription` text NOT NULL COMMENT '鏍囩鎻忚堪',
  `tagIconPath` varchar(128) NOT NULL COMMENT '鏍囩鍥炬爣璺緞',
  `tagCSS` mediumtext NOT NULL COMMENT '鏍囩 CSS',
  `tagStatus` int(11) NOT NULL COMMENT '0锛氭甯革紝1锛氬皝绂�',
  `tagGoodCnt` int(11) NOT NULL COMMENT '鏍囩鐐硅禐璁℃暟',
  `tagBadCnt` int(11) NOT NULL COMMENT '鏍囩鐐硅俯璁℃暟',
  `tagSeoTitle` varchar(128) NOT NULL COMMENT '鏍囩 SEO 鏍囬',
  `tagSeoKeywords` varchar(128) NOT NULL COMMENT '鏍囩 SEO 鍏抽敭瀛�',
  `tagSeoDesc` text NOT NULL COMMENT '鏍囩 SEO 鎻忚堪',
  `tagRandomDouble` double NOT NULL COMMENT '鏍囩闅忔満鏁帮紝鐢ㄤ簬蹇�熼�夋嫨闅忔満鏍囩',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鏍囩琛�';

--
-- 转存表中的数据 `symphony_tag`
--

INSERT INTO `symphony_tag` (`oId`, `tagReferenceCount`, `tagCommentCount`, `tagFollowerCount`, `tagLinkCount`, `tagTitle`, `tagURI`, `tagDescription`, `tagIconPath`, `tagCSS`, `tagStatus`, `tagGoodCnt`, `tagBadCnt`, `tagSeoTitle`, `tagSeoKeywords`, `tagSeoDesc`, `tagRandomDouble`) VALUES
('1527409720851', 0, 0, 0, 0, 'Announcement', 'announcement', '', '', '', 0, 0, 0, 'Announcement', 'Announcement', '', 0.3825263162815764),
('1527409723366', 0, 0, 1, 0, 'SYM', '', '', '', '', 0, 0, 0, 'Sym', 'Sym', '', 0.6456494978961265),
('1527491098339', 0, 0, 2, 0, '第一个帖子', '%E7%AC%AC%E4%B8%80%E4%B8%AA%E5%B8%96%E5%AD%90', '', '', '', 0, 0, 0, '第一个帖子', '第一个帖子', '', 0.5384241257882809),
('1527496231793', 0, 1, 2, 0, '第二个帖子', '%E7%AC%AC%E4%BA%8C%E4%B8%AA%E5%B8%96%E5%AD%90', '', '', '', 0, 0, 0, '第二个帖子', '第二个帖子', '', 0.1180800595266509),
('1527496380077', 10, 0, 0, 0, '私信', '%E7%A7%81%E4%BF%A1', '', '', '', 0, 0, 0, '私信', '私信', '', 0.07129457657398941),
('1527577811591', 2, 9, 1, 0, '行风建设', '%E8%A1%8C%E9%A3%8E%E5%BB%BA%E8%AE%BE', '', '', '', 0, 0, 0, '行风建设', '行风建设', '', 0.15824894074629947),
('1527577811815', 2, 7, 1, 0, '公交资讯', '%E5%85%AC%E4%BA%A4%E8%B5%84%E8%AE%AF', '', '', '', 0, 0, 0, '公交资讯', '公交资讯', '', 0.6792280152835959),
('1527588789160', 1, 2, 0, 0, '公交行业', '%E5%85%AC%E4%BA%A4%E8%A1%8C%E4%B8%9A', '', '', '', 0, 0, 0, '公交行业', '公交行业', '', 0.9214434994706425),
('1528696088029', 1, 7, 1, 0, '失物招领', '%E5%A4%B1%E7%89%A9%E6%8B%9B%E9%A2%86', '', '', '', 0, 0, 0, '失物招领', '失物招领', '', 0.9930505517374413);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_tag_article`
--

DROP TABLE IF EXISTS `symphony_tag_article`;
CREATE TABLE IF NOT EXISTS `symphony_tag_article` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `article_oId` varchar(19) NOT NULL COMMENT '甯栧瓙 id',
  `tag_oId` varchar(19) NOT NULL COMMENT '鏍囩 id',
  `articleCommentCount` int(11) NOT NULL COMMENT '甯栧瓙鍥炲笘璁℃暟',
  `articleLatestCmtTime` bigint(20) NOT NULL COMMENT '甯栧瓙鏈�杩戜竴娆″洖甯栨椂闂�',
  `redditScore` double NOT NULL COMMENT '甯栧瓙 Reddit 绠楁硶璇勫垎',
  `articlePerfect` int(11) NOT NULL COMMENT '0锛氬笘瀛愪笉鏄紭閫夛紝1锛氬笘瀛愭槸浼橀��',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鏍囩 - 甯栧瓙鍏宠仈琛�';

--
-- 转存表中的数据 `symphony_tag_article`
--

INSERT INTO `symphony_tag_article` (`oId`, `article_oId`, `tag_oId`, `articleCommentCount`, `articleLatestCmtTime`, `redditScore`, `articlePerfect`) VALUES
('1527496380174', '1527496379412', '1527496380077', 0, 0, 0, 0),
('1527577811691', '1527577811533', '1527577811591', 5, 1528435878942, 0, 0),
('1527577811868', '1527577811533', '1527577811815', 5, 1528435878942, 0, 0),
('1527579101447', '1527579101393', '1527496380077', 0, 0, 0, 0),
('1527588789267', '1527588789100', '1527588789160', 2, 1528436372978, 0, 0),
('1527596721286', '1527596720588', '1527496380077', 0, 0, 0, 0),
('1527597062683', '1527597062620', '1527496380077', 0, 0, 0, 0),
('1527597353165', '1527597353112', '1527496380077', 0, 0, 0, 0),
('1527620001583', '1527620001481', '1527496380077', 0, 0, 0, 0),
('1527623376230', '1527623376126', '1527496380077', 0, 0, 0, 0),
('1528434389910', '1528434389852', '1527496380077', 0, 0, 0, 0),
('1528435613152', '1528435613099', '1527496380077', 0, 0, 0, 0),
('1528436220083', '1528436220029', '1527496380077', 0, 0, 0, 0),
('1528696039748', '1527491098243', '1527577811815', 2, 0, 0, 0),
('1528696088098', '1527496231742', '1528696088029', 7, 0, 0, 0),
('1528789202599', '1528789202539', '1527577811591', 4, 1528855977620, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_tag_tag`
--

DROP TABLE IF EXISTS `symphony_tag_tag`;
CREATE TABLE IF NOT EXISTS `symphony_tag_tag` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `tag1_oId` varchar(19) NOT NULL COMMENT '鏍囩1 id',
  `tag2_oId` varchar(19) NOT NULL COMMENT '鏍囩2 id',
  `weight` int(11) NOT NULL COMMENT '鍏宠仈鏉冮噸',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鏍囩 - 鏍囩鍏宠仈琛�';

--
-- 转存表中的数据 `symphony_tag_tag`
--

INSERT INTO `symphony_tag_tag` (`oId`, `tag1_oId`, `tag2_oId`, `weight`) VALUES
('1527409724962', '1527409723366', '1527409720851', 1),
('1527577812176', '1527577811591', '1527577811815', 1);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_tag_user_link`
--

DROP TABLE IF EXISTS `symphony_tag_user_link`;
CREATE TABLE IF NOT EXISTS `symphony_tag_user_link` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `linkId` varchar(19) NOT NULL COMMENT '閾炬帴 id',
  `tagId` varchar(19) NOT NULL COMMENT '鏍囩 id',
  `userId` varchar(19) NOT NULL COMMENT '鐢ㄦ埛 id',
  `linkScore` double NOT NULL COMMENT '閾炬帴璇勫垎',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鏍囩 - 鐢ㄦ埛 - 閾炬帴鍏宠仈琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_user`
--

DROP TABLE IF EXISTS `symphony_user`;
CREATE TABLE IF NOT EXISTS `symphony_user` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `userNo` int(11) NOT NULL COMMENT '鐢ㄦ埛缂栧彿',
  `userEmail` varchar(255) NOT NULL COMMENT '鐢ㄦ埛閭',
  `userName` varchar(20) NOT NULL COMMENT '鐢ㄦ埛鍚�',
  `userPassword` varchar(32) NOT NULL COMMENT '瀵嗙爜锛圡D5锛�',
  `userNickname` varchar(20) NOT NULL COMMENT '鏄电О',
  `userTags` varchar(128) NOT NULL COMMENT '鐢ㄦ埛鑷瘎鏍囩',
  `userURL` varchar(100) NOT NULL COMMENT '鐢ㄦ埛閾炬帴',
  `userQQ` varchar(12) NOT NULL COMMENT '鐢ㄦ埛 QQ',
  `userIntro` varchar(255) NOT NULL COMMENT '鐢ㄦ埛绠�浠�',
  `userAvatarType` int(11) NOT NULL COMMENT '0锛欸ravatar锛�1锛氬閾�',
  `userAvatarURL` varchar(255) NOT NULL COMMENT '澶村儚鍥剧墖 URL',
  `userOnlineFlag` char(1) NOT NULL COMMENT '鐢ㄦ埛鏄惁鍦ㄧ嚎',
  `userB3Key` varchar(20) NOT NULL COMMENT 'B3 Key',
  `userB3ClientAddArticleURL` varchar(150) NOT NULL COMMENT '瀹㈡埛绔敹鏂囨帴鍙�',
  `userB3ClientUpdateArticleURL` varchar(150) NOT NULL COMMENT '瀹㈡埛绔洿鏂版帴鍙�',
  `userB3ClientAddCommentURL` varchar(150) NOT NULL COMMENT '瀹㈡埛绔敹璇勬帴鍙�',
  `userRole` varchar(20) NOT NULL COMMENT '鐢ㄦ埛瑙掕壊',
  `userArticleCount` int(11) NOT NULL COMMENT '鍙戝笘璁℃暟',
  `userCommentCount` int(11) NOT NULL COMMENT '鍥炲笘璁℃暟',
  `userTagCount` int(11) NOT NULL COMMENT '鐢ㄦ埛鏍囩璁℃暟',
  `userStatus` int(11) NOT NULL COMMENT '0锛氭甯革紝1锛氬皝绂�',
  `userPoint` int(11) NOT NULL COMMENT '绉垎浣欓',
  `userUsedPoint` int(11) NOT NULL COMMENT '绱娑堣垂绉垎',
  `userJoinPointRank` int(11) NOT NULL COMMENT '0锛氬弬涓庣Н鍒嗕綑棰濇帓琛屾锛�1锛氫笉鍙備笌绉垎浣欓鎺掕姒�',
  `userJoinUsedPointRank` int(11) NOT NULL COMMENT '0锛氬弬涓庣Н鍒嗘秷璐规帓琛屾锛�1锛氫笉鍙備笌绉垎娑堣垂鎺掕姒�',
  `userLatestArticleTime` bigint(20) NOT NULL COMMENT '鏈�杩戜竴娆″彂甯栨椂闂�',
  `userLatestCmtTime` bigint(20) NOT NULL COMMENT '鏈�杩戜竴娆″洖甯栨椂闂�',
  `userLatestLoginTime` bigint(20) NOT NULL COMMENT '鏈�杩戜竴娆＄櫥褰曟椂闂�',
  `userLatestLoginIP` varchar(128) NOT NULL COMMENT '鏈�杩戜竴娆＄櫥褰� IP',
  `userAppRole` int(11) NOT NULL COMMENT '0锛氬簲鐢ㄨ鑹� - 榛戝锛�1锛氬簲鐢ㄨ鑹� - 鐢诲',
  `userCheckinTime` bigint(20) NOT NULL COMMENT '鏈�杩戜竴娆＄鍒版椂闂�',
  `userLongestCheckinStreakStart` int(11) NOT NULL COMMENT '鏈�闀胯繛缁鍒板紑濮嬫棩鏈�',
  `userLongestCheckinStreakEnd` int(11) NOT NULL COMMENT '鏈�闀胯繛缁鍒扮粨鏉熸棩鏈�',
  `userCurrentCheckinStreakStart` int(11) NOT NULL COMMENT '褰撳墠杩炵画绛惧埌寮�濮嬫棩鏈�',
  `userCurrentCheckinStreakEnd` int(11) NOT NULL COMMENT '褰撳墠杩炵画绛惧埌缁撴潫鏃ユ湡',
  `userLongestCheckinStreak` int(11) NOT NULL COMMENT '鏈�闀胯繛缁鍒板ぉ鏁�',
  `userCurrentCheckinStreak` int(11) NOT NULL COMMENT '褰撳墠杩炵画绛惧埌澶╂暟',
  `userSkin` varchar(32) NOT NULL COMMENT '鐢ㄦ埛鐨偆',
  `userMobileSkin` varchar(32) NOT NULL COMMENT '鐢ㄦ埛绉诲姩绔毊鑲�',
  `userCountry` varchar(32) NOT NULL COMMENT '鐢ㄦ埛鎵�鍦ㄥ浗瀹�',
  `userProvince` varchar(32) NOT NULL COMMENT '鐢ㄦ埛鎵�鍦ㄧ渷浠�',
  `userCity` varchar(32) NOT NULL COMMENT '鐢ㄦ埛鎵�鍦ㄥ煄甯�',
  `userUpdateTime` bigint(20) NOT NULL COMMENT '鐢ㄦ埛鏇存柊鏃堕棿',
  `userGeoStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鍦扮悊浣嶇疆锛�1锛氫笉鍏紑鍦扮悊浣嶇疆',
  `syncWithSymphonyClient` char(1) NOT NULL COMMENT '鏄惁寮�鍚� B3 鍚屾',
  `userCommentViewMode` int(11) NOT NULL COMMENT '0锛氫紶缁熷洖甯栨祻瑙堟ā寮忥紙鎸夋椂闂村崌搴忥級锛�1锛氬疄鏃跺洖甯栨祻瑙堟ā寮忥紙鎸夋椂闂撮檷搴忥級',
  `userUAStatus` int(11) NOT NULL COMMENT '0锛氬叕寮� User-Agent锛�1锛氫笉鍏紑 User-Agent',
  `userNotifyStatus` int(11) NOT NULL COMMENT '0锛氬惎鐢� Web 閫氱煡锛�1锛氱鐢� Web 閫氱煡',
  `userPointStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�绉垎鍒楄〃锛�1锛氫笉鍏紑绉垎鍒楄〃',
  `userBreezemoonStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�娓呴鏄庢湀鍒楄〃锛�1锛氫笉鍏紑娓呴鏄庢湀鍒楄〃',
  `userFollowerStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鍏虫敞鑰呭垪琛紝1锛氫笉鍏紑鍏虫敞鑰呭垪琛�',
  `userFollowingArticleStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鏀惰棌甯栧瓙鍒楄〃锛�1锛氫笉鍏紑鏀惰棌甯栧瓙鍒楄〃',
  `userWatchingArticleStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鍏虫敞甯栧瓙鍒楄〃锛�1锛氫笉鍏紑鍏虫敞甯栧瓙鍒楄〃',
  `userFollowingTagStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鍏虫敞鏍囩鍒楄〃锛�1锛氫笉鍏紑鍏虫敞鏍囩鍒楄〃',
  `userFollowingUserStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鍏虫敞鐢ㄦ埛鍒楄〃锛�1锛氫笉鍏紑鍏虫敞鐢ㄦ埛鍒楄〃',
  `userCommentStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鍥炲笘鍒楄〃锛�1锛氫笉鍏紑鍥炲笘鍒楄〃',
  `userArticleStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�甯栧瓙鍒楄〃锛�1锛氫笉鍏紑甯栧瓙鍒楄〃',
  `userOnlineStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�鍦ㄧ嚎鐘舵�侊紝1锛氫笉鍏紑鍦ㄧ嚎鐘舵��',
  `userTimelineStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�姝ゅ埢锛�1锛氫笉鍏紑姝ゅ埢',
  `userForgeLinkStatus` int(11) NOT NULL COMMENT '0锛氬叕寮�閾炬帴鐔旂倝锛�1锛氫笉鍏紑閾炬帴鐔旂倝',
  `userListPageSize` int(11) NOT NULL COMMENT '甯栧瓙鍒楄〃姣忛〉鏄剧ず鏉℃暟',
  `userListViewMode` int(11) NOT NULL COMMENT '0锛氫粎鏍囬锛�1锛氭爣棰�+鎽樿',
  `userAvatarViewMode` int(11) NOT NULL COMMENT '0锛氬師濮嬪ご鍍忓浘鐗囷紝姣斿 gif 鍔ㄥ浘锛�1锛氶潤鎬佸ご鍍忓浘鐗�',
  `userSubMailStatus` int(11) NOT NULL COMMENT '0锛氬惎鐢ㄩ偖浠惰闃咃紝1锛氱鐢ㄩ偖浠惰闃�',
  `userSubMailSendTime` bigint(20) NOT NULL COMMENT '鐢ㄦ埛璁㈤槄閭欢鏈�杩戞帹閫佹椂闂�',
  `userKeyboardShortcutsStatus` int(11) NOT NULL COMMENT '0锛氬惎鐢ㄩ敭鐩樺揩鎹烽敭锛�1锛氱鐢ㄩ敭鐩樺揩鎹烽敭',
  `userReplyWatchArticleStatus` int(11) NOT NULL COMMENT '0锛氬洖甯栧悗鑷姩鍏虫敞甯栧瓙锛�1锛氬洖甯栧悗涓嶈嚜鍔ㄥ叧娉ㄥ笘瀛�',
  `userLanguage` varchar(64) NOT NULL COMMENT '鐢ㄦ埛鎵�閫夎瑷�',
  `userTimezone` varchar(64) NOT NULL COMMENT '鐢ㄦ埛鎵�鍦ㄦ椂鍖�',
  `userGuideStep` int(11) NOT NULL COMMENT '鏂版敞鍐屽悗鍚戝鍒拌揪绗嚑姝�',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鐢ㄦ埛琛�';

--
-- 转存表中的数据 `symphony_user`
--

INSERT INTO `symphony_user` (`oId`, `userNo`, `userEmail`, `userName`, `userPassword`, `userNickname`, `userTags`, `userURL`, `userQQ`, `userIntro`, `userAvatarType`, `userAvatarURL`, `userOnlineFlag`, `userB3Key`, `userB3ClientAddArticleURL`, `userB3ClientUpdateArticleURL`, `userB3ClientAddCommentURL`, `userRole`, `userArticleCount`, `userCommentCount`, `userTagCount`, `userStatus`, `userPoint`, `userUsedPoint`, `userJoinPointRank`, `userJoinUsedPointRank`, `userLatestArticleTime`, `userLatestCmtTime`, `userLatestLoginTime`, `userLatestLoginIP`, `userAppRole`, `userCheckinTime`, `userLongestCheckinStreakStart`, `userLongestCheckinStreakEnd`, `userCurrentCheckinStreakStart`, `userCurrentCheckinStreakEnd`, `userLongestCheckinStreak`, `userCurrentCheckinStreak`, `userSkin`, `userMobileSkin`, `userCountry`, `userProvince`, `userCity`, `userUpdateTime`, `userGeoStatus`, `syncWithSymphonyClient`, `userCommentViewMode`, `userUAStatus`, `userNotifyStatus`, `userPointStatus`, `userBreezemoonStatus`, `userFollowerStatus`, `userFollowingArticleStatus`, `userWatchingArticleStatus`, `userFollowingTagStatus`, `userFollowingUserStatus`, `userCommentStatus`, `userArticleStatus`, `userOnlineStatus`, `userTimelineStatus`, `userForgeLinkStatus`, `userListPageSize`, `userListViewMode`, `userAvatarViewMode`, `userSubMailStatus`, `userSubMailSendTime`, `userKeyboardShortcutsStatus`, `userReplyWatchArticleStatus`, `userLanguage`, `userTimezone`, `userGuideStep`) VALUES
('1527409718429', 1, 'admin@sym.b3log.org', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '', '', '', 2, 'http://localhost:8080/upload/8283418e22d2469aa3910481f157dd8e_86d2dfb9d6deb3a5831178273213552f.jpg', '0', '', '', '', '', 'adminRole', 0, 1, 7, 0, 475, 25, 0, 0, 1527409724478, 1527495768014, 1528393020441, '0:0:0:0:0:0:0:1', 0, 0, 0, 0, 0, 0, 0, 0, 'classic', 'mobile', '', '', '', 1527424891619, 0, '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 1527409718413, 1, 0, 'zh_CN', 'Asia/Shanghai', 0),
('1527409719398', 2, 'default_commenter@sym.b3log.org', 'Default Commenter', '9aa4d74dd6c98174b3bf592d4b4051c1', '', '', '', '', '', 2, 'http://localhost:8080/upload/4bd4a0e81b334e8cb9c9fc02bed3fd66.jpg', '0', '', '', '', '', 'defaultCommenterRole', 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 'classic', 'mobile', '', '', '', 0, 0, '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 1527409719398, 1, 0, 'zh_CN', 'Asia/Shanghai', 0),
('1527413002403', 4, '141250006@smail.nju.edu.cn', 'czb', 'feff38c872e7c56d49e0323f98b44bb4', '', '', '', '', '', 2, 'http://localhost:8080/upload/cc615edbe2634d6db6c3bb23235774f7_4c2174f7776fc5abbc364e06393d8b63.jpg', '1', '', '', '', '', '1528392611403', 9, 3, 6, 0, 99, 461, 0, 0, 1528789202488, 1528436452296, 1528870276797, '0:0:0:0:0:0:0:1', 0, 0, 0, 0, 0, 0, 0, 0, 'classic', 'mobile', '', '', '', 1527416311918, 0, '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 1527416063424, 1, 0, 'zh_CN', 'Asia/Shanghai', 0),
('1527445273905', 5, 'czb951003@163.com', 'caozhengbin', 'c160f1de3bbe6f5eb2dee872488daf4f', '', '', '', '', '', 2, 'http://localhost:8080/upload/de7081e311b64889a72ab740de2ae0d2.jpg?1527445487718', '0', '', '', '', '', '1528392246593', 6, 13, 3, 0, 308, 222, 0, 0, 1528435613097, 1528855977620, 1528856476014, '0:0:0:0:0:0:0:1', 0, 0, 0, 0, 0, 0, 0, 0, 'classic', 'mobile', '', '', '', 0, 0, '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 1527445487718, 1, 0, 'zh_CN', 'Asia/Shanghai', 0);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_user_book_article`
--

DROP TABLE IF EXISTS `symphony_user_book_article`;
CREATE TABLE IF NOT EXISTS `symphony_user_book_article` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `userId` varchar(19) NOT NULL COMMENT '鐢ㄦ埛 id',
  `bookId` varchar(19) NOT NULL COMMENT '涔︾睄 id',
  `articleId` varchar(19) NOT NULL COMMENT '甯栧瓙 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鐢ㄦ埛 - 涔︾睄 - 甯栧瓙鍏宠仈琛�';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_user_tag`
--

DROP TABLE IF EXISTS `symphony_user_tag`;
CREATE TABLE IF NOT EXISTS `symphony_user_tag` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `user_oId` varchar(19) NOT NULL COMMENT '鐢ㄦ埛 id',
  `tag_oId` varchar(19) NOT NULL COMMENT '鏍囩 id',
  `type` int(11) NOT NULL COMMENT '0锛氬垱寤鸿�咃紝1锛氬笘瀛愪娇鐢紝2锛氱敤鎴疯嚜璇勬爣绛�',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鐢ㄦ埛 - 鏍囩鍏宠仈琛�';

--
-- 转存表中的数据 `symphony_user_tag`
--

INSERT INTO `symphony_user_tag` (`oId`, `user_oId`, `tag_oId`, `type`) VALUES
('1527409720944', '1527409718429', '1527409720851', 0),
('1527409721210', '1527409718429', '1527409721116', 0),
('1527409723428', '1527409718429', '1527409723366', 0),
('1527409723772', '1527409718429', '1527409723709', 0),
('1527409724040', '1527409718429', '1527409723978', 0),
('1527409724290', '1527409718429', '1527409724228', 0),
('1527409724618', '1527409718429', '1527409723366', 1),
('1527409724743', '1527409718429', '1527409720851', 1),
('1527416275191', '1527413002403', '1527416273281', 0),
('1527491098459', '1527413002403', '1527491098339', 0),
('1527491626719', '1527409718429', '1527491626616', 0),
('1527496231954', '1527445273905', '1527496231793', 0),
('1527496380230', '1527445273905', '1527496380077', 0),
('1527496465068', '1527413002403', '1527496464906', 0),
('1527577811742', '1527413002403', '1527577811591', 0),
('1527577811919', '1527413002403', '1527577811815', 0),
('1527588789330', '1527413002403', '1527588789160', 0),
('1528435613250', '1527445273905', '1527496380077', 1),
('1528436220194', '1527413002403', '1527496380077', 1),
('1528696039809', '1527413002403', '1527577811815', 1),
('1528696088150', '1527445273905', '1528696088029', 0),
('1528789202666', '1527413002403', '1527577811591', 1);

-- --------------------------------------------------------

--
-- 表的结构 `symphony_verifycode`
--

DROP TABLE IF EXISTS `symphony_verifycode`;
CREATE TABLE IF NOT EXISTS `symphony_verifycode` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `userId` varchar(19) NOT NULL COMMENT '鎺ユ敹鐢ㄦ埛 id',
  `type` int(11) NOT NULL COMMENT '0锛氶偖浠�',
  `bizType` int(11) NOT NULL COMMENT '0锛氭敞鍐岋紝1锛氶噸缃瘑鐮�',
  `receiver` varchar(64) NOT NULL COMMENT '鎺ユ敹鑰�',
  `code` varchar(64) NOT NULL COMMENT '楠岃瘉鐮�',
  `status` int(11) NOT NULL COMMENT '0锛氭湭鍙戦�侊紝1锛氬凡鍙戦��',
  `expired` bigint(20) NOT NULL COMMENT '杩囨湡鏃堕棿',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='楠岃瘉鐮佽〃';

-- --------------------------------------------------------

--
-- 表的结构 `symphony_vote`
--

DROP TABLE IF EXISTS `symphony_vote`;
CREATE TABLE IF NOT EXISTS `symphony_vote` (
  `oId` varchar(19) NOT NULL COMMENT '涓婚敭',
  `userId` varchar(19) NOT NULL COMMENT '鎶曠エ鑰� id',
  `type` int(11) NOT NULL COMMENT '0锛氳禐鎴愶紝1锛氬弽瀵�',
  `dataType` int(11) NOT NULL COMMENT '0锛氬笘瀛愶紝1锛氬洖甯栵紝2锛氱敤鎴凤紝3锛氭爣绛�',
  `dataId` varchar(19) NOT NULL COMMENT '鏁版嵁瀹炰綋 id',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='鎶曠エ琛�';

--
-- 转存表中的数据 `symphony_vote`
--

INSERT INTO `symphony_vote` (`oId`, `userId`, `type`, `dataType`, `dataId`) VALUES
('1527495775954', '1527409718429', 0, 1, '1527495768024'),
('1527614571292', '1527413002403', 0, 1, '1527597456693'),
('1527614667933', '1527413002403', 1, 1, '1527597432404'),
('1527618812383', '1527413002403', 0, 0, '1527496231742');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
