/*
Navicat MySQL Data Transfer

Source Server         : L
Source Server Version : 50551
Source Host           : localhost:3306
Source Database       : bookex

Target Server Type    : MYSQL
Target Server Version : 50551
File Encoding         : 65001

Date: 2017-05-09 15:36:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookex_attention
-- ----------------------------
DROP TABLE IF EXISTS `bookex_attention`;
CREATE TABLE `bookex_attention` (
  `atid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `focuser` bigint(20) NOT NULL COMMENT '关注的人',
  `focused` bigint(20) NOT NULL COMMENT '被关注的',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除（0否1是）',
  `created_by` bigint(20) NOT NULL COMMENT '创建者',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`atid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_attention
-- ----------------------------

-- ----------------------------
-- Table structure for bookex_book
-- ----------------------------
DROP TABLE IF EXISTS `bookex_book`;
CREATE TABLE `bookex_book` (
  `isbn` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图书编号',
  `owner` bigint(20) NOT NULL COMMENT '所有者',
  `ownertype` int(2) NOT NULL COMMENT '所有者类型',
  `bookname` varchar(50) NOT NULL COMMENT '图书名字',
  `author` varchar(30) NOT NULL COMMENT '作者',
  `press` varchar(50) DEFAULT NULL COMMENT '出版社',
  `booktype` int(11) DEFAULT NULL COMMENT '图书类型',
  `bookcount` int(11) NOT NULL COMMENT '图书数量',
  `nowcount` int(11) NOT NULL COMMENT '现有数量',
  `bookprice` float NOT NULL COMMENT '图书原价',
  `pricenow` float NOT NULL COMMENT '图书现价',
  `wornlevel` int(11) NOT NULL COMMENT '破损程度',
  `summary` varchar(200) DEFAULT NULL COMMENT '摘要',
  `bookpic` varchar(255) DEFAULT NULL COMMENT '图书图片',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `created_by` bigint(20) NOT NULL COMMENT '创建人',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=10110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_book
-- ----------------------------
INSERT INTO `bookex_book` VALUES ('10000', '1', '0', 'dfsa', 'dsf', '234', '2', '23', '20', '23', '23', '2', 'test23', '9668ea93-23c5-4a14-b3a7-f2ffe15b39b5.jpg', '0', '2', '2017-04-11 11:54:11', null, '2017-05-07 02:58:34');
INSERT INTO `bookex_book` VALUES ('10001', '1', '0', 'english', 'bob', '重庆师范大学出版社', '2', '5', '2', '20', '12', '2', '英语学习', '0ad43117-7a9e-4173-bce2-d663174799d9.jpg', '0', '2', '2017-04-11 12:05:47', null, '2017-05-07 02:29:22');
INSERT INTO `bookex_book` VALUES ('10002', '2', '0', '历史', 'lily', '重庆师范大学出版社', '2', '3', '2', '24', '12', '1', '历史学习', null, '0', '2', '2017-04-12 09:37:48', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10003', '1', '0', '书名3', '作者3', '出版社3', '2', '3', '2', '24', '12', '1', '描述3', null, '0', '2', '2017-03-01 12:23:17', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10004', '1', '0', '书名4', '作者4', '出版社4', '1', '3', '3', '24', '12', '1', '描述4', null, '0', '2', '2017-03-01 12:23:18', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10005', '1', '0', '书名5', '作者5', '出版社5', '1', '3', '3', '24', '12', '1', '描述5', null, '0', '2', '2017-03-01 12:23:19', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10006', '1', '0', '书名6', '作者6', '出版社6', '2', '3', '3', '24', '12', '1', '描述6', 'ca820fa4-3042-4720-9f20-6c56985ab8a2.jpg', '0', '2', '2017-03-01 12:23:20', null, '2017-05-07 02:54:48');
INSERT INTO `bookex_book` VALUES ('10007', '1', '0', '书名7', '作者7', '出版社7', '2', '3', '2', '24.5', '12', '1', '描述7', null, '0', '2', '2017-03-01 12:23:21', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10008', '1', '0', '书名8', '作者8', '出版社8', '1', '3', '3', '24', '12', '1', '描述8', '6b7ddf90-b25a-4b05-b91f-c555a4021472.jpg', '0', '2', '2017-03-01 12:23:22', null, '2017-05-07 15:41:14');
INSERT INTO `bookex_book` VALUES ('10009', '2', '0', '书名9', '作者9', '出版社9', '2', '3', '3', '24', '12', '1', '描述9', null, '0', '2', '2017-03-01 12:23:23', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10010', '1', '0', '书名10', '作者10', '出版社10', '2', '3', '3', '24', '12', '1', '描述10', null, '0', '2', '2017-03-01 12:23:24', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10011', '1', '0', '书名11', '作者11', '出版社11', '2', '3', '3', '24', '12', '1', '描述11', null, '0', '2', '2017-03-01 12:23:25', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10012', '1', '0', '书名12', '作者12', '出版社12', '1', '3', '3', '24', '12', '1', '描述12', null, '0', '2', '2017-03-01 12:23:26', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10013', '4', '0', '书名13', '作者13', '出版社13', '2', '3', '3', '24', '12', '1', '描述13', null, '0', '2', '2017-03-01 12:23:27', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10014', '1', '0', '书名14', '作者14', '出版社14', '2', '3', '3', '24', '12', '1', '描述14', null, '0', '2', '2017-03-01 12:23:28', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10015', '4', '0', '书名15', '作者15', '出版社15', '1', '3', '3', '24', '12', '1', '描述15', null, '0', '2', '2017-03-01 12:23:29', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10016', '1', '0', '书名16', '作者16', '出版社16', '3', '3', '3', '24', '12', '1', '描述16', null, '0', '2', '2017-03-01 12:23:30', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10017', '3', '0', '书名17', '作者17', '出版社17', '1', '3', '3', '24', '12', '1', '描述17', null, '0', '2', '2017-03-01 12:23:31', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10018', '1', '0', '书名18', '作者18', '出版社18', '1', '20', '15', '24', '12', '1', '描述18', null, '0', '2', '2017-03-01 12:23:32', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10019', '1', '0', '书名19', '作者19', '出版社19', '2', '3', '3', '24', '12', '1', '描述19', null, '0', '2', '2017-03-01 12:23:33', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10020', '3', '0', '书名20', '作者20', '出版社20', '2', '3', '3', '24', '12', '1', '描述20', null, '0', '2', '2017-03-01 12:23:34', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10021', '1', '0', '书名21', '作者21', '出版社21', '1', '3', '3', '24', '12', '1', '描述21', null, '0', '2', '2017-03-01 12:23:35', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10022', '1', '0', '书名22', '作者22', '出版社22', '2', '3', '3', '24', '12', '1', '描述22', null, '0', '2', '2017-03-01 12:23:36', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10024', '3', '0', '书名24', '作者24', '出版社24', '3', '3', '3', '24', '12', '1', '描述24', null, '0', '2', '2017-03-01 12:23:38', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10025', '1', '0', '书名25', '作者25', '出版社25', '2', '3', '3', '24', '12', '1', '描述25', null, '0', '2', '2017-03-01 12:23:39', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10026', '1', '0', '书名26', '作者26', '出版社26', '1', '3', '3', '24', '12', '1', '描述26', null, '0', '2', '2017-03-01 12:23:40', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10027', '3', '0', '书名27', '作者27', '出版社27', '3', '3', '3', '24', '12', '1', '描述27', null, '0', '2', '2017-03-01 12:23:41', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10028', '1', '0', '书名28', '作者28', '出版社28', '2', '3', '3', '24', '12', '1', '描述28', null, '0', '2', '2017-03-01 12:23:42', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10029', '1', '0', '书名29', '作者29', '出版社29', '1', '3', '3', '24', '12', '1', '描述29', null, '0', '2', '2017-03-01 12:23:43', null, '2017-04-13 00:00:30');
INSERT INTO `bookex_book` VALUES ('10030', '30', '1', '书名30', '作者30', '出版社30', '2', '3', '3', '24', '12', '1', '描述30', null, '0', '2', '2017-03-01 12:23:44', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10031', '31', '1', '书名31', '作者31', '出版社31', '2', '3', '3', '24', '12', '1', '描述31', null, '0', '2', '2017-03-01 12:23:45', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10032', '32', '1', '书名32', '作者32', '出版社32', '2', '3', '3', '24', '12', '1', '描述32', null, '0', '2', '2017-03-01 12:23:46', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10033', '33', '1', '书名33', '作者33', '出版社33', '2', '3', '3', '24', '12', '1', '描述33', null, '0', '2', '2017-03-01 12:23:47', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10034', '34', '1', '书名34', '作者34', '出版社34', '2', '3', '3', '24', '12', '1', '描述34', null, '0', '2', '2017-03-01 12:23:48', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10035', '35', '1', '书名35', '作者35', '出版社35', '2', '3', '3', '24', '12', '1', '描述35', null, '0', '2', '2017-03-01 12:23:49', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10036', '36', '1', '书名36', '作者36', '出版社36', '2', '3', '3', '24', '12', '1', '描述36', null, '0', '2', '2017-03-01 12:23:50', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10037', '37', '1', '书名37', '作者37', '出版社37', '2', '3', '3', '24', '12', '1', '描述37', null, '0', '2', '2017-03-01 12:23:51', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10038', '38', '1', '书名38', '作者38', '出版社38', '2', '3', '3', '24', '12', '1', '描述38', null, '0', '2', '2017-03-01 12:23:52', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10039', '39', '1', '书名39', '作者39', '出版社39', '2', '3', '3', '24', '12', '1', '描述39', null, '0', '2', '2017-03-01 12:23:53', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10040', '40', '1', '书名40', '作者40', '出版社40', '2', '3', '3', '24', '12', '1', '描述40', null, '0', '2', '2017-03-01 12:23:54', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10041', '41', '1', '书名41', '作者41', '出版社41', '2', '3', '3', '24', '12', '1', '描述41', null, '0', '2', '2017-03-01 12:23:55', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10042', '42', '1', '书名42', '作者42', '出版社42', '2', '3', '3', '24', '12', '1', '描述42', null, '0', '2', '2017-03-01 12:23:56', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10043', '43', '1', '书名43', '作者43', '出版社43', '2', '3', '3', '24', '12', '1', '描述43', null, '0', '2', '2017-03-01 12:23:57', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10044', '44', '1', '书名44', '作者44', '出版社44', '2', '3', '3', '24', '12', '1', '描述44', null, '0', '2', '2017-03-01 12:23:58', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10045', '45', '1', '书名45', '作者45', '出版社45', '2', '3', '3', '24', '12', '1', '描述45', null, '0', '2', '2017-03-01 12:23:59', null, '2017-04-13 09:54:55');
INSERT INTO `bookex_book` VALUES ('10077', '40', '0', '挪威的森林', '村上村树', '小小出版社', '30', '3', '2', '34', '23.9', '10', '灵动', '1619bb6b-c303-4f4e-a60e-45c9647cd7c0.jpg', '0', '40', '2017-05-03 15:13:20', null, null);
INSERT INTO `bookex_book` VALUES ('10078', '40', '0', '水浒传', '施耐奄', '春雨出版社', '31', '2', '0', '56', '34', '11', '深度', 'ee5686c9-d3d8-4f15-85e6-06ae3ffc3645.jpg', '0', '40', '2017-05-03 15:15:28', null, null);
INSERT INTO `bookex_book` VALUES ('10079', '40', '0', '一生一世', '莫非墨宝', '人人出版社', '32', '2', '1', '35', '24', '11', '一生一世', 'f0ee9038-f37f-43a7-a7c1-24977c84a86f.jpg', '0', '40', '2017-05-03 15:21:34', null, null);
INSERT INTO `bookex_book` VALUES ('10080', '40', '0', '致我们暖暖的', '赵乾乾', '小小出版社', '30', '2', '1', '33', '32', '11', '温暖时光，感谢有你', '0a71bee5-5e71-460c-bf65-5b4415f7c64d.jpg', '0', '40', '2017-05-03 15:23:26', null, null);
INSERT INTO `bookex_book` VALUES ('10081', '40', '0', '时间都知道', '随侯珠', '春雨出版社', '30', '1', '1', '26', '26', '10', '达到', 'ba3a70a1-8661-419c-ab97-e0381bbb2c7c.jpg', '0', '40', '2017-05-03 15:25:42', null, null);
INSERT INTO `bookex_book` VALUES ('10082', '40', '0', '回忆是眼睛里的', '张皓宸', '小小出版社', '30', '2', '2', '24', '22', '9', '回忆里的风', '2e540c15-2b42-4427-b667-cd2ecad892ff.jpg', '0', '40', '2017-05-03 15:42:23', null, null);
INSERT INTO `bookex_book` VALUES ('10083', '40', '0', '蓝精灵', '22', '小小出版社', '33', '3', '1', '45', '23', '11', '在山的那边海的那边', '86e3086d-6297-4e6f-8ce5-a84a302c8674.jpg', '0', '40', '2017-05-03 15:44:09', null, null);
INSERT INTO `bookex_book` VALUES ('10084', '40', '0', '时光印画', '林帝', '小小出版社', '30', '8', '8', '45', '34', '10', '豆豆', '08e9215a-b3ae-4786-9692-fa44f18b5e09.jpg', '0', '40', '2017-05-03 15:47:38', null, null);
INSERT INTO `bookex_book` VALUES ('10085', '40', '0', '只属于我的视界', '一万兄', '小小出版社', '34', '2', '2', '25', '15', '12', '看完整个视界', '62523332-0fad-4bc1-a985-282480e1530a.jpg', '0', '40', '2017-05-03 15:51:59', null, null);
INSERT INTO `bookex_book` VALUES ('10086', '40', '0', '拍电影', '〔意〕费德里科·费', '小小出版社', '34', '3', '3', '35', '21', '10', '拍出美', '0a0ad0ff-117c-4840-8a97-c7c27c2eb6b8.jpg', '0', '40', '2017-05-03 15:55:19', null, null);
INSERT INTO `bookex_book` VALUES ('10087', '40', '0', '逆光而行', '沈南乔', '人人出版社', '30', '2', '1', '45', '23', '10', '舒服', '8b2d78ce-5c40-4e88-8162-2b10d3a330b8.jpg', '0', '40', '2017-05-03 15:57:18', null, null);
INSERT INTO `bookex_book` VALUES ('10088', '40', '0', '梦开始了，就别', '夜未央', '春雨出版社', '30', '3', '1', '34', '32', '9', '有梦的地方就有快乐', '3fd2ce06-1ede-48d3-82e9-7dd6a6dcb0d7.jpg', '0', '40', '2017-05-03 16:00:26', null, null);
INSERT INTO `bookex_book` VALUES ('10089', '40', '0', '微微一笑很倾城', '顾漫', '小小出版社', '32', '1', '1', '56', '43', '10', '我的', 'ecd66d0a-b5df-4825-aa98-ffe89724441e.jpg', '0', '40', '2017-05-03 16:01:46', null, null);
INSERT INTO `bookex_book` VALUES ('10090', '40', '0', '我不喜欢这个', '乔一', '小小出版社', '32', '3', '1', '25', '14', '10', '世界的某一端有你就足够', '40157581-1fb5-4362-adc6-7f20ed970d2b.jpg', '0', '40', '2017-05-03 16:04:19', null, null);
INSERT INTO `bookex_book` VALUES ('10091', '40', '0', '时间的女儿', '八月', '小小出版社', '30', '4', '4', '54', '53', '10', '拾光，时光', '8fcb4da7-ab0d-4ba6-b4e0-0db8dd7330b6.jpg', '0', '40', '2017-05-03 16:06:20', null, null);
INSERT INTO `bookex_book` VALUES ('10092', '40', '0', '夏至未至', '郭敬明', '春雨出版社', '32', '1', '0', '34', '23', '10', '祈祷有你', '9d5801ec-d347-4429-94ca-5d9cfd477545.jpg', '0', '40', '2017-05-03 16:10:02', null, null);
INSERT INTO `bookex_book` VALUES ('10093', '40', '0', '谢谢自己够勇敢', '张皓宸', '小小出版社', '30', '2', '2', '35', '20', '10', '一个人的思想永远是前进的动力', '78135453-e418-4a9d-b0e1-9fd72a5ad4a3.jpg', '0', '40', '2017-05-03 16:12:30', null, null);
INSERT INTO `bookex_book` VALUES ('10094', '40', '0', '我不惧怕成为这', '刘媛媛', '重庆师范大学出版社', '32', '4', '4', '25', '15', '11', '我不惧怕成为这样强', '45bc40c3-549c-4645-bf9d-bb25c747563c.jpg', '0', '40', '2017-05-04 13:34:26', null, null);
INSERT INTO `bookex_book` VALUES ('10095', '40', '0', '穿堂风', '曹文轩', '重庆大学出版社', '30', '3', '3', '30', '12', '9', '穿堂风', 'bbcfbd8f-4acc-4d74-ae1b-32d327859736.jpg', '0', '40', '2017-05-04 13:41:02', null, null);
INSERT INTO `bookex_book` VALUES ('10096', '40', '0', '穿堂风', '曹文轩', '重庆大学出版社', '30', '3', '3', '30', '12', '9', '穿堂风', 'c8bc8fc0-37aa-44b4-afcd-4cf783bc2ac0.jpg', '0', '40', '2017-05-04 13:41:55', null, null);
INSERT INTO `bookex_book` VALUES ('10097', '40', '0', '我本爱孤独直到', '叶落无心', '重庆大学出版社', '32', '2', '2', '24', '20', '10', '我本爱孤独直到有了你', '64d381f9-f91a-422c-bbdf-36b2f09cee3b.jpg', '0', '40', '2017-05-04 13:44:22', null, null);
INSERT INTO `bookex_book` VALUES ('10098', '40', '0', '蔬食真味', '李韬', '重庆师范大学出版社', '34', '6', '5', '18', '10', '11', '名人食谱', '8c0a9cb1-1d9a-427e-9b68-1530cb42101c.jpg', '0', '40', '2017-05-04 13:58:38', null, null);
INSERT INTO `bookex_book` VALUES ('10099', '40', '0', '我是花木兰', '秦文君', '中国少年儿童出版社', '34', '4', '4', '34', '15', '10', '再会花木兰', 'e45d16e5-2296-4af1-bec8-db2634b59a4f.jpg', '0', '40', '2017-05-04 14:06:40', null, null);
INSERT INTO `bookex_book` VALUES ('10100', '1046', '1', '人工智能', '李开复；王咏刚', '文化发展出版社', null, '5', '5', '30', '15', '9', '13368348866', '39041f99-80c9-4f04-8f4b-48aae070812b.jpg', '0', '1046', '2017-05-04 14:13:12', null, null);
INSERT INTO `bookex_book` VALUES ('10101', '1046', '1', '好好说再见', '狄仁六', '人民文学出版社', null, '6', '6', '24', '12', '11', '13368348866', 'e9e92507-43a5-45e0-a67b-259dc7116025.jpg', '0', '1046', '2017-05-04 14:18:02', null, null);
INSERT INTO `bookex_book` VALUES ('10102', '1046', '1', '杰作的诞生', '朴洙贤（韩）', '辽宁少年儿童出版社', null, '1', '1', '1', '23', '11', '122268978648', '5e56440a-a05c-4a32-a45e-79e71a5ee794.jpg', '0', '1046', '2017-05-04 14:21:08', null, null);
INSERT INTO `bookex_book` VALUES ('10103', '1046', '1', '孤独六讲', '蒋勋', '长江文艺出版社', null, '3', '3', '34', '17', '11', '13368348867', '3be2e2ab-f36f-475c-88aa-9874b331c8c6.jpg', '0', '1046', '2017-05-04 14:26:26', null, null);
INSERT INTO `bookex_book` VALUES ('10104', '40', '0', '姥姥语录', '倪萍', '长江文艺出版社', '30', '8', '8', '50', '25', '11', '著名主持人推荐', '242c5d0c-0e30-44c1-b499-8fe7185a6299.jpg', '0', '40', '2017-05-04 14:30:34', null, null);
INSERT INTO `bookex_book` VALUES ('10105', '40', '0', '姥姥语录', '倪萍', '长江文艺出版社', '30', '8', '8', '50', '25', '11', '著名主持人推荐', '562bbecb-d96b-4678-9b6c-cd9d643803b6.jpg', '0', '40', '2017-05-04 14:31:22', null, null);
INSERT INTO `bookex_book` VALUES ('10106', '1047', '1', '草原动物园', '马伯庸', '中信出版社', null, '1', '1', '50', '15', '10', '13368348865', '6f1390f1-56be-46c5-a254-a4c860253841.jpg', '0', '1047', '2017-05-04 14:34:19', null, null);
INSERT INTO `bookex_book` VALUES ('10107', '1047', '1', '蚂蚁金服', '由曦', '中信出版社', null, '1', '1', '80', '20', '11', '18883947703', 'dcd88e38-bd7f-4630-8924-ad5f021a6984.jpg', '0', '1047', '2017-05-04 14:37:12', null, null);
INSERT INTO `bookex_book` VALUES ('10108', '1047', '1', '暗恋·橘生淮南', '八月长安', '长江文艺出版社', null, '1', '1', '38', '14', '11', '18883947700', '6ad6ff5c-ca49-4fd2-b5df-078edfc28a9a.jpg', '0', '1047', '2017-05-04 14:39:45', null, null);
INSERT INTO `bookex_book` VALUES ('10109', '1047', '1', '七杀简史', '（牙买加）马龙·詹姆斯', '江苏凤凰文艺出版社', null, '1', '1', '92', '30', '11', '13368348867', '328dd023-5d8f-4ce5-8075-b7c9460adec0.jpg', '0', '1047', '2017-05-04 14:43:12', null, null);

-- ----------------------------
-- Table structure for bookex_bookpicture
-- ----------------------------
DROP TABLE IF EXISTS `bookex_bookpicture`;
CREATE TABLE `bookex_bookpicture` (
  `isbn` bigint(20) NOT NULL,
  `bookpicture1` varchar(200) DEFAULT NULL,
  `bookpicture2` varchar(200) DEFAULT NULL,
  `bookpicture3` varchar(200) DEFAULT NULL,
  `bookpicture4` varchar(200) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updatedtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`isbn`),
  CONSTRAINT `bookex_bookpicture_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `bookex_book` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_bookpicture
-- ----------------------------

-- ----------------------------
-- Table structure for bookex_cart
-- ----------------------------
DROP TABLE IF EXISTS `bookex_cart`;
CREATE TABLE `bookex_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物车记录id',
  `userid` bigint(20) NOT NULL COMMENT '购买者id',
  `isbn` bigint(20) NOT NULL COMMENT '图书编号',
  `count` int(11) NOT NULL COMMENT '商品原来数量',
  `gcount` int(11) NOT NULL COMMENT '当前购买数量',
  `owner` bigint(20) NOT NULL COMMENT '所有者',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `created_by` bigint(20) NOT NULL COMMENT '创建者',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_cart
-- ----------------------------
INSERT INTO `bookex_cart` VALUES ('1', '1001', '10000', '0', '5', '1', '1', '1', '2017-04-19 09:05:59', null, '2017-04-19 00:31:44');
INSERT INTO `bookex_cart` VALUES ('2', '1001', '10005', '0', '3', '1', '1', '1', '2017-04-19 17:27:12', null, '2017-04-19 00:31:41');
INSERT INTO `bookex_cart` VALUES ('3', '1001', '10004', '0', '17', '1', '1', '1', '2017-04-19 17:54:02', null, null);
INSERT INTO `bookex_cart` VALUES ('4', '1001', '10002', '0', '1', '2', '1', '2', '2017-04-19 10:02:44', null, null);
INSERT INTO `bookex_cart` VALUES ('5', '1001', '10024', '0', '1', '1', '1', '1', '2017-04-19 10:07:14', null, null);
INSERT INTO `bookex_cart` VALUES ('6', '1001', '10007', '0', '1', '1', '1', '1', '2017-04-19 10:37:06', null, null);
INSERT INTO `bookex_cart` VALUES ('7', '1001', '10003', '0', '2', '1', '1', '1', '2017-04-19 10:37:52', null, null);
INSERT INTO `bookex_cart` VALUES ('8', '1001', '10010', '0', '4', '1', '1', '1', '2017-04-19 17:25:00', null, null);
INSERT INTO `bookex_cart` VALUES ('10', '1001', '10015', '0', '1', '4', '1', '4', '2017-04-19 12:30:05', null, null);
INSERT INTO `bookex_cart` VALUES ('11', '1001', '10016', '0', '3', '1', '1', '1', '2017-04-19 17:36:51', null, null);
INSERT INTO `bookex_cart` VALUES ('12', '1001', '10021', '0', '2', '1', '1', '1', '2017-04-19 14:54:48', null, null);
INSERT INTO `bookex_cart` VALUES ('13', '1001', '10001', '0', '7', '1', '1', '1001', '2017-04-21 14:49:04', null, null);
INSERT INTO `bookex_cart` VALUES ('14', '1001', '10011', '0', '5', '1', '1', '1001', '2017-04-19 17:53:13', null, null);
INSERT INTO `bookex_cart` VALUES ('15', '1001', '10003', '0', '1', '2', '1', '1001', '2017-04-19 17:30:52', null, null);
INSERT INTO `bookex_cart` VALUES ('16', '1001', '10009', '0', '2', '2', '1', '1001', '2017-04-19 17:30:59', null, null);
INSERT INTO `bookex_cart` VALUES ('17', '1001', '10006', '0', '1', '2', '1', '1001', '2017-04-19 17:31:17', null, null);
INSERT INTO `bookex_cart` VALUES ('18', '1001', '10022', '0', '2', '1', '1', '1001', '2017-04-19 17:37:07', null, null);
INSERT INTO `bookex_cart` VALUES ('19', '1001', '10001', '0', '3', '1', '1', '1001', '2017-04-21 14:49:04', null, null);
INSERT INTO `bookex_cart` VALUES ('20', '1001', '10001', '0', '5', '1', '1', '1001', '2017-04-21 14:49:04', null, null);
INSERT INTO `bookex_cart` VALUES ('21', '1001', '10004', '0', '4', '1', '1', '1001', '2017-04-19 17:54:02', null, null);
INSERT INTO `bookex_cart` VALUES ('22', '1001', '10011', '0', '3', '1', '1', '1001', '2017-04-19 17:53:13', null, null);
INSERT INTO `bookex_cart` VALUES ('23', '1001', '10016', '0', '1', '1', '1', '1001', '2017-04-19 17:43:34', null, null);
INSERT INTO `bookex_cart` VALUES ('24', '1001', '10025', '0', '3', '1', '1', '1001', '2017-04-19 17:43:40', null, null);
INSERT INTO `bookex_cart` VALUES ('25', '1001', '10000', '0', '1', '1', '1', '1001', '2017-04-19 17:56:20', null, null);
INSERT INTO `bookex_cart` VALUES ('26', '1001', '10004', '0', '1', '1', '1', '1001', '2017-04-19 18:00:27', null, null);
INSERT INTO `bookex_cart` VALUES ('27', '1001', '10004', '0', '1', '1', '1', '1001', '2017-04-19 18:48:14', null, null);
INSERT INTO `bookex_cart` VALUES ('28', '1001', '10004', '0', '1', '1', '1', '1001', '2017-04-19 19:52:25', null, null);
INSERT INTO `bookex_cart` VALUES ('29', '1001', '10011', '0', '1', '1', '1', '1001', '2017-04-19 19:52:28', null, null);
INSERT INTO `bookex_cart` VALUES ('30', '1001', '10030', '0', '1', '30', '1', '1001', '2017-04-19 20:19:01', null, null);
INSERT INTO `bookex_cart` VALUES ('31', '1001', '10004', '0', '1', '1', '1', '1001', '2017-04-19 20:34:24', null, null);
INSERT INTO `bookex_cart` VALUES ('32', '1001', '10004', '0', '1', '1', '1', '1001', '2017-04-19 22:59:43', null, null);
INSERT INTO `bookex_cart` VALUES ('33', '1001', '10004', '0', '1', '1', '1', '1001', '2017-04-20 00:14:45', null, null);
INSERT INTO `bookex_cart` VALUES ('34', '1001', '10011', '0', '1', '1', '1', '1001', '2017-04-20 10:22:12', null, null);
INSERT INTO `bookex_cart` VALUES ('35', '1001', '10016', '0', '1', '1', '1', '1001', '2017-04-20 10:22:15', null, null);
INSERT INTO `bookex_cart` VALUES ('36', '1001', '10005', '0', '1', '1', '1', '1001', '2017-04-20 13:27:24', null, null);
INSERT INTO `bookex_cart` VALUES ('37', '1001', '10014', '0', '1', '1', '1', '1001', '2017-04-20 13:31:00', null, null);
INSERT INTO `bookex_cart` VALUES ('38', '1001', '10016', '0', '1', '1', '1', '1001', '2017-04-20 13:36:10', null, null);
INSERT INTO `bookex_cart` VALUES ('39', '1001', '10042', '0', '2', '42', '1', '1001', '2017-04-20 13:42:51', null, null);
INSERT INTO `bookex_cart` VALUES ('40', '1001', '10018', '0', '6', '1', '1', '1001', '2017-04-20 15:52:17', null, null);
INSERT INTO `bookex_cart` VALUES ('41', '1001', '10018', '0', '2', '1', '1', '1001', '2017-04-20 15:52:36', null, null);
INSERT INTO `bookex_cart` VALUES ('42', '1001', '10035', '0', '1', '35', '1', '1001', '2017-04-20 21:29:52', null, null);
INSERT INTO `bookex_cart` VALUES ('43', '1001', '10026', '0', '1', '1', '1', '1001', '2017-04-21 00:59:36', null, null);
INSERT INTO `bookex_cart` VALUES ('44', '1001', '10001', '0', '3', '1', '1', '1001', '2017-04-21 14:49:04', null, null);
INSERT INTO `bookex_cart` VALUES ('48', '1000', '10007', '3', '1', '1', '1', '1000', '2017-04-21 17:33:36', null, null);
INSERT INTO `bookex_cart` VALUES ('49', '1000', '10011', '3', '1', '1', '1', '1000', '2017-04-21 17:33:39', null, null);
INSERT INTO `bookex_cart` VALUES ('50', '1000', '10003', '3', '1', '1', '1', '1000', '2017-04-21 17:44:28', null, null);
INSERT INTO `bookex_cart` VALUES ('51', '1000', '10004', '3', '1', '1', '1', '1000', '2017-04-21 17:44:30', null, null);
INSERT INTO `bookex_cart` VALUES ('52', '1000', '10001', '3', '1', '1', '1', '1000', '2017-04-21 19:43:17', null, null);
INSERT INTO `bookex_cart` VALUES ('53', '1000', '10003', '3', '1', '1', '1', '1000', '2017-04-21 19:43:20', null, null);
INSERT INTO `bookex_cart` VALUES ('54', '1000', '10007', '2', '1', '1', '1', '1000', '2017-04-21 19:47:01', null, null);
INSERT INTO `bookex_cart` VALUES ('55', '1000', '10006', '3', '1', '1', '1', '1000', '2017-04-21 19:47:26', null, null);
INSERT INTO `bookex_cart` VALUES ('56', '1000', '10014', '3', '1', '1', '1', '1000', '2017-04-21 19:47:29', null, null);
INSERT INTO `bookex_cart` VALUES ('57', '1000', '10003', '3', '1', '1', '1', '1000', '2017-04-21 19:51:20', null, null);
INSERT INTO `bookex_cart` VALUES ('58', '1000', '10006', '3', '1', '1', '1', '1000', '2017-04-21 19:51:22', null, null);
INSERT INTO `bookex_cart` VALUES ('59', '1000', '10006', '3', '1', '1', '1', '1000', '2017-04-21 19:56:16', null, null);
INSERT INTO `bookex_cart` VALUES ('60', '1000', '10012', '3', '1', '1', '1', '1000', '2017-04-21 19:56:18', null, null);
INSERT INTO `bookex_cart` VALUES ('61', '1000', '10001', '3', '2', '1', '1', '1000', '2017-04-21 20:36:37', null, null);
INSERT INTO `bookex_cart` VALUES ('62', '1000', '10007', '2', '1', '1', '1', '1000', '2017-04-21 20:21:29', null, null);
INSERT INTO `bookex_cart` VALUES ('63', '1000', '10004', '3', '1', '1', '1', '1000', '2017-04-21 20:36:39', null, null);
INSERT INTO `bookex_cart` VALUES ('64', '1000', '10000', '42', '4', '1', '1', '1000', '2017-04-21 20:37:42', null, null);
INSERT INTO `bookex_cart` VALUES ('65', '1000', '10003', '3', '1', '1', '1', '1000', '2017-04-21 20:41:43', null, null);
INSERT INTO `bookex_cart` VALUES ('66', '1000', '10001', '3', '3', '1', '1', '1000', '2017-04-21 21:03:52', null, null);
INSERT INTO `bookex_cart` VALUES ('67', '1000', '10004', '3', '3', '1', '1', '1000', '2017-04-21 21:03:24', null, null);
INSERT INTO `bookex_cart` VALUES ('68', '1000', '10003', '3', '2', '1', '1', '1000', '2017-04-21 23:02:29', null, null);
INSERT INTO `bookex_cart` VALUES ('69', '1000', '10011', '3', '2', '1', '1', '1000', '2017-04-21 23:02:26', null, null);
INSERT INTO `bookex_cart` VALUES ('70', '1000', '10001', '3', '2', '1', '1', '1000', '2017-04-21 23:02:32', null, null);
INSERT INTO `bookex_cart` VALUES ('71', '1000', '10016', '3', '1', '1', '1', '1000', '2017-04-21 23:13:14', null, null);
INSERT INTO `bookex_cart` VALUES ('72', '1001', '10000', '42', '2', '1', '1', '1001', '2017-04-26 18:26:55', null, null);
INSERT INTO `bookex_cart` VALUES ('73', '1001', '10064', '7', '7', '31', '1', '1001', '2017-04-28 10:24:41', null, null);
INSERT INTO `bookex_cart` VALUES ('74', '1001', '10060', '233', '2', '31', '1', '1001', '2017-04-28 13:47:12', null, null);
INSERT INTO `bookex_cart` VALUES ('75', '1001', '10062', '333', '1', '31', '1', '1001', '2017-04-28 13:48:50', null, null);
INSERT INTO `bookex_cart` VALUES ('76', '1001', '10065', '7', '1', '31', '1', '1001', '2017-04-28 13:48:53', null, null);
INSERT INTO `bookex_cart` VALUES ('77', '1001', '10063', '7', '1', '31', '1', '1001', '2017-04-28 13:48:54', null, null);
INSERT INTO `bookex_cart` VALUES ('78', '1001', '10067', '7', '1', '31', '1', '1001', '2017-04-28 13:48:56', null, null);
INSERT INTO `bookex_cart` VALUES ('79', '1000', '10058', '11', '1', '31', '1', '1000', '2017-04-28 13:58:16', null, null);
INSERT INTO `bookex_cart` VALUES ('80', '1000', '10060', '233', '1', '31', '1', '1000', '2017-04-28 13:58:18', null, null);
INSERT INTO `bookex_cart` VALUES ('81', '1001', '10065', '7', '2', '31', '1', '1001', '2017-04-28 14:44:51', null, null);
INSERT INTO `bookex_cart` VALUES ('82', '1001', '10061', '333', '1', '31', '1', '1001', '2017-04-28 14:44:44', null, null);
INSERT INTO `bookex_cart` VALUES ('83', '1001', '10066', '7', '1', '31', '1', '1001', '2017-04-28 14:44:46', null, null);
INSERT INTO `bookex_cart` VALUES ('84', '1001', '10006', '3', '1', '1', '1', '1001', '2017-04-28 21:55:04', null, null);
INSERT INTO `bookex_cart` VALUES ('85', '1001', '10012', '3', '1', '1', '1', '1001', '2017-04-28 21:55:07', null, null);
INSERT INTO `bookex_cart` VALUES ('86', '1001', '10016', '3', '3', '1', '1', '1001', '2017-04-28 21:55:12', null, null);
INSERT INTO `bookex_cart` VALUES ('87', '1001', '10003', '3', '1', '1', '1', '1001', '2017-04-29 01:59:16', null, null);
INSERT INTO `bookex_cart` VALUES ('88', '1001', '10006', '3', '1', '1', '1', '1001', '2017-04-29 01:59:19', null, null);
INSERT INTO `bookex_cart` VALUES ('89', '1001', '10000', '36', '8', '1', '1', '1001', '2017-05-01 10:02:21', null, null);
INSERT INTO `bookex_cart` VALUES ('90', '1007', '10058', '11', '2', '31', '1', '1007', '2017-04-30 17:56:54', null, null);
INSERT INTO `bookex_cart` VALUES ('91', '1007', '10061', '333', '3', '31', '1', '1007', '2017-04-30 18:01:23', null, null);
INSERT INTO `bookex_cart` VALUES ('92', '1007', '10065', '7', '2', '31', '1', '1007', '2017-04-30 18:01:14', null, null);
INSERT INTO `bookex_cart` VALUES ('93', '1007', '10007', '2', '1', '1', '0', '1007', '2017-04-30 18:08:57', null, null);
INSERT INTO `bookex_cart` VALUES ('94', '1007', '10019', '3', '1', '1', '1', '1007', '2017-04-30 18:09:00', null, null);
INSERT INTO `bookex_cart` VALUES ('95', '1001', '10058', '11', '3', '31', '1', '1001', '2017-04-30 18:25:53', null, null);
INSERT INTO `bookex_cart` VALUES ('96', '1001', '10000', '34', '2', '1', '1', '1001', '2017-05-01 10:04:47', null, null);
INSERT INTO `bookex_cart` VALUES ('97', '1001', '10000', '33', '1', '1', '1', '1001', '2017-05-01 10:04:57', null, null);
INSERT INTO `bookex_cart` VALUES ('98', '1001', '10001', '3', '1', '1', '1', '1001', '2017-05-01 10:06:14', null, null);
INSERT INTO `bookex_cart` VALUES ('99', '1001', '10060', '233', '1', '31', '1', '1001', '2017-05-01 10:26:30', null, null);
INSERT INTO `bookex_cart` VALUES ('100', '1001', '10061', '333', '1', '31', '1', '1001', '2017-05-01 11:52:00', null, null);
INSERT INTO `bookex_cart` VALUES ('101', '1001', '10062', '333', '1', '31', '1', '1001', '2017-05-01 11:52:03', null, null);
INSERT INTO `bookex_cart` VALUES ('102', '1001', '10065', '7', '1', '31', '1', '1001', '2017-05-01 11:54:42', null, null);
INSERT INTO `bookex_cart` VALUES ('103', '1001', '10061', '332', '1', '31', '1', '1001', '2017-05-01 11:59:52', null, null);
INSERT INTO `bookex_cart` VALUES ('104', '1001', '10058', '10', '3', '31', '1', '1001', '2017-05-01 17:18:49', null, null);
INSERT INTO `bookex_cart` VALUES ('105', '1001', '10060', '232', '2', '31', '1', '1001', '2017-05-01 14:33:24', null, null);
INSERT INTO `bookex_cart` VALUES ('106', '1001', '10065', '6', '1', '31', '1', '1001', '2017-05-02 10:47:09', null, null);
INSERT INTO `bookex_cart` VALUES ('107', '1001', '10003', '3', '1', '1', '1', '1001', '2017-05-02 11:05:05', null, null);
INSERT INTO `bookex_cart` VALUES ('108', '1009', '10064', '7', '1', '31', '1', '1009', '2017-05-02 19:15:01', null, null);
INSERT INTO `bookex_cart` VALUES ('109', '1009', '10061', '331', '1', '31', '1', '1009', '2017-05-02 20:40:18', null, null);
INSERT INTO `bookex_cart` VALUES ('110', '1009', '10067', '7', '1', '31', '1', '1009', '2017-05-02 20:40:47', null, null);
INSERT INTO `bookex_cart` VALUES ('111', '1009', '10062', '332', '1', '31', '1', '1009', '2017-05-02 20:40:54', null, null);
INSERT INTO `bookex_cart` VALUES ('112', '1009', '10063', '7', '1', '31', '1', '1009', '2017-05-02 20:41:04', null, null);
INSERT INTO `bookex_cart` VALUES ('113', '1009', '10006', '3', '2', '1', '1', '1009', '2017-05-03 12:04:06', null, null);
INSERT INTO `bookex_cart` VALUES ('114', '1016', '10002', '3', '1', '2', '1', '1016', '2017-05-03 12:05:33', null, null);
INSERT INTO `bookex_cart` VALUES ('115', '1016', '10061', '330', '1', '31', '1', '1016', '2017-05-03 12:10:54', null, null);
INSERT INTO `bookex_cart` VALUES ('116', '1016', '10065', '4', '2', '31', '0', '1016', '2017-05-03 12:25:55', null, null);
INSERT INTO `bookex_cart` VALUES ('117', '1016', '10006', '1', '1', '1', '0', '1016', '2017-05-03 13:18:57', null, null);
INSERT INTO `bookex_cart` VALUES ('118', '1015', '10088', '3', '2', '40', '1', '1015', '2017-05-04 11:19:11', null, null);
INSERT INTO `bookex_cart` VALUES ('119', '1015', '10078', '2', '2', '40', '1', '1015', '2017-05-04 12:09:29', null, null);
INSERT INTO `bookex_cart` VALUES ('120', '1015', '10082', '2', '2', '40', '1', '1015', '2017-05-04 13:20:36', null, null);
INSERT INTO `bookex_cart` VALUES ('121', '1015', '10087', '2', '1', '40', '1', '1015', '2017-05-04 12:51:39', null, null);
INSERT INTO `bookex_cart` VALUES ('122', '1015', '10093', '2', '1', '40', '1', '1015', '2017-05-04 13:26:24', null, null);
INSERT INTO `bookex_cart` VALUES ('123', '1047', '10098', '6', '1', '40', '0', '1047', '2017-05-04 14:46:24', null, null);
INSERT INTO `bookex_cart` VALUES ('124', '1047', '10078', '0', '1', '40', '0', '1047', '2017-05-04 14:46:59', null, null);
INSERT INTO `bookex_cart` VALUES ('125', '1047', '10077', '3', '1', '40', '1', '1047', '2017-05-04 14:51:57', null, null);
INSERT INTO `bookex_cart` VALUES ('126', '1047', '10077', '0', '3', '40', '0', '1047', '2017-05-04 15:27:53', null, null);
INSERT INTO `bookex_cart` VALUES ('127', '1047', '10083', '3', '1', '40', '0', '1047', '2017-05-04 15:08:13', null, null);
INSERT INTO `bookex_cart` VALUES ('128', '1047', '10079', '2', '1', '40', '0', '1047', '2017-05-04 15:29:16', null, null);
INSERT INTO `bookex_cart` VALUES ('129', '1048', '10082', '1', '1', '40', '1', '1048', '2017-05-04 17:13:07', null, null);
INSERT INTO `bookex_cart` VALUES ('130', '1048', '10079', '1', '1', '40', '1', '1048', '2017-05-04 17:25:07', null, null);
INSERT INTO `bookex_cart` VALUES ('131', '1009', '10078', '-1', '1', '40', '1', '1009', '2017-05-05 19:36:31', null, null);
INSERT INTO `bookex_cart` VALUES ('132', '1001', '10090', '3', '2', '40', '1', '1001', '2017-05-06 19:17:49', null, null);
INSERT INTO `bookex_cart` VALUES ('133', '1001', '10078', '4', '3', '40', '1', '1001', '2017-05-06 20:22:48', null, null);
INSERT INTO `bookex_cart` VALUES ('134', '1001', '10079', '2', '1', '40', '1', '1001', '2017-05-06 20:24:44', null, null);
INSERT INTO `bookex_cart` VALUES ('135', '1000', '10083', '2', '1', '40', '1', '1000', '2017-05-06 20:45:30', null, null);
INSERT INTO `bookex_cart` VALUES ('136', '1015', '10080', '2', '1', '40', '1', '1015', '2017-05-08 11:02:56', null, null);
INSERT INTO `bookex_cart` VALUES ('137', '1015', '10088', '2', '1', '40', '1', '1015', '2017-05-08 11:07:54', null, null);
INSERT INTO `bookex_cart` VALUES ('138', '1015', '10092', '1', '1', '40', '1', '1015', '2017-05-08 11:07:57', null, null);
INSERT INTO `bookex_cart` VALUES ('139', '1015', '10077', '3', '2', '40', '1', '1015', '2017-05-08 12:10:28', null, null);

-- ----------------------------
-- Table structure for bookex_category
-- ----------------------------
DROP TABLE IF EXISTS `bookex_category`;
CREATE TABLE `bookex_category` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `cowner` bigint(20) NOT NULL COMMENT '类别所有者',
  `cownertype` bigint(20) NOT NULL COMMENT '所有者类型',
  `description` varchar(100) NOT NULL COMMENT '类别描述',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `created_by` bigint(20) NOT NULL COMMENT '创建者',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_category
-- ----------------------------
INSERT INTO `bookex_category` VALUES ('1', '1', '0', '文学', '0', '0', '2017-04-13 12:31:10', null, '2017-04-13 12:33:21');
INSERT INTO `bookex_category` VALUES ('2', '1', '0', '历史', '0', '0', '2017-04-13 12:31:35', null, '2017-04-13 12:33:25');
INSERT INTO `bookex_category` VALUES ('3', '1', '0', 'fl', '0', '0', '2017-04-13 12:32:08', null, '2017-04-13 12:33:27');
INSERT INTO `bookex_category` VALUES ('4', '1', '0', '分类4', '0', '0', '2017-04-13 12:32:21', null, '2017-04-13 12:33:31');
INSERT INTO `bookex_category` VALUES ('5', '1', '0', '分类5', '0', '0', '2017-04-13 12:32:35', null, '2017-04-13 12:33:34');
INSERT INTO `bookex_category` VALUES ('6', '1', '0', '分类6', '0', '0', '2017-04-13 12:32:45', null, '2017-04-13 12:33:38');
INSERT INTO `bookex_category` VALUES ('7', '1', '0', '分类7', '0', '0', '2017-04-13 12:32:59', null, '2017-04-13 12:33:41');
INSERT INTO `bookex_category` VALUES ('8', '1', '0', '分类8', '0', '0', '2017-04-13 12:33:17', null, '2017-04-13 12:33:44');
INSERT INTO `bookex_category` VALUES ('9', '0', '2', '崭新', '0', '0', '2017-04-27 10:35:25', null, null);
INSERT INTO `bookex_category` VALUES ('10', '0', '2', '较新', '0', '0', '2017-04-27 10:35:48', null, null);
INSERT INTO `bookex_category` VALUES ('11', '0', '2', '普通', '0', '0', '2017-04-27 10:36:15', null, null);
INSERT INTO `bookex_category` VALUES ('12', '0', '2', '旧', '0', '0', '2017-04-27 10:36:51', null, null);
INSERT INTO `bookex_category` VALUES ('13', '0', '2', '很旧', '0', '0', '2017-04-27 10:37:04', null, null);
INSERT INTO `bookex_category` VALUES ('14', '0', '10', '超级管理员', '0', '0', '2017-04-27 15:36:39', null, null);
INSERT INTO `bookex_category` VALUES ('15', '0', '11', '店铺管理员', '0', '0', '2017-04-27 15:37:24', null, null);
INSERT INTO `bookex_category` VALUES ('16', '0', '12', '普通用户', '0', '0', '2017-04-27 15:37:43', null, null);
INSERT INTO `bookex_category` VALUES ('17', '31', '0', 'ewqrqwe', '0', '31', '2017-04-27 23:28:34', null, null);
INSERT INTO `bookex_category` VALUES ('18', '31', '0', 'rewqr', '0', '31', '2017-04-27 23:38:45', null, null);
INSERT INTO `bookex_category` VALUES ('19', '31', '0', '化学', '0', '31', '2017-04-27 23:44:42', null, null);
INSERT INTO `bookex_category` VALUES ('20', '31', '0', '物理', '0', '31', '2017-04-27 23:45:10', null, null);
INSERT INTO `bookex_category` VALUES ('21', '31', '0', '43214', '0', '31', '2017-04-27 23:45:24', null, null);
INSERT INTO `bookex_category` VALUES ('22', '31', '0', '而且', '0', '31', '2017-04-27 23:45:30', null, null);
INSERT INTO `bookex_category` VALUES ('23', '31', '0', 'kx', '0', '31', '2017-04-28 10:25:58', null, null);
INSERT INTO `bookex_category` VALUES ('28', '31', '0', 'rewqrqwerq', '0', '31', '2017-04-28 21:57:17', null, null);
INSERT INTO `bookex_category` VALUES ('29', '31', '0', '发生地方', '0', '31', '2017-04-29 21:48:33', null, null);
INSERT INTO `bookex_category` VALUES ('30', '40', '0', '文学', '0', '40', '2017-05-03 15:11:59', null, null);
INSERT INTO `bookex_category` VALUES ('31', '40', '0', '名著', '0', '40', '2017-05-03 15:12:07', null, null);
INSERT INTO `bookex_category` VALUES ('32', '40', '0', '小说', '0', '40', '2017-05-03 15:12:14', null, null);
INSERT INTO `bookex_category` VALUES ('33', '40', '0', '动漫', '0', '40', '2017-05-03 15:12:20', null, null);
INSERT INTO `bookex_category` VALUES ('34', '40', '0', '艺术', '0', '40', '2017-05-03 15:49:25', null, null);

-- ----------------------------
-- Table structure for bookex_homepage
-- ----------------------------
DROP TABLE IF EXISTS `bookex_homepage`;
CREATE TABLE `bookex_homepage` (
  `hmid` bigint(20) NOT NULL AUTO_INCREMENT,
  `pic1` varchar(200) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `msg1` varchar(200) NOT NULL,
  `pic2` varchar(200) NOT NULL,
  `title2` varchar(100) NOT NULL,
  `msg2` varchar(200) NOT NULL,
  `pic3` varchar(200) NOT NULL,
  `title3` varchar(100) NOT NULL,
  `msg3` varchar(200) NOT NULL,
  `motto` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updatedtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_homepage
-- ----------------------------

-- ----------------------------
-- Table structure for bookex_leavemessage
-- ----------------------------
DROP TABLE IF EXISTS `bookex_leavemessage`;
CREATE TABLE `bookex_leavemessage` (
  `lmsgid` bigint(20) NOT NULL AUTO_INCREMENT,
  `leaverid` bigint(20) NOT NULL,
  `repeatid` bigint(20) NOT NULL,
  `lmsgcontent` varchar(500) NOT NULL,
  `lmsgstatus` int(11) NOT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updatedtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`lmsgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_leavemessage
-- ----------------------------

-- ----------------------------
-- Table structure for bookex_messageboard
-- ----------------------------
DROP TABLE IF EXISTS `bookex_messageboard`;
CREATE TABLE `bookex_messageboard` (
  `msgid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `userid` bigint(20) NOT NULL COMMENT '留言用户',
  `bookname` varchar(50) NOT NULL COMMENT '想获得的图书名字',
  `bookauthor` varchar(20) DEFAULT NULL COMMENT '图书作者',
  `msgcontent` varchar(200) DEFAULT NULL COMMENT '留言内容',
  `msgstatus` int(11) NOT NULL DEFAULT '0' COMMENT '留言状态',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `created_by` bigint(20) NOT NULL COMMENT '创建人',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_messageboard
-- ----------------------------
INSERT INTO `bookex_messageboard` VALUES ('1', '1001', '1341324', '', '', '1', '0', '1001', '2017-04-28 17:28:51', '1001', '2017-04-28 18:48:57');
INSERT INTO `bookex_messageboard` VALUES ('2', '1001', 'eqwrqew', '', '', '1', '0', '1001', '2017-04-28 18:56:16', '1001', '2017-04-28 18:56:21');
INSERT INTO `bookex_messageboard` VALUES ('3', '1001', 'rwqreqwerqweeqw', '134232', '13368348867', '1', '0', '1001', '2017-04-28 18:56:37', '1001', '2017-04-30 18:28:31');
INSERT INTO `bookex_messageboard` VALUES ('4', '1001', '333', '333', '333', '1', '0', '1001', '2017-04-28 19:00:33', '1001', '2017-04-30 18:28:27');
INSERT INTO `bookex_messageboard` VALUES ('5', '1001', '1234132', '4321412', '431241234', '1', '0', '1001', '2017-04-28 19:05:52', '1001', '2017-04-28 19:11:35');
INSERT INTO `bookex_messageboard` VALUES ('6', '1001', '3412', '43124', '3124', '1', '0', '1001', '2017-04-28 19:10:41', '1001', '2017-04-28 19:10:56');
INSERT INTO `bookex_messageboard` VALUES ('7', '1001', '4321', '2134', '12341', '1', '0', '1001', '2017-04-28 20:29:40', '1001', '2017-04-30 18:28:25');
INSERT INTO `bookex_messageboard` VALUES ('8', '1001', '413241324', '43214123', '43124123', '1', '0', '1001', '2017-04-28 21:54:34', '1001', '2017-04-30 18:28:23');
INSERT INTO `bookex_messageboard` VALUES ('9', '1003', 'qwreeqwr', 'qewrqewr', 'rqwerqewrqewrqewr', '1', '0', '1003', '2017-04-28 22:43:33', '1003', '2017-04-29 00:42:11');
INSERT INTO `bookex_messageboard` VALUES ('10', '1003', '去玩儿全文', '热情为', '额外清热请勿扰', '1', '0', '1003', '2017-04-29 00:42:35', '1003', '2017-04-29 00:44:48');
INSERT INTO `bookex_messageboard` VALUES ('11', '1003', 'reqwrqwerqwe', '热情额外人轻微热情为', '亲热完', '1', '0', '1003', '2017-04-29 00:45:00', '1003', '2017-04-29 00:45:03');
INSERT INTO `bookex_messageboard` VALUES ('12', '1001', '4321412', '12341234', '12341234', '1', '0', '1001', '2017-04-30 18:28:38', '1001', '2017-05-06 20:27:18');
INSERT INTO `bookex_messageboard` VALUES ('13', '1001', 'xxx', '', '', '1', '0', '1001', '2017-05-02 10:46:26', '1001', '2017-05-06 20:27:16');
INSERT INTO `bookex_messageboard` VALUES ('14', '1009', 'test', 'test', '110', '0', '0', '1009', '2017-05-02 14:55:28', null, null);
INSERT INTO `bookex_messageboard` VALUES ('15', '1009', '123', '', '', '0', '0', '1009', '2017-05-03 11:38:58', null, null);
INSERT INTO `bookex_messageboard` VALUES ('16', '1000', '41234123', 'wreqqewr', 'rqewrqwer', '0', '0', '1000', '2017-05-06 20:37:32', null, null);
INSERT INTO `bookex_messageboard` VALUES ('17', '1000', '41243124', '13243124', '14312341234', '0', '0', '1000', '2017-05-06 20:37:40', null, null);

-- ----------------------------
-- Table structure for bookex_order
-- ----------------------------
DROP TABLE IF EXISTS `bookex_order`;
CREATE TABLE `bookex_order` (
  `orderid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `buyerid` bigint(20) NOT NULL COMMENT '买家id',
  `sellerid` bigint(20) NOT NULL COMMENT '卖家id',
  `isbn` bigint(20) NOT NULL COMMENT '图书编号',
  `obookcount` int(11) NOT NULL COMMENT '订单中商品数量',
  `ostatus` int(11) DEFAULT '0' COMMENT '订单状态',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `created_by` bigint(20) NOT NULL COMMENT '创建者',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`orderid`),
  KEY `isbn` (`isbn`),
  CONSTRAINT `bookex_order_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `bookex_book` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_order
-- ----------------------------
INSERT INTO `bookex_order` VALUES ('100', '1001', '1', '10000', '5', '0', null, '0', '1001', '2017-04-19 16:29:33', null, null);
INSERT INTO `bookex_order` VALUES ('101', '1001', '1', '10016', '1', '0', null, '0', '1001', '2017-04-19 16:47:09', null, null);
INSERT INTO `bookex_order` VALUES ('106', '1001', '1', '10000', '5', '0', null, '0', '1001', '2017-04-19 16:51:21', null, null);
INSERT INTO `bookex_order` VALUES ('107', '1001', '1', '10010', '1', '0', null, '0', '1001', '2017-04-19 16:51:21', null, null);
INSERT INTO `bookex_order` VALUES ('109', '1001', '1', '10000', '5', '0', null, '0', '1001', '2017-04-19 17:05:34', null, null);
INSERT INTO `bookex_order` VALUES ('110', '1001', '1', '10010', '1', '0', null, '0', '1001', '2017-04-19 17:05:34', null, null);
INSERT INTO `bookex_order` VALUES ('112', '1001', '1', '10025', '3', '0', null, '0', '1001', '2017-04-19 17:43:55', null, null);
INSERT INTO `bookex_order` VALUES ('113', '1001', '1', '10004', '4', '0', null, '0', '1001', '2017-04-19 17:56:28', null, null);
INSERT INTO `bookex_order` VALUES ('114', '1001', '1', '10011', '3', '0', null, '0', '1001', '2017-04-19 17:56:28', null, null);
INSERT INTO `bookex_order` VALUES ('115', '1001', '1', '10016', '1', '0', null, '0', '1001', '2017-04-19 17:56:28', null, null);
INSERT INTO `bookex_order` VALUES ('116', '1001', '1', '10000', '1', '0', null, '0', '1001', '2017-04-19 17:56:28', null, null);
INSERT INTO `bookex_order` VALUES ('120', '1001', '1', '10004', '1', '0', null, '0', '1001', '2017-04-19 18:00:32', null, null);
INSERT INTO `bookex_order` VALUES ('121', '1001', '1', '10004', '1', '0', null, '0', '1001', '2017-04-19 18:48:21', null, null);
INSERT INTO `bookex_order` VALUES ('122', '1001', '30', '10030', '1', '0', null, '0', '1001', '2017-04-19 20:34:35', null, null);
INSERT INTO `bookex_order` VALUES ('123', '1001', '1', '10004', '1', '0', null, '0', '1001', '2017-04-20 00:17:11', null, null);
INSERT INTO `bookex_order` VALUES ('124', '1001', '1', '10016', '1', '0', null, '0', '1001', '2017-04-20 10:22:36', null, null);
INSERT INTO `bookex_order` VALUES ('125', '1001', '1', '10011', '1', '0', null, '0', '1001', '2017-04-20 10:22:51', null, null);
INSERT INTO `bookex_order` VALUES ('126', '1001', '42', '10042', '2', '0', null, '0', '1001', '2017-04-20 13:43:05', null, null);
INSERT INTO `bookex_order` VALUES ('127', '1001', '35', '10035', '1', '0', null, '0', '1001', '2017-04-20 21:30:05', null, null);
INSERT INTO `bookex_order` VALUES ('128', '1001', '1', '10001', '3', '0', null, '0', '1001', '2017-04-21 14:49:20', null, null);
INSERT INTO `bookex_order` VALUES ('129', '1000', '1', '10011', '1', '0', null, '0', '1000', '2017-04-21 17:34:03', null, null);
INSERT INTO `bookex_order` VALUES ('130', '1000', '1', '10007', '1', '0', null, '0', '1000', '2017-04-21 19:48:26', null, null);
INSERT INTO `bookex_order` VALUES ('131', '1000', '1', '10004', '1', '0', null, '0', '1000', '2017-04-21 19:48:33', null, null);
INSERT INTO `bookex_order` VALUES ('132', '1000', '1', '10001', '1', '0', null, '0', '1000', '2017-04-21 19:48:48', null, null);
INSERT INTO `bookex_order` VALUES ('133', '1000', '1', '10003', '1', '0', null, '0', '1000', '2017-04-21 19:48:48', null, null);
INSERT INTO `bookex_order` VALUES ('135', '1000', '1', '10003', '1', '0', null, '0', '1000', '2017-04-21 19:51:31', null, null);
INSERT INTO `bookex_order` VALUES ('136', '1000', '1', '10006', '1', '0', null, '0', '1000', '2017-04-21 19:51:31', null, null);
INSERT INTO `bookex_order` VALUES ('138', '1000', '1', '10006', '1', '0', null, '0', '1000', '2017-04-21 20:19:39', null, null);
INSERT INTO `bookex_order` VALUES ('139', '1000', '1', '10007', '1', '0', null, '0', '1000', '2017-04-21 20:36:49', null, null);
INSERT INTO `bookex_order` VALUES ('140', '1000', '1', '10004', '1', '0', null, '0', '1000', '2017-04-21 20:36:55', null, null);
INSERT INTO `bookex_order` VALUES ('141', '1000', '1', '10001', '2', '0', null, '0', '1000', '2017-04-21 20:38:09', null, null);
INSERT INTO `bookex_order` VALUES ('142', '1000', '1', '10000', '4', '0', null, '0', '1000', '2017-04-21 20:38:09', null, null);
INSERT INTO `bookex_order` VALUES ('144', '1000', '1', '10004', '3', '0', null, '0', '1000', '2017-04-21 21:03:37', null, null);
INSERT INTO `bookex_order` VALUES ('145', '1000', '1', '10001', '3', '0', null, '0', '1000', '2017-04-21 21:04:00', null, null);
INSERT INTO `bookex_order` VALUES ('146', '1000', '1', '10003', '2', '0', null, '0', '1000', '2017-04-21 23:13:45', null, null);
INSERT INTO `bookex_order` VALUES ('147', '1000', '1', '10011', '2', '0', null, '0', '1000', '2017-04-21 23:13:45', null, null);
INSERT INTO `bookex_order` VALUES ('148', '1000', '1', '10001', '2', '0', null, '0', '1000', '2017-04-21 23:13:45', null, null);
INSERT INTO `bookex_order` VALUES ('149', '1000', '1', '10016', '1', '0', null, '0', '1000', '2017-04-21 23:13:45', null, null);
INSERT INTO `bookex_order` VALUES ('150', '1001', '1', '10000', '2', '0', null, '0', '1001', '2017-04-28 00:17:39', null, null);
INSERT INTO `bookex_order` VALUES ('166', '1001', '1', '10012', '1', '0', null, '0', '1001', '2017-04-28 21:55:32', null, null);
INSERT INTO `bookex_order` VALUES ('167', '1001', '1', '10006', '1', '1', null, '0', '1001', '2017-04-28 21:55:34', '1002', '2017-05-07 02:37:32');
INSERT INTO `bookex_order` VALUES ('171', '1007', '1', '10019', '1', '1', null, '0', '1007', '2017-04-30 18:09:11', '1002', '2017-05-07 02:37:25');
INSERT INTO `bookex_order` VALUES ('176', '1001', '1', '10001', '1', '0', null, '0', '1001', '2017-05-01 11:53:06', null, null);
INSERT INTO `bookex_order` VALUES ('177', '1001', '1', '10003', '1', '1', null, '0', '1001', '2017-05-01 11:53:42', '1002', '2017-05-07 02:59:31');
INSERT INTO `bookex_order` VALUES ('182', '1016', '2', '10002', '1', '0', null, '0', '1016', '2017-05-03 12:06:13', null, null);
INSERT INTO `bookex_order` VALUES ('184', '1015', '40', '10088', '2', '0', null, '0', '1015', '2017-05-04 11:20:05', null, null);
INSERT INTO `bookex_order` VALUES ('185', '1015', '40', '10082', '2', '1', null, '0', '1015', '2017-05-04 13:26:11', '1015', '2017-05-04 17:34:51');
INSERT INTO `bookex_order` VALUES ('186', '1015', '40', '10093', '1', '1', null, '0', '1015', '2017-05-04 13:26:28', '1015', '2017-05-04 17:34:01');
INSERT INTO `bookex_order` VALUES ('187', '1048', '40', '10082', '1', '1', null, '0', '1048', '2017-05-04 17:36:19', '1015', '2017-05-04 17:36:38');
INSERT INTO `bookex_order` VALUES ('188', '1009', '40', '10078', '1', '0', null, '0', '1009', '2017-05-05 19:38:41', null, null);
INSERT INTO `bookex_order` VALUES ('189', '1001', '40', '10079', '1', '0', null, '0', '1001', '2017-05-06 20:24:54', null, null);
INSERT INTO `bookex_order` VALUES ('190', '1015', '40', '10077', '2', '0', null, '0', '1015', '2017-05-08 12:12:29', null, null);
INSERT INTO `bookex_order` VALUES ('191', '1015', '40', '10092', '1', '0', null, '0', '1015', '2017-05-08 16:55:14', null, null);

-- ----------------------------
-- Table structure for bookex_shop
-- ----------------------------
DROP TABLE IF EXISTS `bookex_shop`;
CREATE TABLE `bookex_shop` (
  `shopid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shopname` varchar(50) NOT NULL COMMENT '店铺名',
  `shoplogo` varchar(150) NOT NULL COMMENT '店铺logo',
  `paypic1` varchar(200) DEFAULT NULL COMMENT '支付二维码图片1',
  `paypic2` varchar(200) DEFAULT NULL COMMENT '支付二维码图片2',
  `shopmsg` varchar(500) DEFAULT NULL COMMENT '店铺说明',
  `shoptell` varchar(800) DEFAULT NULL COMMENT '店铺公告',
  `shoptel` varchar(15) NOT NULL COMMENT '店铺电话',
  `shopadmin1` bigint(20) NOT NULL COMMENT '店铺管理员1',
  `shopadmin2` bigint(20) DEFAULT NULL COMMENT '店铺管理员2',
  `shopadmin3` bigint(20) DEFAULT NULL COMMENT '店铺管理员3',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `created_by` bigint(20) NOT NULL COMMENT '创建人',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`shopid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_shop
-- ----------------------------
INSERT INTO `bookex_shop` VALUES ('1', '趣味书屋', 'c88c3efc-12de-4c71-a39b-619337298d98.jpg', '支付宝', '微信', '有趣的书店', '公告', '13368348856', '1002', null, null, '0', '1', '2017-04-30 00:31:27', null, '2017-05-07 02:31:35');
INSERT INTO `bookex_shop` VALUES ('2', '快乐书店', 'sdfsdaf', '支付宝', '微信', '快乐读书坊', '公告', '12315456454', '111', null, null, '0', '1', '2017-04-12 09:36:01', null, '2017-04-12 09:36:07');
INSERT INTO `bookex_shop` VALUES ('3', '书店2', 'logo2', '支付宝2', '微信2', '描述2', '公告2', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:32', null, '2017-04-12 11:37:25');
INSERT INTO `bookex_shop` VALUES ('4', '书店', 'logo3', '支付宝3', '微信3', '描述3', '公告3', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:33', null, '2017-04-12 11:37:29');
INSERT INTO `bookex_shop` VALUES ('5', '书店4', 'logo4', '支付宝4', '微信4', '描述4', '公告4', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:34', null, '2017-04-12 15:41:23');
INSERT INTO `bookex_shop` VALUES ('6', '书店5', 'logo5', '支付宝5', '微信5', '描述5', '公告5', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:35', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('7', '书店6', 'logo6', '支付宝6', '微信6', '描述6', '公告6', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:36', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('8', '书店7', 'logo7', '支付宝7', '微信7', '描述7', '公告7', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:37', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('9', '书店8', 'logo8', '支付宝8', '微信8', '描述8', '公告8', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:38', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('10', '书店9', 'logo9', '支付宝9', '微信9', '描述9', '公告9', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:39', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('11', '书店10', 'logo10', '支付宝10', '微信10', '描述10', '公告10', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:40', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('12', '书店11', 'logo11', '支付宝11', '微信11', '描述11', '公告11', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:41', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('13', '书店12', 'logo12', '支付宝12', '微信12', '描述12', '公告12', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:42', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('14', '书店13', 'logo13', '支付宝13', '微信13', '描述13', '公告13', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:43', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('15', '书店14', 'logo14', '支付宝14', '微信14', '描述14', '公告14', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:44', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('16', '书店15', 'logo15', '支付宝15', '微信15', '描述15', '公告15', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:45', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('17', '书店16', 'logo16', '支付宝16', '微信16', '描述16', '公告16', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:46', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('18', '书店17', 'logo17', '支付宝17', '微信17', '描述17', '公告17', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:47', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('19', '书店18', 'logo18', '支付宝18', '微信18', '描述18', '公告18', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:48', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('20', '书店19', 'logo19', '支付宝19', '微信19', '描述19', '公告19', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:49', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('21', '书店20', 'logo20', '支付宝20', '微信20', '描述20', '公告20', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:50', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('22', '书店21', 'logo21', '支付宝21', '微信21', '描述21', '公告21', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:51', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('23', '书店22', 'logo22', '支付宝22', '微信22', '描述22', '公告22', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:52', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('24', '书店23', 'logo23', '支付宝23', '微信23', '描述23', '公告23', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:53', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('25', '书店24', 'logo24', '支付宝24', '微信24', '描述24', '公告24', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:54', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('26', '书店25', 'logo25', '支付宝25', '微信25', '描述25', '公告25', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:55', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('27', '书店26', 'logo26', '支付宝26', '微信26', '描述26', '公告26', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:56', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('28', '书店27', 'logo27', '支付宝27', '微信27', '描述27', '公告27', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:57', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('29', '书店28', 'logo28', '支付宝28', '微信28', '描述28', '公告28', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:58', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('30', '书店29', 'logo29', '支付宝29', '微信29', '描述29', '公告29', '12315456454', '111', null, null, '0', '1', '2017-01-02 09:21:59', null, '2017-04-12 15:49:46');
INSERT INTO `bookex_shop` VALUES ('31', '343', 'f6a834d3-2654-413e-a232-e754c592b322.png', 'e7067ac0-7d4a-4023-a55d-b9c01e4276d7.png', '89fadf29-235d-43b0-abda-9d9ee61b9cf1.png', '', null, '123412341324123', '1001', null, null, '0', '1001', '2017-04-27 18:32:50', null, null);
INSERT INTO `bookex_shop` VALUES ('32', 'wancy', '61299e48-f40b-4a5b-9943-85cb588f1293.jpg', '7a0987a0-1659-4f0e-b54a-c4529b6abfb9.jpg', '50f97fa0-469b-409a-a822-13e0a433ebf5.jpg', '', null, '', '1009', null, null, '0', '1009', '2017-05-02 15:06:50', null, null);
INSERT INTO `bookex_shop` VALUES ('33', 'wancy', '5129d236-bdff-4d6d-ad91-7f7a9a0eceb3.jpg', 'f1bd1b5b-0031-41fd-95f4-4ab537858e59.jpg', '5d702902-9057-41d2-94d0-9bac260f269c.jpg', 'wancy的店铺', null, '15086824302', '1009', null, null, '0', '1009', '2017-05-03 10:39:36', null, null);
INSERT INTO `bookex_shop` VALUES ('34', 'wancy', 'd5d1f4be-1d1f-4b3d-84d2-03f0687d9548.jpg', 'a53ac74f-697a-4dc6-844a-a807069e37ec.jpg', 'e23e8917-1540-4165-841e-e7962cdac112.jpg', 'wancy的店铺', null, '15086824302', '1009', null, null, '0', '1009', '2017-05-03 10:40:01', null, null);
INSERT INTO `bookex_shop` VALUES ('35', 'wancy', '4189eae5-516a-4304-827d-633657ebfceb.jpg', 'fdb93784-c2cc-4f1d-8b70-01ba38c342af.jpg', 'a925d9fc-b3b9-4cd6-9a3b-9bef9d2d40e2.jpg', 'wancy的店铺', null, '15086824302', '1009', null, null, '0', '1009', '2017-05-03 10:40:21', null, null);
INSERT INTO `bookex_shop` VALUES ('36', 'wancy', 'b79e6288-96d8-497b-9913-9548b8347d2d.jpg', '839e62ac-6fe0-4378-8149-abc9d1ef9b27.jpg', '59f50ac9-70be-4c2e-a165-d1e84fbfa44e.jpg', 'wancy的店铺', null, '15086824302', '1009', null, null, '0', '1009', '2017-05-03 10:41:05', null, null);
INSERT INTO `bookex_shop` VALUES ('37', 'wancy', '7c55cebf-347b-4b31-81c2-b6a147d2da1d.jpg', '6263dd59-688d-4b17-809d-bd7f196023dd.jpg', '3f5add17-a9f1-49e2-89d1-9036c6664b13.jpg', 'wancy的店铺', null, '15086824302', '1009', null, null, '0', '1009', '2017-05-03 10:42:45', null, null);
INSERT INTO `bookex_shop` VALUES ('38', '123的', '5a14e4d0-49b4-4e9c-b788-1525877d92df.jpg', 'b584ea64-427c-4698-a342-2fc3de315f6d.jpg', 'ef864e8c-ebd7-4835-9de6-19eb57366929.jpg', '3121321', null, 'qeweqwe', '1014', null, null, '0', '1014', '2017-05-03 10:44:27', null, null);
INSERT INTO `bookex_shop` VALUES ('39', '人生书屋', 'e3a62b10-1a2c-4f85-a839-c5839bf27636.jpg', 'c6d6775f-79c5-44e8-921f-988c4f9bbe73.png', '100b4fa1-690f-4d5d-aa97-34b8af8a8912.png', '在这里度过这一段美好拾光', null, 'tel:15111819353', '1045', null, null, '0', '1045', '2017-05-03 15:05:49', null, null);
INSERT INTO `bookex_shop` VALUES ('40', '拾光书屋', '2637a91f-1909-486b-8cd0-07b15ad7b3e5.jpg', '504c944f-8767-4af3-8945-9df0da23b47f.png', '231eeb6b-eddc-4d72-8c17-838438b43c64.png', '来这里度过一段美好拾光', null, 'tel:15111819353', '1015', null, null, '0', '1015', '2017-05-03 15:07:57', null, '2017-05-07 00:27:23');
INSERT INTO `bookex_shop` VALUES ('41', '汤圆儿', '8f99179f-fa48-4738-8d92-0b04ed10e066.jpg', 'e107ed90-8efd-4a06-aa47-4020633d5b22.jpg', '59380ab3-6ed2-4947-bd58-3c65bc9371fa.jpg', '汤圆儿家的小书店', null, '18875023803', '1010', null, null, '0', '1010', '2017-05-03 15:54:12', null, null);
INSERT INTO `bookex_shop` VALUES ('42', '小小书屋', '8a2a1d34-7036-486b-a292-c69587e9d8b1.jpg', '690c9207-c357-41c4-9ccf-fd745767ad0c.png', '859432ab-875e-40d8-92b8-d47a2b6c41d7.png', '一定有你想要的', null, '12344554444', '1051', null, null, '0', '1001', '2017-05-03 16:26:10', null, null);
INSERT INTO `bookex_shop` VALUES ('43', '小小', '06e47ba6-5f6b-4702-ba94-0744398c4439.jpg', '8568db8f-92ee-40c0-86bd-cfa0fb41f9c9.png', '440795f0-cbd8-4fda-a0ae-b6b189336b2d.png', '一定有你想要的', null, '1233442233', '1031', null, null, '0', '1031', '2017-05-03 16:28:09', null, null);

-- ----------------------------
-- Table structure for bookex_tradingrecord
-- ----------------------------
DROP TABLE IF EXISTS `bookex_tradingrecord`;
CREATE TABLE `bookex_tradingrecord` (
  `recordid` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(20) DEFAULT NULL,
  `buyerid` bigint(20) NOT NULL,
  `sellerid` bigint(20) NOT NULL,
  `isbn` bigint(20) NOT NULL,
  `rbookcount` int(11) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) DEFAULT NULL,
  `updatedtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`recordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_tradingrecord
-- ----------------------------

-- ----------------------------
-- Table structure for bookex_user
-- ----------------------------
DROP TABLE IF EXISTS `bookex_user`;
CREATE TABLE `bookex_user` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `gender` char(6) DEFAULT NULL COMMENT '性别',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `telephone` varchar(15) DEFAULT NULL COMMENT '电话',
  `pwd` varchar(16) NOT NULL COMMENT '密码',
  `usertype` int(11) NOT NULL COMMENT '用户类型',
  `deleted` int(11) DEFAULT '0' COMMENT '是否删除',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `created_by` bigint(20) NOT NULL COMMENT '创建人',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `updatedtime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1049 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookex_user
-- ----------------------------
INSERT INTO `bookex_user` VALUES ('1000', '李尚权', 'male', 'sq', '13368348867', '20130516185', '2', '0', '2017-04-11', '南溪', '1', '2017-04-11 11:51:41', null, '2017-05-06 20:50:12');
INSERT INTO `bookex_user` VALUES ('1001', '20130516185', 'male', 'sd', '12354548789', '333', '1', '0', '2017-04-11', 'shiguo', '1', '2017-04-11 12:18:47', null, '2017-05-08 11:10:01');
INSERT INTO `bookex_user` VALUES ('1002', '20130516111', 'male', 'ss', '13345645787', '20130516111', '1', '0', '2017-04-19', '重庆', '1', '2017-04-19 22:37:06', null, null);
INSERT INTO `bookex_user` VALUES ('1003', '20130516110', 'female', 'sa', '11111111111', '20130516110', '0', '0', '2017-04-20', 'beijing', '1', '2017-04-20 16:08:00', null, null);
INSERT INTO `bookex_user` VALUES ('1009', '20130720064', null, null, null, '20130720064', '1', '0', null, null, '20130720064', '2017-05-02 14:48:04', null, null);
INSERT INTO `bookex_user` VALUES ('1010', '20130720068', null, null, null, 'lifangyuan520', '1', '0', null, null, '20130720068', '2017-05-02 14:50:33', null, null);
INSERT INTO `bookex_user` VALUES ('1011', '20130720065', null, null, null, '20130720065', '2', '0', null, null, '20130720065', '2017-05-02 20:58:34', null, null);
INSERT INTO `bookex_user` VALUES ('1015', '20130516121', null, null, null, '20130516121', '1', '0', null, null, '20130516121', '2017-05-03 10:51:25', null, null);
INSERT INTO `bookex_user` VALUES ('1017', '20130516186', null, null, null, '20130516186', '2', '0', null, null, '20130516186', '2017-05-03 11:43:55', null, null);
INSERT INTO `bookex_user` VALUES ('1018', '20130516120', null, null, null, '20130516120', '2', '0', null, null, '20130516120', '2017-05-03 14:51:21', null, null);
INSERT INTO `bookex_user` VALUES ('1019', '20130516122', null, null, null, '20130516122', '2', '0', null, null, '20130516122', '2017-05-03 14:51:43', null, null);
INSERT INTO `bookex_user` VALUES ('1020', '20130516123', null, null, null, '20130516123', '2', '0', null, null, '20130516123', '2017-05-03 14:51:59', null, null);
INSERT INTO `bookex_user` VALUES ('1021', '15111819353', null, null, null, '15111819353', '2', '0', null, null, '15111819353', '2017-05-03 14:52:16', null, null);
INSERT INTO `bookex_user` VALUES ('1022', '15223030537', null, null, null, '15223030537', '2', '0', null, null, '15223030537', '2017-05-03 14:52:34', null, null);
INSERT INTO `bookex_user` VALUES ('1023', '20130516124', null, null, null, '20130516124', '2', '0', null, null, '20130516124', '2017-05-03 14:52:49', null, null);
INSERT INTO `bookex_user` VALUES ('1024', '20130516125', null, null, null, '20130516125', '2', '0', null, null, '20130516125', '2017-05-03 14:53:34', null, null);
INSERT INTO `bookex_user` VALUES ('1025', '20130516127', null, null, null, '20130516127', '2', '0', null, null, '20130516127', '2017-05-03 14:54:04', null, null);
INSERT INTO `bookex_user` VALUES ('1026', '20130516126', null, null, null, '20130516126', '2', '0', null, null, '20130516126', '2017-05-03 14:54:21', null, null);
INSERT INTO `bookex_user` VALUES ('1027', '20130516128', null, null, null, '20130516128', '2', '0', null, null, '20130516128', '2017-05-03 14:54:40', null, null);
INSERT INTO `bookex_user` VALUES ('1028', '20130516131', null, null, null, '20130516131', '2', '0', null, null, '20130516131', '2017-05-03 14:55:03', null, null);
INSERT INTO `bookex_user` VALUES ('1029', '20130516132', null, null, null, '20130516132', '2', '0', null, null, '20130516132', '2017-05-03 14:55:19', null, null);
INSERT INTO `bookex_user` VALUES ('1030', '20130516124', null, null, null, '20130516124', '2', '0', null, null, '20130516124', '2017-05-03 14:55:35', null, null);
INSERT INTO `bookex_user` VALUES ('1031', '20130516134', null, null, null, '20130516134', '1', '0', null, null, '20130516134', '2017-05-03 14:55:58', null, null);
INSERT INTO `bookex_user` VALUES ('1032', '20130516135', null, null, null, '20130516135', '2', '0', null, null, '20130516135', '2017-05-03 14:56:14', null, null);
INSERT INTO `bookex_user` VALUES ('1033', '20130516136', null, null, null, '20130516136', '2', '0', null, null, '20130516136', '2017-05-03 14:56:37', null, null);
INSERT INTO `bookex_user` VALUES ('1034', '20130516139', null, null, null, '20130516139', '2', '0', null, null, '20130516139', '2017-05-03 14:56:54', null, null);
INSERT INTO `bookex_user` VALUES ('1035', '20130516140', null, null, null, '20130516140', '2', '0', null, null, '20130516140', '2017-05-03 14:57:15', null, null);
INSERT INTO `bookex_user` VALUES ('1036', '20130516141', null, null, null, '20130516141', '2', '0', null, null, '20130516141', '2017-05-03 14:57:30', null, null);
INSERT INTO `bookex_user` VALUES ('1037', '20130516142', null, null, null, '20130516142', '2', '0', null, null, '20130516142', '2017-05-03 14:57:47', null, null);
INSERT INTO `bookex_user` VALUES ('1038', '20130516143', null, null, null, '20130516143', '2', '0', null, null, '20130516143', '2017-05-03 14:58:03', null, null);
INSERT INTO `bookex_user` VALUES ('1039', '20130516149', null, null, null, '20130516149', '2', '0', null, null, '20130516149', '2017-05-03 14:58:24', null, null);
INSERT INTO `bookex_user` VALUES ('1040', '20130516150', null, null, null, '20130516150', '2', '0', null, null, '20130516150', '2017-05-03 14:58:43', null, null);
INSERT INTO `bookex_user` VALUES ('1041', '20130516151', null, null, null, '20130516151', '2', '0', null, null, '20130516151', '2017-05-03 14:58:59', null, null);
INSERT INTO `bookex_user` VALUES ('1042', '20130516153', null, null, null, '20130516153', '2', '0', null, null, '20130516153', '2017-05-03 14:59:21', null, null);
INSERT INTO `bookex_user` VALUES ('1044', '20130516154', null, null, null, '20130516154', '2', '0', null, null, '20130516154', '2017-05-03 15:00:01', null, null);
INSERT INTO `bookex_user` VALUES ('1045', '20130516155', null, null, null, '20130516155', '1', '0', null, null, '20130516155', '2017-05-03 15:00:13', null, null);
INSERT INTO `bookex_user` VALUES ('1046', '20130516113', null, null, null, '20130516113', '2', '0', null, null, '20130516113', '2017-05-04 14:10:37', null, null);
INSERT INTO `bookex_user` VALUES ('1047', '20130516114', null, null, null, '20130516114', '2', '0', null, null, '20130516114', '2017-05-04 14:32:22', null, null);
INSERT INTO `bookex_user` VALUES ('1048', '2015051603024', null, null, '13062394629', '1234', '2', '0', null, 'dsakdkk', '2015051603024', '2017-05-04 17:11:53', null, null);
