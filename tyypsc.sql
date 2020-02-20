/*
Navicat MySQL Data Transfer

Source Server         : local_maria
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tyypsc

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-02-20 12:25:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL DEFAULT 0,
  `userName` varchar(300) DEFAULT '',
  `userPw` varchar(600) DEFAULT '',
  `userType` varchar(765) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '77777', '管理员');

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL DEFAULT 0,
  `catelog_name` varchar(600) DEFAULT '',
  `catelog_miaoshu` varchar(600) DEFAULT '',
  `catelog_del` varchar(600) DEFAULT '',
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1', '健身', '健身', 'no');
INSERT INTO `t_catelog` VALUES ('2', '球类', '球类', 'no');
INSERT INTO `t_catelog` VALUES ('3', '武术', '武术', 'no');
INSERT INTO `t_catelog` VALUES ('4', '益智', '益智', 'no');
INSERT INTO `t_catelog` VALUES ('5', '搏击', '搏击', 'yes');

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL DEFAULT 0,
  `gonggao_title` longtext DEFAULT NULL,
  `gonggao_content` longtext DEFAULT NULL,
  `gonggao_data` longtext DEFAULT NULL,
  `gonggao_fabuzhe` longtext DEFAULT NULL,
  `gonggao_del` longtext DEFAULT NULL,
  `gonggao_one1` longtext DEFAULT NULL,
  `gonggao_one2` longtext DEFAULT NULL,
  `gonggao_one3` longtext DEFAULT NULL,
  `gonggao_one4` longtext DEFAULT NULL,
  `gonggao_one5` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gonggao_one6` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gonggao_one7` int(11) DEFAULT NULL,
  `gonggao_one8` int(11) DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '新品上市', '<strong>三天后，有新货到店。<br />\r\n喜欢的朋友赶紧来看！！！<br />\r\n</strong><br />', '2017-5-3 14:37:44', null, null, null, null, null, null, '2017-05-03 14:37:44', '2017-05-03 14:37:44', null, null);

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL DEFAULT 0,
  `goods_name` longtext DEFAULT NULL,
  `goods_miaoshu` longtext DEFAULT NULL,
  `goods_pic` longtext DEFAULT NULL,
  `goods_yanse` longtext DEFAULT NULL,
  `goods_shichangjia` int(11) DEFAULT NULL,
  `goods_isnottejia` longtext DEFAULT NULL,
  `goods_isnottuijian` longtext DEFAULT NULL,
  `goods_catelog_id` int(11) DEFAULT NULL,
  `goods_del` longtext DEFAULT NULL,
  `goods_dianji` int(11) DEFAULT NULL,
  `goods_kucun` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '跳绳', '商品名称：跳绳<br />\r\n上市时间：2017-5<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127080440.jpg', 'J001', '30', 'no', null, '1', 'no', '3', '99');
INSERT INTO `t_goods` VALUES ('2', '足球', '商品名称：足球<br />\r\n上市时间：2017-4<br />\r\n产地：巴西<br />\r\n<br />', '/upload/1457614594373.jpg', 'Q001', '500', 'no', null, '2', 'no', '8', '22');
INSERT INTO `t_goods` VALUES ('3', '拳击手套', '商品名称：拳击手套<br />\r\n上市时间：2017-5<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127081039.jpg', 'W001', '100', 'no', null, '3', 'no', '2', '194');
INSERT INTO `t_goods` VALUES ('4', '围棋', '商品名称：围棋<br />\r\n上市时间：2017-3<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127081520.jpg', 'Y001', '75', 'no', null, '4', 'no', '3', '99');
INSERT INTO `t_goods` VALUES ('5', '仰卧板', '商品名称：仰卧板<br />\r\n上市时间：2017-3<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127080645.jpg', 'J002', '170', 'no', null, '1', 'no', '4', '194');
INSERT INTO `t_goods` VALUES ('6', '乒乓球拍', '商品名称：乒乓球拍<br />\r\n上市时间：2017-5<br />\r\n产地：中国<br />\r\n<br />', '/upload/pai.jpg', 'Q002', '140', 'no', null, '2', 'no', '4', '296');
INSERT INTO `t_goods` VALUES ('7', '双节棍', '商品名称：双节棍<br />\r\n上市时间：2017-3<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127081156.jpg', 'W002', '120', 'no', null, '3', 'no', '9', '390');
INSERT INTO `t_goods` VALUES ('8', '国际象棋', '商品名称：国际象棋<br />\r\n上市时间：2017-4<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127081653.jpg', 'Y002', '170', 'no', null, '4', 'no', '3', '199');
INSERT INTO `t_goods` VALUES ('9', '哑铃', '商品名称：哑铃<br />\r\n上市时间：2017-4<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127080833.jpg', 'J003', '110', 'no', null, '1', 'no', '9', '22');
INSERT INTO `t_goods` VALUES ('10', '足球', '商品名称：足球<br />\r\n上市时间：2017-3<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127080119.jpg', 'Q003', '230', 'no', null, '2', 'no', '7', '298');
INSERT INTO `t_goods` VALUES ('11', '太极服', '商品名称：太极服<br />\r\n上市时间：2017-4<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127081354.jpg', 'W003', '210', 'no', null, '3', 'no', '11', '148');
INSERT INTO `t_goods` VALUES ('12', '中国象棋', '商品名称：中国象棋<br />\r\n上市时间：2017-5<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127081826.jpg', 'Y003', '100', 'no', null, '4', 'yes', '15', '294');
INSERT INTO `t_goods` VALUES ('13', '中国象棋', '商品名称：中国象棋<br />\r\n上市时间：2017-4<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127082133.jpg', 'Y', '100', 'no', null, '4', 'yes', '0', '200');
INSERT INTO `t_goods` VALUES ('14', '中国象棋', '商品名称：中国象棋<br />\r\n上市时间：2017-3<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127082133.jpg', 'Y003', '100', 'no', null, '4', 'yes', '0', '150');
INSERT INTO `t_goods` VALUES ('15', '中国象棋', '商品名称：中国象棋<br />\r\n上市时间：2017-3<br />\r\n产地：中国<br />\r\n<br />', '/upload/20181127082000.jpg', 'Y003', '100', 'no', null, '4', 'no', '9', '109');

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL DEFAULT 0,
  `liuyan_title` longtext DEFAULT NULL,
  `liuyan_content` longtext DEFAULT NULL,
  `liuyan_date` longtext DEFAULT NULL,
  `liuyan_user` longtext DEFAULT NULL,
  PRIMARY KEY (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('1', '建议', '<strong>乒乓球拍的质量虽然不错，但是球不怎么样，希望可以提高球的质量！！！</strong><br />', '2017-5-3 15:06:06', 'wkl');
INSERT INTO `t_liuyan` VALUES ('2', '足球', '希望有更多的足球品牌！<br />', '2017-5-24 13:29:30', 'wkl');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL DEFAULT 0,
  `order_bianhao` varchar(300) DEFAULT '',
  `order_date` varchar(300) DEFAULT '',
  `order_zhuangtai` varchar(600) DEFAULT '',
  `order_jine` int(11) DEFAULT NULL,
  `order_songhuodizhi` varchar(300) DEFAULT '',
  `order_fukuangfangshi` varchar(300) DEFAULT '',
  `order_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('3', '20170503145900', '2017-05-03 14:59:00', 'ping', '500', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('4', '20170503145937', '2017-05-03 14:59:37', 'ping', '680', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('5', '20170503150009', '2017-05-03 15:00:09', 'ping', '420', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('8', '20170508222339', '2017-05-08 22:23:39', 'ping', '100', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('9', '20170510224103', '2017-05-10 22:41:03', 'ping', '220', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('10', '20170510225135', '2017-05-10 22:51:35', 'ping', '240', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('11', '20170521000234', '2017-05-21 00:02:34', 'shou', '110', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('12', '20170521000456', '2017-05-21 00:04:56', 'shou', '100', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('13', '20170523163845', '2017-05-23 16:38:45', 'yes', '210', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('14', '20170523195429', '2017-05-23 19:54:29', 'no', '75', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('15', '20170605154630', '2017-06-05 15:46:30', 'shou', '110', '山西太原', '货到付款', '7');
INSERT INTO `t_order` VALUES ('16', '20181127082816', '2018-11-27 08:28:16', 'yes', '430', '湖北省荆州市', '货到付款', '12');
INSERT INTO `t_order` VALUES ('17', '20200220122318', '2020-02-20 12:23:18', 'no', '440', '湖北省咸宁市', '支付宝付款', '10');

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('3', '3', '3', '5');
INSERT INTO `t_orderitem` VALUES ('4', '4', '5', '4');
INSERT INTO `t_orderitem` VALUES ('5', '5', '6', '3');
INSERT INTO `t_orderitem` VALUES ('8', '8', '12', '1');
INSERT INTO `t_orderitem` VALUES ('9', '9', '9', '2');
INSERT INTO `t_orderitem` VALUES ('10', '10', '7', '2');
INSERT INTO `t_orderitem` VALUES ('11', '11', '9', '1');
INSERT INTO `t_orderitem` VALUES ('12', '12', '3', '1');
INSERT INTO `t_orderitem` VALUES ('13', '13', '11', '1');
INSERT INTO `t_orderitem` VALUES ('14', '14', '4', '1');
INSERT INTO `t_orderitem` VALUES ('15', '15', '9', '1');
INSERT INTO `t_orderitem` VALUES ('16', '16', '9', '2');
INSERT INTO `t_orderitem` VALUES ('17', '16', '11', '1');
INSERT INTO `t_orderitem` VALUES ('18', '17', '9', '1');
INSERT INTO `t_orderitem` VALUES ('19', '17', '10', '1');
INSERT INTO `t_orderitem` VALUES ('20', '17', '15', '1');

-- ----------------------------
-- Table structure for t_ping
-- ----------------------------
DROP TABLE IF EXISTS `t_ping`;
CREATE TABLE `t_ping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(2295) DEFAULT NULL,
  `orderitem_id` varchar(2295) DEFAULT NULL,
  `goods_id` varchar(333) DEFAULT NULL,
  `mingcheng` varchar(2295) DEFAULT NULL,
  `user_id` varchar(2295) DEFAULT NULL,
  `loginname` varchar(2295) DEFAULT NULL,
  `info` varchar(2295) DEFAULT NULL,
  `adddate` varchar(2295) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ping
-- ----------------------------
INSERT INTO `t_ping` VALUES ('1', '1', '1', '7', '双节棍', '7', 'wkl', '质量不错，外观也挺漂亮', '2017-5-3 15:03:02');
INSERT INTO `t_ping` VALUES ('2', '2', '2', '2', '足球', '7', 'wkl', '颜色非常好看', '2017-5-3 15:03:26');
INSERT INTO `t_ping` VALUES ('3', '3', '3', '3', '拳击手套', '7', 'wkl', '用了一个月，很耐用', '2017-5-3 15:03:44');
INSERT INTO `t_ping` VALUES ('4', '4', '4', '5', '仰卧板', '7', 'wkl', '质量非常棒', '2017-5-3 15:04:00');
INSERT INTO `t_ping` VALUES ('5', '5', '5', '6', '乒乓球拍', '7', 'wkl', '挺不错的球拍，用着挺顺手', '2017-5-3 15:04:28');
INSERT INTO `t_ping` VALUES ('6', '7', '7', '12', '中国象棋', '7', 'wkl', '棋子的手感很好，很开心的一次购物！！！', '2017-5-6 8:53:47');
INSERT INTO `t_ping` VALUES ('7', '9', '9', '9', '哑铃', '7', 'wkl', '哑铃质量不错，挺好的', '2017-5-10 22:42:30');
INSERT INTO `t_ping` VALUES ('8', '10', '10', '7', '双节棍', '7', 'wkl', '双节棍质量不错', '2017-5-10 22:52:57');
INSERT INTO `t_ping` VALUES ('9', '8', '8', '12', '中国象棋', '7', 'wkl', '质量很好', '2017-5-24 13:28:24');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(300) DEFAULT '',
  `user_pw` longtext DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_realname` longtext DEFAULT NULL,
  `user_address` longtext DEFAULT NULL,
  `user_sex` longtext DEFAULT NULL,
  `user_tel` longtext DEFAULT NULL,
  `user_email` longtext DEFAULT NULL,
  `user_qq` longtext DEFAULT NULL,
  `user_man` longtext DEFAULT NULL,
  `user_age` longtext DEFAULT NULL,
  `user_birthday` longtext DEFAULT NULL,
  `user_xueli` longtext DEFAULT NULL,
  `user_del` longtext DEFAULT NULL,
  `user_one1` longtext DEFAULT NULL,
  `user_one2` longtext DEFAULT NULL,
  `user_one3` longtext DEFAULT NULL,
  `user_one4` longtext DEFAULT NULL,
  `user_one5` longtext DEFAULT NULL,
  `user_one6` int(11) DEFAULT NULL,
  `user_one7` int(11) DEFAULT NULL,
  `user_one8` int(11) DEFAULT NULL,
  `user_one9` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_one10` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_one11` int(11) DEFAULT NULL,
  `user_one12` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('7', 'wxl', '12345', '0', '王小林', '山西省太原市', '男', '15234098067', '947342283@qq.com', '15234098067', null, null, null, null, 'no', null, null, null, null, null, null, null, null, '2018-11-27 08:26:48', '2017-05-02 14:37:09', null, null);
INSERT INTO `t_user` VALUES ('8', 'zjk', '1234', '0', '张健康', '湖南省长沙市', '男', '15934098069', '947342226@qq.com', '947342283', null, null, null, null, 'no', null, null, null, null, null, null, null, null, '2018-11-27 08:27:14', '2017-05-03 14:56:54', null, null);
INSERT INTO `t_user` VALUES ('9', 'lyx', '123456', '0', '刘易笑', '湖北省黄石市', '女', '15822172289', 'lyx@126.com', '3438829349', null, null, null, null, 'no', null, null, null, null, null, null, null, null, '2018-11-27 22:55:03', '2018-11-27 22:55:03', null, null);
INSERT INTO `t_user` VALUES ('10', 'test', '123456', '0', '王测试', '湖北省咸宁市', '男', '15622234838', '2384@126.com', '348483499', null, null, null, null, 'no', null, null, null, null, null, null, null, null, '2020-02-20 12:24:50', '2018-11-27 22:56:15', null, null);
