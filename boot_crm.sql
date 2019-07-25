/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50708
Source Host           : localhost:3306
Source Database       : boot_crm

Target Server Type    : MYSQL
Target Server Version : 50708
File Encoding         : 65001

Date: 2019-07-25 10:33:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for base_dict
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL,
  `dict_type_code` varchar(10) DEFAULT NULL,
  `dict_type_name` varchar(50) DEFAULT NULL,
  `dict_item_code` varchar(50) DEFAULT NULL,
  `dict_item_name` varchar(10) DEFAULT NULL,
  `dict_sort` int(10) DEFAULT NULL,
  `dict_enable` char(1) DEFAULT NULL,
  `dict_memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '002', '', null, '网络营销', null, null, null);
INSERT INTO `base_dict` VALUES ('2', '001', '', null, '电子商务', null, null, null);
INSERT INTO `base_dict` VALUES ('3', '006', '', null, '普遍客户', null, null, null);
INSERT INTO `base_dict` VALUES ('4', '002', '', null, '电话营销', null, null, null);
INSERT INTO `base_dict` VALUES ('5', '001', null, null, '酒店旅游', null, null, null);
INSERT INTO `base_dict` VALUES ('6', '006', null, null, 'VIP客户', null, null, null);
INSERT INTO `base_dict` VALUES ('7', '001', null, null, '对外贸易', null, null, null);
INSERT INTO `base_dict` VALUES ('8', '001', null, null, '房地产', null, null, null);
INSERT INTO `base_dict` VALUES ('9', '001', null, null, '教育培训', null, null, null);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` int(32) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_user_id` int(32) DEFAULT NULL,
  `cust_create_id` int(32) DEFAULT NULL,
  `cust_source` varchar(50) DEFAULT NULL,
  `cust_industry` varchar(50) DEFAULT NULL,
  `cust_level` varchar(32) DEFAULT NULL,
  `cust_linkman` varchar(50) DEFAULT NULL,
  `cust_phone` varchar(64) DEFAULT NULL,
  `cust_mobile` varchar(16) DEFAULT NULL,
  `cust_zipcode` varchar(10) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `cust_createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('3', '汤姆', null, '1', '1', '9', '6', 'irving', '010-428900', '12276549021', '12334', '杭州', '2019-07-18 15:14:02');
INSERT INTO `customer` VALUES ('7', 'curry', null, '2', '4', '5', '6', '张', '010-986232', '16789024197', '424500', '美国', '2019-07-18 15:02:33');
INSERT INTO `customer` VALUES ('10', 'jams', null, '2', '1', '5', '6', '???', '010-234239', '17812298725', '10000', '??', '2019-07-16 17:43:46');
INSERT INTO `customer` VALUES ('11', 'Irving', null, '2', '1', '5', '6', 'irving', '010-790256', '19823907654', '10000', '??', '2019-07-16 17:44:39');
INSERT INTO `customer` VALUES ('15', '王麻子', null, '1', '1', '2', '3', '李可可', '012-231342', '17812298725', '420000', '美国', '2019-07-16 19:01:35');
INSERT INTO `customer` VALUES ('16', '李四', null, '1', '4', '2', '6', '勒布朗', '134214', '16789024197', '42000', '湖北', '2019-07-16 19:03:11');
INSERT INTO `customer` VALUES ('17', '隔壁老王', null, '1', '4', '2', '3', '李', '010-897235', '17812298725', '42000', '美国', '2019-07-16 19:07:44');
INSERT INTO `customer` VALUES ('19', '史蒂夫', null, '1', '4', '8', '3', '勒布朗', '134214', '16789024197', '42000', '杭州', '2019-07-18 15:13:01');
INSERT INTO `customer` VALUES ('20', '刘德华', null, '1', '4', '8', '6', '王', '6687331', '19823907654', '10000', '香港', '2019-07-18 15:14:59');
INSERT INTO `customer` VALUES ('21', '杨', null, '1', '1', '9', '3', '琳琳', '6687331', '17812298725', '10000', '美国', '2019-07-18 15:15:35');
INSERT INTO `customer` VALUES ('22', '张卫健', null, '1', '1', '5', '6', '刘', '090-231342', '19876287002', '42000', '美国', '2019-07-18 15:16:25');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(32) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_state` varchar(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'm001', '小廖', '123', '1');
INSERT INTO `sys_user` VALUES ('2', 'm002', 'K', '123', '1');
