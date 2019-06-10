/*
Navicat MySQL Data Transfer

Source Server         : keep
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : mykeep

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-04 16:35:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `userId` int(10) NOT NULL,
  `trainId` int(20) NOT NULL,
  PRIMARY KEY (`userId`,`trainId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('1', '50001');
INSERT INTO `history` VALUES ('1', '50002');
INSERT INTO `history` VALUES ('2', '50003');
INSERT INTO `history` VALUES ('2', '50004');
INSERT INTO `history` VALUES ('3', '50005');
INSERT INTO `history` VALUES ('3', '50006');

-- ----------------------------
-- Table structure for infodetail
-- ----------------------------
DROP TABLE IF EXISTS `infodetail`;
CREATE TABLE `infodetail` (
  `informationId` int(10) NOT NULL,
  `authorName` varchar(20) DEFAULT NULL,
  `picUrl` varchar(255) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`informationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infodetail
-- ----------------------------
INSERT INTO `infodetail` VALUES ('1', 'Tony', '/static/img/TrainingIndex/1519455021015_750x700.jpg', '测试Tony', '测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本测试文本');
INSERT INTO `infodetail` VALUES ('2', 'Tom', '/static/img/TrainingIndex/1519888737768_315x315.png', '测试Tom', '这是第二条数据，测试Tom这是第二条数据，测试Tom这是第二条数据，测试Tom这是第二条数据，测试Tom这是第二条数据，测试Tom这是第二条数据，测试Tom这是第二条数据，测试Tom这是第二条数据，测试Tom');
INSERT INTO `infodetail` VALUES ('3', 'test01', '/static/img/TrainingIndex/1499681112983_375x375.jpg', '测试001', 'TestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTestTest');

-- ----------------------------
-- Table structure for infolist
-- ----------------------------
DROP TABLE IF EXISTS `infolist`;
CREATE TABLE `infolist` (
  `infoId` int(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `picUrl` varchar(64) NOT NULL,
  PRIMARY KEY (`infoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of infolist
-- ----------------------------

-- ----------------------------
-- Table structure for lessondetail
-- ----------------------------
DROP TABLE IF EXISTS `lessondetail`;
CREATE TABLE `lessondetail` (
  `lessonId` int(20) NOT NULL,
  `level` int(6) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picUrl` varchar(128) NOT NULL,
  `content` text,
  `movementId` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`lessonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lessondetail
-- ----------------------------
INSERT INTO `lessondetail` VALUES ('100001', '4', '活力暴击', '/static/img/LesShow/lessonList/1555993932103_MDQtLS0lRTYlQjQl.jpg', '这是一节腰腹塑形训练课程。与手环结合，可以帮助你更安全准确的完成每个动作。K4的课程在腹部动作上加入了具有不稳定的支撑类动作，给腹部更强的灼烧感。心肺训练采用tabata形式，增加燃脂效率，帮你全面打造性感腹肌。', '200015,200015,200002');
INSERT INTO `lessondetail` VALUES ('100002', '3', '唤醒心中的猛兽', '/static/img/LesShow/lessonList/1556008578261_MTEtLS0lRTUlOTQl.jpg', '让我们回归自然的方式，利用模仿动物的训练形式，不仅能消耗更多的卡路里燃烧更多的脂肪，还可以全面打造身体的关节力量、稳定协调和灵活性，锻炼到核心力量和全身大小肌群，提升你的身体功能，让你能够更好的控制自己的身体。你无比强大！让我们用一节酣畅淋漓的训练来唤醒你心中的猛兽吧！', '200055,200004,200104');
INSERT INTO `lessondetail` VALUES ('100003', '3', '燃脂跑·MIIT 进阶', '/static/img/LesShow/lessonList/1527323907666_750x700.jpg', '轻松燃脂 · 4 公里 · 走跑间歇训练', '');
INSERT INTO `lessondetail` VALUES ('100004', '5', '腰腹塑型强化', '/static/img/LesShow/lessonList/1545130617634_750x700.jpg', '这是一节腰腹塑形训练课程。与手环结合，可以帮助你更安全准确的完成每个动作。K4的课程在腹部动作上加入了具有不稳定的支撑类动作，给腹部更强的灼烧感。心肺训练采用tabata形式，增加燃脂效率，帮你全面打造性感腹肌。', '200065,200045,200035,200026');
INSERT INTO `lessondetail` VALUES ('100005', '2', '零噪音减脂入门', '/static/img/LesShow/lessonList/1516952026427_750x700.jpg', '课程采用「零噪音」的设计理念，避免了常规减脂训练中双脚同时离地的高噪音动作。同时，课程通过循环训练使训练者在训练过程中的心率始终保持在高效的减脂区间，让训练者在不打扰他人的情况下高效燃脂。', '');
INSERT INTO `lessondetail` VALUES ('100006', '4', '零噪音减脂进阶', '/static/img/LesShow/lessonList/1516951989089_750x700.jpg', '课程采用「零噪音」的设计理念，避免了常规减脂训练中双脚同时离地的高噪音动作。同时，课程通过高强度循环训练使训练者在训练过程中的心率始终保持在高效的减脂区间，让训练者在不打扰他人的情况下高效燃脂。', '');
INSERT INTO `lessondetail` VALUES ('100007', '5', '腹肌撕裂者进阶', '/static/img/LesShow/lessonList/1478591243022_750x700.jpg', '「火遍全球」的腹肌训练，让你拥有更强劲的腰腹，更漂亮的腹肌。在进行腹肌训练时，会有一种“灼烧”、“撕裂”的感觉，这代表动作对腹肌刺激的到位。狂热健身爱好者们追求的就是这一种撕裂感，在一次次的撕裂后，腹肌的形态越来越棒。', null);
INSERT INTO `lessondetail` VALUES ('100008', '2', '轻度肩颈不适缓解', '/static/img/LesShow/lessonList/1547457398093_750x562.jpg', '日常生活中，很多人可能都有过肩颈不舒服的经历。', null);
INSERT INTO `lessondetail` VALUES ('100009', '4', '哑铃背部训练', '/static/img/LesShow/lessonList/1539766707186_750x700.jpg', '对于新手或初学者来说，在训练中学会背部肌群的发力与控制并不容易。徒手训练容易帮助新手快速找到背部的发力感，但要提升背部的训练效果，增加一定的负重是非常必要的。哑铃就是不错的选择！本次课程将给你带来在家就能完成的哑铃背部训练！快来加入训练吧！', null);
INSERT INTO `lessondetail` VALUES ('100010', '3', '肩部训练', '/static/img/LesShow/lessonList/1540200342885_750x700.jpg', '本课程为健身房增肌系列课程。增肌训练以“肌肥大”为目的，通过“负荷渐进”不断给予肌肉新的刺激，从而实现肌肉的增长；它对肌肉力量、肌肉耐力、身体柔韧性都有较高的要求。和大多数肌群不同的是，由于肩部特殊的生理特性，我们在肩部增肌训练中通常采用”小重量多次数“的训练原则，这样能帮助我们达到最佳的肩部训练效果，同时也能减少肩关节的损伤。', null);
INSERT INTO `lessondetail` VALUES ('100011', '3', '有氧训练', '/static/img/LesShow/lessonList/1544756688523_750x750.jpg', '高消耗 · 5 公里 · 持续慢跑训练', null);
INSERT INTO `lessondetail` VALUES ('100012', '4', '虎背熊腰', '/static/img/LesShow/lessonList/1536912389805_750x700.jpg', '核心功能的强弱在一定程度上影响你的腹肌形态，更决定你的运动能力，可以说它是你一切运动的基础。本节核心功能强化作为「核心功能训练系列」的高阶课程，有一定的难度和强度。训练全程同样强调呼吸配合、腰椎段稳定控制，训练动作具有更高的综合性和功能价值。别再等待，快加入核心功能强化训练，挑战更强的你！', null);

-- ----------------------------
-- Table structure for lessonlist
-- ----------------------------
DROP TABLE IF EXISTS `lessonlist`;
CREATE TABLE `lessonlist` (
  `lessonId` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `count` int(5) DEFAULT NULL,
  `level` int(6) NOT NULL,
  `picUrl` varchar(128) NOT NULL,
  PRIMARY KEY (`lessonId`)
) ENGINE=InnoDB AUTO_INCREMENT=100013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lessonlist
-- ----------------------------
INSERT INTO `lessonlist` VALUES ('100001', '活力暴击', '2', '4', '/static/img/LesShow/lessonList/1555993932103_MDQtLS0lRTYlQjQl.jpg');
INSERT INTO `lessonlist` VALUES ('100002', '唤醒心中的猛兽', '3', '3', '/static/img/LesShow/lessonList/1556008578261_MTEtLS0lRTUlOTQl.jpg');
INSERT INTO `lessonlist` VALUES ('100003', '燃脂跑·MIIT 进阶', '4', '3', '/static/img/LesShow/lessonList/1527323907666_750x700.jpg');
INSERT INTO `lessonlist` VALUES ('100004', '腰腹塑型强化', '3', '5', '/static/img/LesShow/lessonList/1545130617634_750x700.jpg');
INSERT INTO `lessonlist` VALUES ('100005', '零噪音减脂入门', '1', '2', '/static/img/LesShow/lessonList/1516952026427_750x700.jpg');
INSERT INTO `lessonlist` VALUES ('100006', '零噪音减脂进阶', '1', '4', '/static/img/LesShow/lessonList/1516951989089_750x700.jpg');
INSERT INTO `lessonlist` VALUES ('100007', '腹肌撕裂者进阶', '1', '5', '/static/img/LesShow/lessonList/1478591243022_750x700.jpg');
INSERT INTO `lessonlist` VALUES ('100008', '轻度肩颈不适缓解', '3', '2', '/static/img/LesShow/lessonList/1547457398093_750x562.jpg');
INSERT INTO `lessonlist` VALUES ('100009', '哑铃背部训练', '1', '4', '/static/img/LesShow/lessonList/1539766707186_750x700.jpg');
INSERT INTO `lessonlist` VALUES ('100010', '肩部训练', '1', '3', '/static/img/LesShow/lessonList/1540200342885_750x700.jpg');
INSERT INTO `lessonlist` VALUES ('100011', '有氧训练', '1', '3', '/static/img/LesShow/lessonList/1544756688523_750x750.jpg');
INSERT INTO `lessonlist` VALUES ('100012', '虎背熊腰', '1', '4', '/static/img/LesShow/lessonList/1536912389805_750x700.jpg');

-- ----------------------------
-- Table structure for lestomove
-- ----------------------------
DROP TABLE IF EXISTS `lestomove`;
CREATE TABLE `lestomove` (
  `lessonId` int(6) NOT NULL,
  `movementId` int(6) NOT NULL,
  PRIMARY KEY (`lessonId`,`movementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lestomove
-- ----------------------------
INSERT INTO `lestomove` VALUES ('100001', '200001');
INSERT INTO `lestomove` VALUES ('100001', '200002');
INSERT INTO `lestomove` VALUES ('100001', '200004');
INSERT INTO `lestomove` VALUES ('100001', '200005');
INSERT INTO `lestomove` VALUES ('100001', '200006');
INSERT INTO `lestomove` VALUES ('100001', '200007');
INSERT INTO `lestomove` VALUES ('100002', '200002');
INSERT INTO `lestomove` VALUES ('100002', '200003');
INSERT INTO `lestomove` VALUES ('100003', '200002');
INSERT INTO `lestomove` VALUES ('100003', '200003');
INSERT INTO `lestomove` VALUES ('100003', '200004');
INSERT INTO `lestomove` VALUES ('100003', '200007');
INSERT INTO `lestomove` VALUES ('100003', '200012');
INSERT INTO `lestomove` VALUES ('100003', '200018');
INSERT INTO `lestomove` VALUES ('100003', '200025');
INSERT INTO `lestomove` VALUES ('100003', '200026');
INSERT INTO `lestomove` VALUES ('100004', '200002');
INSERT INTO `lestomove` VALUES ('100004', '200003');
INSERT INTO `lestomove` VALUES ('100004', '200004');
INSERT INTO `lestomove` VALUES ('100004', '200007');
INSERT INTO `lestomove` VALUES ('100005', '200001');
INSERT INTO `lestomove` VALUES ('100005', '200012');
INSERT INTO `lestomove` VALUES ('100005', '200016');
INSERT INTO `lestomove` VALUES ('100005', '200018');
INSERT INTO `lestomove` VALUES ('100005', '200026');
INSERT INTO `lestomove` VALUES ('100005', '200027');
INSERT INTO `lestomove` VALUES ('100006', '200002');
INSERT INTO `lestomove` VALUES ('100006', '200003');
INSERT INTO `lestomove` VALUES ('100006', '200004');
INSERT INTO `lestomove` VALUES ('100006', '200007');
INSERT INTO `lestomove` VALUES ('100006', '200012');
INSERT INTO `lestomove` VALUES ('100006', '200018');
INSERT INTO `lestomove` VALUES ('100006', '200025');
INSERT INTO `lestomove` VALUES ('100006', '200026');
INSERT INTO `lestomove` VALUES ('100007', '200002');
INSERT INTO `lestomove` VALUES ('100007', '200003');
INSERT INTO `lestomove` VALUES ('100007', '200004');
INSERT INTO `lestomove` VALUES ('100007', '200007');
INSERT INTO `lestomove` VALUES ('100007', '200012');
INSERT INTO `lestomove` VALUES ('100007', '200018');
INSERT INTO `lestomove` VALUES ('100007', '200025');
INSERT INTO `lestomove` VALUES ('100007', '200026');
INSERT INTO `lestomove` VALUES ('100008', '200003');
INSERT INTO `lestomove` VALUES ('100008', '200004');
INSERT INTO `lestomove` VALUES ('100008', '200012');
INSERT INTO `lestomove` VALUES ('100008', '200018');
INSERT INTO `lestomove` VALUES ('100008', '200025');
INSERT INTO `lestomove` VALUES ('100008', '200026');
INSERT INTO `lestomove` VALUES ('100009', '200020');
INSERT INTO `lestomove` VALUES ('100009', '200021');
INSERT INTO `lestomove` VALUES ('100012', '200014');
INSERT INTO `lestomove` VALUES ('100012', '200016');
INSERT INTO `lestomove` VALUES ('100012', '200017');
INSERT INTO `lestomove` VALUES ('100012', '200018');
INSERT INTO `lestomove` VALUES ('100012', '200026');
INSERT INTO `lestomove` VALUES ('100012', '200027');

-- ----------------------------
-- Table structure for movementdetail
-- ----------------------------
DROP TABLE IF EXISTS `movementdetail`;
CREATE TABLE `movementdetail` (
  `movementId` int(20) NOT NULL,
  `level` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `picUrl` varchar(128) NOT NULL,
  `moveStep` text,
  `breathe` text,
  `moveFeeling` text,
  `commonMistake` text,
  PRIMARY KEY (`movementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movementdetail
-- ----------------------------
INSERT INTO `movementdetail` VALUES ('200001', '2', '腹肌激活', '/static/img/Movement/Detail/1500626509026.jpg', '[\"平躺在瑜伽垫上，双脚并拢，屈膝抬腿的同时将臀部略微抬起，下背部用力贴紧地面\", \"绷紧身体，肩部略微离地，同时上下振动双手刺激腹肌收紧\"]', '[\"全程保持均匀呼吸\"]', '[\"腹部始终紧绷，同时会逐渐产生灼烧感\"]', '[\"错误：用力伸头，导致颈部疼痛\",\"解决：下颚始终贴紧颈部，同时后缩颈部\"]');

-- ----------------------------
-- Table structure for movementlist
-- ----------------------------
DROP TABLE IF EXISTS `movementlist`;
CREATE TABLE `movementlist` (
  `movementId` int(20) NOT NULL,
  `level` int(6) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `payload` varchar(10) DEFAULT NULL,
  `picUrl` varchar(128) DEFAULT NULL,
  `bodyPart` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`movementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movementlist
-- ----------------------------
INSERT INTO `movementlist` VALUES ('200001', '2', '侧卧左侧提膝', '1x20', '/static/img/Movement/List/show1.jpg', 'leg');
INSERT INTO `movementlist` VALUES ('200002', '2', '侧卧左侧前抬腿', '1x20', '/static/img/Movement/List/show2.jpg', 'leg');
INSERT INTO `movementlist` VALUES ('200003', '2', '侧卧左侧抬腿', '1x20', '/static/img/Movement/List/show3.jpg', 'leg');
INSERT INTO `movementlist` VALUES ('200004', '2', '侧卧左侧后踢腿', '1x20', '/static/img/Movement/List/show4.jpg', 'leg');
INSERT INTO `movementlist` VALUES ('200005', '4', '左腿翘曲两头起', '1x20', '/static/img/Movement/List/show5.jpg', 'waist');
INSERT INTO `movementlist` VALUES ('200006', '4', '右腿翘曲两头起', '1x20', '/static/img/Movement/List/show6.jpg', 'waist');
INSERT INTO `movementlist` VALUES ('200007', '2', '坐姿俯身左侧臀部拉伸', '1x20', '/static/img/Movement/List/show7.jpg', 'leg');
INSERT INTO `movementlist` VALUES ('200008', '1', '', '1x20', '', 'test');
INSERT INTO `movementlist` VALUES ('200009', '3', '', '1x20', '', 'test');
INSERT INTO `movementlist` VALUES ('200011', '1', '髋关节环绕', '1x8', '/static/img/Movement/List/1500627611986.jpg', 'buttock');
INSERT INTO `movementlist` VALUES ('200012', '1', '向前肩部绕环', '1x20\'\'', '/static/img/Movement/List/1501235954420.jpg', 'shoulder');
INSERT INTO `movementlist` VALUES ('200013', '2', '俯身大腿后侧交替拉伸', '1x10', '/static/img/Movement/List/1501138470234.jpg', 'leg');
INSERT INTO `movementlist` VALUES ('200014', '4', '平板支撑', '1x20\'\'', '/static/img/Movement/List/1501125622951.jpg', 'belly');
INSERT INTO `movementlist` VALUES ('200015', '2', '深蹲提膝', '1x12', '/static/img/Movement/List/1501212324334.jpg', 'buttock');
INSERT INTO `movementlist` VALUES ('200016', '4', '推墙高抬腿', '1x20\'\'', '/static/img/Movement/List/1503558760692.jpg', 'belly');
INSERT INTO `movementlist` VALUES ('200017', '3', '俯身慢速跨步登山', '1x10', '/static/img/Movement/List/1501059492233.jpg', 'belly');
INSERT INTO `movementlist` VALUES ('200018', '3', '跨步Burpee', '1x8', '/static/img/Movement/List/1503559657538.jpg', 'belly');
INSERT INTO `movementlist` VALUES ('200019', '1', '靠墙俯卧撑', '1x15', '/static/img/Movement/List/1503558760692.jpg', 'pecs');
INSERT INTO `movementlist` VALUES ('200020', '3', '俯身哑铃划船', '1x15', '/static/img/Movement/List/1501224820032.jpg', 'back');
INSERT INTO `movementlist` VALUES ('200021', '4', '宽握引体向上', '1x6', '/static/img/Movement/List/1503558760693.jpg', 'back');
INSERT INTO `movementlist` VALUES ('200022', '4', '引体向上', '1x6', '/static/img/Movement/List/1503558760693.jpg', 'arm');
INSERT INTO `movementlist` VALUES ('200023', '4', '哑铃弯举', '1x15', '/static/img/Movement/List/1507630867486.jpg', 'arm');
INSERT INTO `movementlist` VALUES ('200024', '1', '颈部左侧拉伸', '1x10\'\'', '/static/img/Movement/List/1501236084554.jpg', 'neck');
INSERT INTO `movementlist` VALUES ('200025', '1', '颈部右侧拉伸', '1x10\'\'', '/static/img/Movement/List/1500949060220.jpg', 'neck');
INSERT INTO `movementlist` VALUES ('200026', '4', '仰卧起跳', '1x15', '/static/img/Movement/List/1501208471605.jpg', 'wholebody');
INSERT INTO `movementlist` VALUES ('200027', '3', '简易Burpee登山跑', '1x20\'\'', '/static/img/Movement/List/1503559657538.jpg', 'wholebody');

-- ----------------------------
-- Table structure for trainlist
-- ----------------------------
DROP TABLE IF EXISTS `trainlist`;
CREATE TABLE `trainlist` (
  `trainId` int(20) NOT NULL,
  `level` int(6) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `count` int(2) NOT NULL,
  `picUrl` varchar(128) NOT NULL,
  PRIMARY KEY (`trainId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trainlist
-- ----------------------------
INSERT INTO `trainlist` VALUES ('50001', '1', '韧性提升', '1', '/static/img/TrainingIndex/1517217173158_315x315.jpg');
INSERT INTO `trainlist` VALUES ('50002', '2', '热身放松', '2', '/static/img/TrainingIndex/1519454845709_750x700.jpg');
INSERT INTO `trainlist` VALUES ('50003', '3', '伤痛预防', '3', '/static/img/TrainingIndex/1519455021015_750x700.jpg');
INSERT INTO `trainlist` VALUES ('50004', '4', '心肺激活', '4', '/static/img/TrainingIndex/1519888737768_315x315.png');
INSERT INTO `trainlist` VALUES ('50005', '1', '力量激活', '1', '/static/img/TrainingIndex/1520240773072_315x315.jpg');
INSERT INTO `trainlist` VALUES ('50006', '2', '燃脂训练', '2', '/static/img/TrainingIndex/1522133049832_750x700.jpg');
INSERT INTO `trainlist` VALUES ('50007', '3', '形体改善', '3', '/static/img/TrainingIndex/1499681112983_375x375.jpg');
INSERT INTO `trainlist` VALUES ('50008', '4', '形体矫正', '4', '/static/img/TrainingIndex/1510299776373_315x315.jpg');
INSERT INTO `trainlist` VALUES ('50009', '3', '零噪音系列', '3', '/static/img/TrainingIndex/1516951989089_750x700.jpg');
INSERT INTO `trainlist` VALUES ('50010', '5', '增肌挑战', '2', '/static/img/TrainingIndex/1533180145877_350x350.jpg');
INSERT INTO `trainlist` VALUES ('50011', '3', '跑步水平提升', '1', '/static/img/TrainingIndex/1478588147436_750x699.jpg');
INSERT INTO `trainlist` VALUES ('50012', '5', 'CrossFit', '1', '/static/img/TrainingIndex/1512976984016_750x600.jpg');

-- ----------------------------
-- Table structure for traintoles
-- ----------------------------
DROP TABLE IF EXISTS `traintoles`;
CREATE TABLE `traintoles` (
  `trainId` int(20) NOT NULL,
  `lessonId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of traintoles
-- ----------------------------
INSERT INTO `traintoles` VALUES ('50001', '100001');
INSERT INTO `traintoles` VALUES ('50001', '100003');
INSERT INTO `traintoles` VALUES ('50001', '100004');
INSERT INTO `traintoles` VALUES ('50003', '100008');
INSERT INTO `traintoles` VALUES ('50003', '100004');
INSERT INTO `traintoles` VALUES ('50003', '100003');
INSERT INTO `traintoles` VALUES ('50004', '100008');
INSERT INTO `traintoles` VALUES ('50004', '100004');
INSERT INTO `traintoles` VALUES ('50004', '100003');
INSERT INTO `traintoles` VALUES ('50005', '100010');
INSERT INTO `traintoles` VALUES ('50005', '100004');
INSERT INTO `traintoles` VALUES ('50005', '100003');
INSERT INTO `traintoles` VALUES ('50006', '100005');
INSERT INTO `traintoles` VALUES ('50006', '100004');
INSERT INTO `traintoles` VALUES ('50006', '100003');
INSERT INTO `traintoles` VALUES ('50007', '100010');
INSERT INTO `traintoles` VALUES ('50007', '100008');
INSERT INTO `traintoles` VALUES ('50007', '100003');
INSERT INTO `traintoles` VALUES ('50002', '100002');
INSERT INTO `traintoles` VALUES ('50002', '100004');
INSERT INTO `traintoles` VALUES ('50002', '100003');
INSERT INTO `traintoles` VALUES ('50008', '100005');
INSERT INTO `traintoles` VALUES ('50008', '100004');
INSERT INTO `traintoles` VALUES ('50008', '100007');
INSERT INTO `traintoles` VALUES ('50009', '100005');
INSERT INTO `traintoles` VALUES ('50009', '100001');
INSERT INTO `traintoles` VALUES ('50009', '100010');
INSERT INTO `traintoles` VALUES ('50010', '100009');
INSERT INTO `traintoles` VALUES ('50011', '100003');
INSERT INTO `traintoles` VALUES ('50010', '100012');
INSERT INTO `traintoles` VALUES ('50010', '100006');
INSERT INTO `traintoles` VALUES ('50011', '100011');
INSERT INTO `traintoles` VALUES ('50012', '100009');
INSERT INTO `traintoles` VALUES ('50012', '100012');
INSERT INTO `traintoles` VALUES ('50012', '100006');
INSERT INTO `traintoles` VALUES ('50012', '100002');
INSERT INTO `traintoles` VALUES ('50012', '100007');
INSERT INTO `traintoles` VALUES ('50001', '100012');
INSERT INTO `traintoles` VALUES ('50001', '100006');
INSERT INTO `traintoles` VALUES ('50001', '100007');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `headpic` varchar(100) DEFAULT '/static/img/headpic/default.jpg',
  `height` double(9,2) DEFAULT NULL,
  `weight` double(9,1) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `name_index` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123456', '123456', '测试员男', '男', '/static/img/headpic/apple.jpeg', '1.65', '65.0');
INSERT INTO `users` VALUES ('2', 'admin', '123456', '管理员', '女', '/static/img/headpic/admin.png', '1.67', '54.3');
INSERT INTO `users` VALUES ('3', 'test', '123', '测试员女', '女', '/static/img/headpic/girl.jpg', '1.56', '46.0');
INSERT INTO `users` VALUES ('23', 'test2', '2', null, null, '/static/img/headpic/default.jpg', null, null);
INSERT INTO `users` VALUES ('25', 'test3', '123456', null, null, '/static/img/headpic/default.jpg', null, null);
INSERT INTO `users` VALUES ('26', 'test4', '4', null, null, '/static/img/headpic/default.jpg', null, null);
INSERT INTO `users` VALUES ('27', 'test5', '5', null, null, '/static/img/headpic/default.jpg', null, null);
INSERT INTO `users` VALUES ('28', 'test6', '6', null, null, '/static/img/headpic/default.jpg', null, null);
