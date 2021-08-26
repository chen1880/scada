/*
Navicat MySQL Data Transfer

Source Server         : CHEN
Source Server Version : 50717
Source Host           : 42.194.142.223:9831
Source Database       : iotwebsite

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-08-26 10:50:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_equip_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_equip_group`;
CREATE TABLE `tb_equip_group` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GroupCode` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT '0',
  `Remark` varchar(255) DEFAULT NULL,
  `CreateUser` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equip_group
-- ----------------------------
INSERT INTO `tb_equip_group` VALUES ('6', 'dd28255b-da56-4234-b2b0-8993f90a3879', '龙湖泵组', '1', null, '16');

-- ----------------------------
-- Table structure for tb_equip_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_equip_info`;
CREATE TABLE `tb_equip_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EquipCode` varchar(64) DEFAULT NULL,
  `GroupCode` varchar(64) DEFAULT NULL,
  `TypeCode` varchar(64) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT '0',
  `Remark` varchar(255) DEFAULT NULL,
  `CreateUser` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equip_info
-- ----------------------------
INSERT INTO `tb_equip_info` VALUES ('6', '30fe019f-4c55-40c8-96fc-3c977f381614', 'dd28255b-da56-4234-b2b0-8993f90a3879', 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', '龙湖1#泵', '1', null, '16');
INSERT INTO `tb_equip_info` VALUES ('7', '01859789-08a1-4131-9995-e0554b57640d', 'dd28255b-da56-4234-b2b0-8993f90a3879', 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', '龙湖2#泵', '1', null, '16');
INSERT INTO `tb_equip_info` VALUES ('8', 'c4a376e1-b34f-4f01-b5bc-70a6c232fea2', null, 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', '龙湖3#泵', '1', null, '16');
INSERT INTO `tb_equip_info` VALUES ('12', 'd21fec4d-3b46-4066-89f7-937f1efd473e', null, 'f3f8c5ea-5db1-46dc-9239-e2a75f512e62', '龙湖1#流量计', '1', null, '1');
INSERT INTO `tb_equip_info` VALUES ('13', '9311288a-3265-4c2e-8943-74cbed768204', null, 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', '11', '1', '1', '1');
INSERT INTO `tb_equip_info` VALUES ('14', '012f8a27-7dbc-47af-ada2-041b4f93d095', null, 'f3f8c5ea-5db1-46dc-9239-e2a75f512e62', '222', '1', null, '1');

-- ----------------------------
-- Table structure for tb_equip_point
-- ----------------------------
DROP TABLE IF EXISTS `tb_equip_point`;
CREATE TABLE `tb_equip_point` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PointCode` varchar(64) DEFAULT NULL,
  `EquipCode` varchar(64) DEFAULT NULL,
  `ParamCode` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT '0',
  `Remark` varchar(255) DEFAULT NULL,
  `CreateUser` bigint(20) DEFAULT NULL,
  `ItemName` varchar(255) DEFAULT NULL,
  `ItemValue` varchar(255) DEFAULT NULL,
  `QualityBits` varchar(255) DEFAULT NULL,
  `Timestamp` varchar(50) DEFAULT NULL,
  `CustomExpression` varchar(50) DEFAULT NULL,
  `CustomValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equip_point
-- ----------------------------
INSERT INTO `tb_equip_point` VALUES ('9', '31ce5514-79ea-4cbd-b445-3c40a3850132', '30fe019f-4c55-40c8-96fc-3c977f381614', '7dc8c143-8663-41c2-ba37-042bbe87f305', '龙湖1号泵状态', '1', null, '16', 'channel.device.龙湖1号泵状态', '1', 'bad', '2021/6/19 8:24:59', 'X*10', '10');
INSERT INTO `tb_equip_point` VALUES ('10', 'ae3c2de5-6288-45e6-8592-23b7e6f0ca26', '30fe019f-4c55-40c8-96fc-3c977f381614', 'ba57fa08-ec5f-4340-b0dc-e2ff47374823', '龙湖1号泵选择开关', '1', null, '16', 'channel.device.龙湖1号泵选择开关', '0', 'bad', '2021/6/19 8:24:59', '', '0');
INSERT INTO `tb_equip_point` VALUES ('11', '350c8f7c-7bfa-4899-baf1-5e9287fe7782', '30fe019f-4c55-40c8-96fc-3c977f381614', '8081a3cd-8f8b-4772-b1d6-367a60f33ffd', '龙湖1号泵故障状态', '1', null, '16', 'channel.device.龙湖1号泵故障状态', '0', 'bad', '2021/6/19 8:24:59', null, '0');
INSERT INTO `tb_equip_point` VALUES ('12', '23b0f642-c5a7-47a4-abc1-23789c71a527', '01859789-08a1-4131-9995-e0554b57640d', '7dc8c143-8663-41c2-ba37-042bbe87f305', '龙湖2号泵状态', '1', null, '16', null, null, null, null, null, null);
INSERT INTO `tb_equip_point` VALUES ('13', '72cf0c4c-1420-4338-b732-1aaeda26feac', 'c4a376e1-b34f-4f01-b5bc-70a6c232fea2', '7dc8c143-8663-41c2-ba37-042bbe87f305', '龙湖3号泵状态', '1', null, '16', null, null, null, null, null, null);
INSERT INTO `tb_equip_point` VALUES ('21', 'edcdce5f-9dc1-4ed1-bffe-85938c6ef108', 'd21fec4d-3b46-4066-89f7-937f1efd473e', '418eac81-d95b-4eeb-97d9-3226ffaf38ee', '龙湖1#流量计瞬时流量', '1', null, '1', null, null, null, null, '', null);
INSERT INTO `tb_equip_point` VALUES ('22', 'e8e32089-5be6-4b6d-a73a-9299f520103d', 'd21fec4d-3b46-4066-89f7-937f1efd473e', 'e7f81deb-84e9-48fc-8c3b-0cfd7f61ea61', '龙湖1#流量计累计流量', '1', null, '1', null, null, null, null, '', null);
INSERT INTO `tb_equip_point` VALUES ('23', 'e7526253-ad8e-48c0-833e-b5749d9dda60', '9311288a-3265-4c2e-8943-74cbed768204', '7dc8c143-8663-41c2-ba37-042bbe87f305', '11', '1', null, '1', null, null, null, null, '1', null);
INSERT INTO `tb_equip_point` VALUES ('24', 'fd7f5729-924c-404a-9292-f6c562f1903d', '012f8a27-7dbc-47af-ada2-041b4f93d095', '418eac81-d95b-4eeb-97d9-3226ffaf38ee', '22', '1', null, '1', null, null, null, null, '1', null);

-- ----------------------------
-- Table structure for tb_equip_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_equip_type`;
CREATE TABLE `tb_equip_type` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TypeCode` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `ZWPY` varchar(255) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `CreateUser` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equip_type
-- ----------------------------
INSERT INTO `tb_equip_type` VALUES ('4', 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', '水泵', 'SB', '1', null, '16');
INSERT INTO `tb_equip_type` VALUES ('5', 'f3f8c5ea-5db1-46dc-9239-e2a75f512e62', '流量计', 'LLJ', '1', null, '16');

-- ----------------------------
-- Table structure for tb_equip_type_param
-- ----------------------------
DROP TABLE IF EXISTS `tb_equip_type_param`;
CREATE TABLE `tb_equip_type_param` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TypeCode` varchar(64) DEFAULT NULL,
  `ParamCode` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `ZWPY` varchar(64) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `CreateUser` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_equip_type_param
-- ----------------------------
INSERT INTO `tb_equip_type_param` VALUES ('5', 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', '7dc8c143-8663-41c2-ba37-042bbe87f305', '泵状态', 'BZT', '1', null, '16');
INSERT INTO `tb_equip_type_param` VALUES ('6', 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', 'ba57fa08-ec5f-4340-b0dc-e2ff47374823', '泵选择开关', 'BXZKG', '1', null, '16');
INSERT INTO `tb_equip_type_param` VALUES ('7', 'fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec', '8081a3cd-8f8b-4772-b1d6-367a60f33ffd', '泵故障状态', 'BGZZT', '1', null, '16');
INSERT INTO `tb_equip_type_param` VALUES ('8', 'f3f8c5ea-5db1-46dc-9239-e2a75f512e62', '418eac81-d95b-4eeb-97d9-3226ffaf38ee', '瞬时流量', 'SSLL', '1', null, '16');
INSERT INTO `tb_equip_type_param` VALUES ('9', 'f3f8c5ea-5db1-46dc-9239-e2a75f512e62', 'e7f81deb-84e9-48fc-8c3b-0cfd7f61ea61', '累计流量', 'LJLL', '1', null, '16');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `MenuID` varchar(64) NOT NULL,
  `Code` varchar(32) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Path` varchar(255) DEFAULT '' COMMENT '路径',
  `ParentID` varchar(50) DEFAULT '' COMMENT '父节点',
  `Level` int(4) DEFAULT '0' COMMENT '层级',
  `Icon` varchar(100) DEFAULT '' COMMENT '图标',
  `SortCode` int(4) DEFAULT '0' COMMENT '排序',
  `Remark` varchar(512) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('M10', '10', '系统管理', null, '0', '1', 'fa fa-gears', '1', '');
INSERT INTO `tb_menu` VALUES ('M11', '11', '用户管理', '/SysManage/User/Index', 'M10', '2', null, '1', '');
INSERT INTO `tb_menu` VALUES ('M12', '12', '角色管理', '/SysManage/Role/Index', 'M10', '2', null, '2', '');
INSERT INTO `tb_menu` VALUES ('M13', '13', '日志管理', '/SysManage/SysLog/Index', 'M10', '2', null, '4', '');
INSERT INTO `tb_menu` VALUES ('M20', '20', '系统配置', '', '0', '1', 'fa fa-newspaper-o', '2', '');
INSERT INTO `tb_menu` VALUES ('M21', '21', '设备管理', '/SysConfig/EquipInfo/Index', 'M20', '2', null, '3', '');
INSERT INTO `tb_menu` VALUES ('M22', '22', '设备组管理', '/SysConfig/EquipGroup/Index', 'M20', '2', '', '3', '');
INSERT INTO `tb_menu` VALUES ('M23', '23', '设备类型', '/SysConfig/EquipType/Index', 'M20', '2', '', '3', '');
INSERT INTO `tb_menu` VALUES ('M30', '30', '报表统计', '', '0', '1', 'fa fa-newspaper-o', '2', '');
INSERT INTO `tb_menu` VALUES ('M31', '31', '历史数据', '/Report/EquipHistory', 'M30', '2', '', '3', '');

-- ----------------------------
-- Table structure for tb_menu_button
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_button`;
CREATE TABLE `tb_menu_button` (
  `ButtonID` varchar(64) NOT NULL,
  `Code` varchar(32) DEFAULT '',
  `Name` varchar(64) DEFAULT '',
  `MenuID` varchar(64) DEFAULT '' COMMENT '菜单',
  `Path` varchar(255) DEFAULT '' COMMENT '路径',
  `Remark` varchar(512) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`ButtonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作';

-- ----------------------------
-- Records of tb_menu_button
-- ----------------------------
INSERT INTO `tb_menu_button` VALUES ('B111', 'add', '新增', 'M11', '/SysManage/User/Form', null);
INSERT INTO `tb_menu_button` VALUES ('B112', 'edit', '编辑', 'M11', '/SysManage/User/Form', null);
INSERT INTO `tb_menu_button` VALUES ('B113', 'delete', '删除', 'M11', '/SysManage/User/DeleteForm', null);
INSERT INTO `tb_menu_button` VALUES ('B121', 'add', '新增', 'M12', '/SysManage/Role/Form', null);
INSERT INTO `tb_menu_button` VALUES ('B122', 'edit', '编辑', 'M12', '/SysManage/Role/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B123', 'delete', '删除', 'M12', '/SysManage/Role/DeleteForm', '');
INSERT INTO `tb_menu_button` VALUES ('B133', 'delete', '删除', 'M13', '/SysManage/Log/DeleteForm', '');
INSERT INTO `tb_menu_button` VALUES ('B134', 'detail', '日志详情', 'M13', '/SysManage/SysLog/Details', '');
INSERT INTO `tb_menu_button` VALUES ('B211', 'add', '新增设备', 'M21', '/SysConfig/EquipInfo/Form', null);
INSERT INTO `tb_menu_button` VALUES ('B212', 'edit', '编辑设备', 'M21', '/SysConfig/EquipInfo/Form', null);
INSERT INTO `tb_menu_button` VALUES ('B213', 'delete', '删除设备', 'M21', '/SysConfig/EquipInfo/DeleteForm', null);
INSERT INTO `tb_menu_button` VALUES ('B214', 'edit_point', '点位信息', 'M21', '/SysConfig/EquipPoint/Index', '');
INSERT INTO `tb_menu_button` VALUES ('B215', 'add', '新增点位', 'M21', '/SysConfig/EquipPoint/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B216', 'edit', '编辑点位', 'M21', '/SysConfig/EquipPoint/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B217', 'delete', '删除点位', 'M21', '/SysConfig/EquipPoint/DeleteForm', '');
INSERT INTO `tb_menu_button` VALUES ('B218', 'import', '批量导入', 'M21', '/SysConfig/EquipInfo/ImportForm', '');
INSERT INTO `tb_menu_button` VALUES ('B219', 'export', '批量导出', 'M21', '/SysConfig/EquipInfo/ExportExcel', '');
INSERT INTO `tb_menu_button` VALUES ('B221', 'edit', '编辑', 'M22', '/SysConfig/EquipGroup/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B222', 'add', '新增', 'M22', '/SysConfig/EquipGroup/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B223', 'edit', '编辑', 'M22', '/SysConfig/EquipGroup/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B224', 'delete', '删除', 'M22', '/SysConfig/EquipGroup/DeleteForm', '');
INSERT INTO `tb_menu_button` VALUES ('B225', 'edit_member', '设备成员', 'M22', '/SysConfig/EquipGroup/GroupMember', '');
INSERT INTO `tb_menu_button` VALUES ('B231', 'add', '新增类型', 'M23', '/SysConfig/EquipType/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B232', 'edit', '编辑类型', 'M23', '/SysConfig/EquipType/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B233', 'delete', '删除类型', 'M23', '/SysConfig/EquipType/DeleteForm', '');
INSERT INTO `tb_menu_button` VALUES ('B234', 'edit_param', '采集参数', 'M23', '/SysConfig/EquipTypeParam/Index', '');
INSERT INTO `tb_menu_button` VALUES ('B235', 'add', '新增参数', 'M23', '/SysConfig/EquipTypeParam/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B236', 'edit', '编辑参数', 'M23', '/SysConfig/EquipTypeParam/Form', '');
INSERT INTO `tb_menu_button` VALUES ('B237', 'delete', '删除参数', 'M23', '/SysConfig/EquipTypeParam/DeleteForm', '');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(64) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `Remark` varchar(512) DEFAULT '' COMMENT '备注',
  `CreateUser` bigint(64) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', '超级管理员', '1', null, '1');
INSERT INTO `tb_role` VALUES ('16', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'guest', '1', 'guest', '1');

-- ----------------------------
-- Table structure for tb_role_u_menu_button
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_u_menu_button`;
CREATE TABLE `tb_role_u_menu_button` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(64) NOT NULL COMMENT '角色',
  `ObjectID` varchar(64) NOT NULL COMMENT '操作',
  `ItemType` int(50) NOT NULL,
  `CreateUser` bigint(64) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=792 DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
-- Records of tb_role_u_menu_button
-- ----------------------------
INSERT INTO `tb_role_u_menu_button` VALUES ('52', 'aaa4987b-0723-4714-b7be-a60a8a405568', 'M10', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('53', 'aaa4987b-0723-4714-b7be-a60a8a405568', 'M11', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('54', 'aaa4987b-0723-4714-b7be-a60a8a405568', 'B111', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('55', 'aaa4987b-0723-4714-b7be-a60a8a405568', 'B112', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('56', 'aaa4987b-0723-4714-b7be-a60a8a405568', 'B113', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('714', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M10', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('715', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M11', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('716', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B111', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('717', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B112', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('718', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B113', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('719', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M12', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('720', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B121', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('721', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B122', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('722', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B123', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('723', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M13', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('724', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B133', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('725', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B134', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('726', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M20', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('727', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M21', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('728', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B211', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('729', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B212', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('730', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B213', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('731', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B214', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('732', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B215', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('733', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B216', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('734', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B217', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('735', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B218', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('736', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B219', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('737', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M22', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('738', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B221', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('739', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B222', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('740', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B223', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('741', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B224', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('742', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B225', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('743', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M23', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('744', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B231', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('745', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B232', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('746', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B233', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('747', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B234', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('748', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B235', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('749', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B236', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('750', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'B237', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('751', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M30', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('752', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', 'M31', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('753', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M10', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('754', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M11', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('755', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B111', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('756', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B112', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('757', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B113', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('758', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M12', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('759', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B121', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('760', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B122', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('761', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B123', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('762', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M13', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('763', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B133', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('764', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B134', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('765', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M20', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('766', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M21', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('767', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B211', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('768', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B212', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('769', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B213', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('770', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B214', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('771', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B215', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('772', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B216', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('773', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B217', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('774', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B218', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('775', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B219', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('776', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M22', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('777', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B221', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('778', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B222', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('779', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B223', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('780', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B224', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('781', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B225', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('782', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M23', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('783', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B231', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('784', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B232', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('785', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B233', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('786', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B234', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('787', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B235', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('788', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B236', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('789', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'B237', '2', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('790', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M30', '1', '0');
INSERT INTO `tb_role_u_menu_button` VALUES ('791', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', 'M31', '1', '0');

-- ----------------------------
-- Table structure for tb_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_log`;
CREATE TABLE `tb_sys_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) DEFAULT NULL,
  `UserAlias` varchar(30) DEFAULT NULL,
  `IPAddress` varchar(30) DEFAULT NULL,
  `LogType` varchar(20) DEFAULT NULL,
  `MenuName` varchar(20) DEFAULT NULL,
  `OPType` varchar(20) DEFAULT NULL,
  `OPResult` tinyint(1) DEFAULT NULL,
  `Remark` varchar(2000) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `CreateUser` bigint(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sys_log
-- ----------------------------
INSERT INTO `tb_sys_log` VALUES ('156', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 13:45:08', '1');
INSERT INTO `tb_sys_log` VALUES ('157', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 13:52:06', '1');
INSERT INTO `tb_sys_log` VALUES ('158', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 13:52:06', '1');
INSERT INTO `tb_sys_log` VALUES ('159', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 14:06:40', '1');
INSERT INTO `tb_sys_log` VALUES ('160', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 14:18:17', '1');
INSERT INTO `tb_sys_log` VALUES ('161', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '角色管理', '新增', '1', 'Name_Before=,Name=guest,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,permissionExt=1,1,2,2,2,1,2,2,2,1,2', '2021-02-01 14:18:55', '1');
INSERT INTO `tb_sys_log` VALUES ('162', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '用户管理', '新增', '1', 'Name_Before=,PassWord_Before=,RoleID_Before=,Name=guest,Alias=guest,PassWord=E10ADC3949BA59ABBE56E057F20F883E,RoleID=dea0e19f-64a4-4baf-beb6-1fcb250fa338,Status=1,Remark=', '2021-02-01 14:19:09', '1');
INSERT INTO `tb_sys_log` VALUES ('163', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 14:19:33', '14');
INSERT INTO `tb_sys_log` VALUES ('164', 'guest', 'guest', '169.254.52.186', 'OPLog', '角色管理', '新增', '1', 'Name_Before=,Name=test,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,permissionExt=1,1,2,2,2,1,2,2,2,1,2', '2021-02-01 14:19:44', '14');
INSERT INTO `tb_sys_log` VALUES ('165', 'guest', 'guest', '169.254.52.186', 'OPLog', '用户管理', '新增', '1', 'Name_Before=,PassWord_Before=,RoleID_Before=,Name=test,Alias=test,PassWord=E10ADC3949BA59ABBE56E057F20F883E,RoleID=440f5697-43b6-4d4d-afce-25bb0fb7dedd,Status=1,Remark=', '2021-02-01 14:19:59', '14');
INSERT INTO `tb_sys_log` VALUES ('166', 'test', 'test', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 14:20:15', '15');
INSERT INTO `tb_sys_log` VALUES ('167', 'guest', null, '169.254.52.186', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-02-01 14:20:29', '0');
INSERT INTO `tb_sys_log` VALUES ('168', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 14:20:35', '14');
INSERT INTO `tb_sys_log` VALUES ('169', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 14:20:50', '1');
INSERT INTO `tb_sys_log` VALUES ('170', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 16:44:06', '1');
INSERT INTO `tb_sys_log` VALUES ('171', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '用户管理', '修改', '1', 'Name_Before=test,PassWord_Before=E10ADC3949BA59ABBE56E057F20F883E,RoleID_Before=440f5697-43b6-4d4d-afce-25bb0fb7dedd,Name=test,Alias=test,PassWord=E10ADC3949BA59ABBE56E057F20F883E,RoleID=440f5697-43b6-4d4d-afce-25bb0fb7dedd,Status=1,Remark=', '2021-02-01 16:44:34', '1');
INSERT INTO `tb_sys_log` VALUES ('172', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-01 16:44:47', '1');
INSERT INTO `tb_sys_log` VALUES ('173', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 14:48:38', '1');
INSERT INTO `tb_sys_log` VALUES ('174', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 15:00:00', '1');
INSERT INTO `tb_sys_log` VALUES ('175', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '角色管理', '删除', '1', 'keyValue=440f5697-43b6-4d4d-afce-25bb0fb7dedd,keyValue=dea0e19f-64a4-4baf-beb6-1fcb250fa338,primary=test,primary=guest', '2021-02-24 15:00:43', '1');
INSERT INTO `tb_sys_log` VALUES ('176', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '用户管理', '删除', '1', 'keyValue=602a472f-999d-4946-b53b-ccec0ec88392,keyValue=251cd9a0-56e9-44be-8ba4-edf86bdab4ec,primary=test,primary=guest', '2021-02-24 15:00:48', '1');
INSERT INTO `tb_sys_log` VALUES ('177', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '角色管理', '新增', '1', 'Name_Before=,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2', '2021-02-24 15:01:16', '1');
INSERT INTO `tb_sys_log` VALUES ('178', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '用户管理', '新增', '1', 'Name_Before=,PassWord_Before=,RoleID_Before=,Name=guest,Alias=guest,PassWord=E10ADC3949BA59ABBE56E057F20F883E,RoleID=c50228a5-5cf9-4df6-a2e1-5a195bd69665,Status=1,Remark=', '2021-02-24 15:01:27', '1');
INSERT INTO `tb_sys_log` VALUES ('179', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 15:01:31', '16');
INSERT INTO `tb_sys_log` VALUES ('180', 'guest', 'guest', '192.168.80.1', 'OPLog', '角色管理', '新增', '1', 'Name_Before=,Name=guest-test,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2', '2021-02-24 15:02:01', '16');
INSERT INTO `tb_sys_log` VALUES ('181', 'guest', 'guest', '192.168.80.1', 'OPLog', '用户管理', '新增', '1', 'Name_Before=,PassWord_Before=,RoleID_Before=,Name=guest1,Alias=guest1,PassWord=E10ADC3949BA59ABBE56E057F20F883E,RoleID=909586e5-eb66-4ddc-81c9-3dc2e399b783,Status=1,Remark=', '2021-02-24 15:02:27', '16');
INSERT INTO `tb_sys_log` VALUES ('182', 'guest', 'guest', '192.168.80.1', 'OPLog', '角色管理', '删除', '1', 'keyValue=909586e5-eb66-4ddc-81c9-3dc2e399b783,primary=guest-test', '2021-02-24 15:02:38', '16');
INSERT INTO `tb_sys_log` VALUES ('183', 'guest', 'guest', '192.168.80.1', 'OPLog', '角色管理', '新增', '1', 'Name_Before=,Name=guest1,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2', '2021-02-24 15:02:47', '16');
INSERT INTO `tb_sys_log` VALUES ('184', 'guest1', 'guest1', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 15:02:54', '17');
INSERT INTO `tb_sys_log` VALUES ('185', 'guest1', 'guest1', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 15:03:03', '17');
INSERT INTO `tb_sys_log` VALUES ('186', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 15:03:10', '16');
INSERT INTO `tb_sys_log` VALUES ('187', 'guest', 'guest', '192.168.80.1', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest1,Name=guest1,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2', '2021-02-24 15:03:22', '16');
INSERT INTO `tb_sys_log` VALUES ('188', 'guest', 'guest', '192.168.80.1', 'OPLog', '用户管理', '修改', '1', 'Name_Before=guest1,PassWord_Before=E10ADC3949BA59ABBE56E057F20F883E,RoleID_Before=909586e5-eb66-4ddc-81c9-3dc2e399b783,Name=guest1,Alias=guest,PassWord=E10ADC3949BA59ABBE56E057F20F883E,RoleID=6de787b6-e9d0-44ec-9f8c-c9c2c24253fe,Status=1,Remark=', '2021-02-24 15:03:32', '16');
INSERT INTO `tb_sys_log` VALUES ('189', 'guest1', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 15:03:46', '17');
INSERT INTO `tb_sys_log` VALUES ('190', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-02-24 15:03:56', '1');
INSERT INTO `tb_sys_log` VALUES ('191', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 16:49:22', '1');
INSERT INTO `tb_sys_log` VALUES ('192', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 17:14:57', '1');
INSERT INTO `tb_sys_log` VALUES ('193', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=试试', '2021-05-31 17:17:14', '1');
INSERT INTO `tb_sys_log` VALUES ('194', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 17:41:28', '1');
INSERT INTO `tb_sys_log` VALUES ('195', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 17:50:53', '1');
INSERT INTO `tb_sys_log` VALUES ('196', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备组管理', '修改', '1', 'Name_Before=11,Name=123,Status=1,Remark=试试', '2021-05-31 17:51:21', '1');
INSERT INTO `tb_sys_log` VALUES ('197', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 18:12:10', '1');
INSERT INTO `tb_sys_log` VALUES ('198', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备组管理', '修改', '1', 'Name_Before=123,Name=123,Status=1,Remark=试试111', '2021-05-31 18:12:24', '1');
INSERT INTO `tb_sys_log` VALUES ('199', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 18:16:42', '1');
INSERT INTO `tb_sys_log` VALUES ('200', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备组管理', '修改', '1', 'Name_Before=123,Name=123,Status=1,Remark=试试111顶顶顶顶', '2021-05-31 18:17:14', '1');
INSERT INTO `tb_sys_log` VALUES ('201', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备组管理', '删除', '1', 'keyValue=bc4cdde9-1fc2-4bbb-b791-eb577212c043,primary=123', '2021-05-31 18:17:21', '1');
INSERT INTO `tb_sys_log` VALUES ('202', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 18:53:49', '1');
INSERT INTO `tb_sys_log` VALUES ('203', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备管理', '新增', '0', 'Name_Before=,Name=1112,Status=1,Remark=111', '2021-05-31 18:54:02', '1');
INSERT INTO `tb_sys_log` VALUES ('204', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 19:02:09', '1');
INSERT INTO `tb_sys_log` VALUES ('205', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=111,Status=1,Remark=11', '2021-05-31 19:02:22', '1');
INSERT INTO `tb_sys_log` VALUES ('206', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备管理', '修改', '1', 'Name_Before=111,Name=111,Status=1,Remark=112', '2021-05-31 19:02:28', '1');
INSERT INTO `tb_sys_log` VALUES ('207', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=11', '2021-05-31 19:02:37', '1');
INSERT INTO `tb_sys_log` VALUES ('208', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 19:09:51', '1');
INSERT INTO `tb_sys_log` VALUES ('209', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=1122,Status=1,Remark=111', '2021-05-31 19:10:26', '1');
INSERT INTO `tb_sys_log` VALUES ('210', 'admin', '超级管理员', '172.16.1.77', 'OPLog', '设备管理', '修改', '1', 'Name_Before=111,Name=111,Status=1,Remark=112跌到底', '2021-05-31 19:10:43', '1');
INSERT INTO `tb_sys_log` VALUES ('211', 'admin', '超级管理员', '172.16.1.77', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-05-31 19:18:39', '1');
INSERT INTO `tb_sys_log` VALUES ('212', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 08:15:17', '1');
INSERT INTO `tb_sys_log` VALUES ('213', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '点位管理', '新增', '0', 'Name_Before=,Name=222,Status=1,Remark=222', '2021-06-01 08:15:53', '1');
INSERT INTO `tb_sys_log` VALUES ('214', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 08:16:38', '1');
INSERT INTO `tb_sys_log` VALUES ('215', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=112', '2021-06-01 08:16:55', '1');
INSERT INTO `tb_sys_log` VALUES ('216', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=122,Status=1,Remark=1111', '2021-06-01 08:18:42', '1');
INSERT INTO `tb_sys_log` VALUES ('217', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 08:21:33', '1');
INSERT INTO `tb_sys_log` VALUES ('218', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '设备管理', '删除', '1', 'keyValue=a14d33a6-1757-4932-85b5-2dfc9cf451d1,primary=111', '2021-06-01 08:22:10', '1');
INSERT INTO `tb_sys_log` VALUES ('219', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 09:14:19', '1');
INSERT INTO `tb_sys_log` VALUES ('220', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=1#水泵,Status=1,Remark=11', '2021-06-01 09:14:45', '1');
INSERT INTO `tb_sys_log` VALUES ('221', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=水泵组,Status=1,Remark=1', '2021-06-01 09:14:57', '1');
INSERT INTO `tb_sys_log` VALUES ('222', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 09:47:37', '1');
INSERT INTO `tb_sys_log` VALUES ('223', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 09:50:09', '1');
INSERT INTO `tb_sys_log` VALUES ('224', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 09:50:38', '1');
INSERT INTO `tb_sys_log` VALUES ('225', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=2#水泵,Status=1,Remark=', '2021-06-01 09:50:55', '1');
INSERT INTO `tb_sys_log` VALUES ('226', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=3#水泵,Status=1,Remark=', '2021-06-01 09:51:03', '1');
INSERT INTO `tb_sys_log` VALUES ('227', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '设备组成员管理', '修改', '1', 'equipIDs=9557708b-48a6-4874-a30d-c5a864c6f19f', '2021-06-01 09:52:58', '1');
INSERT INTO `tb_sys_log` VALUES ('228', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '设备组成员管理', '修改', '1', 'equipIDs=9557708b-48a6-4874-a30d-c5a864c6f19f,equipIDs=8ed577df-b112-4aea-9435-b5f24895a2a5', '2021-06-01 09:53:12', '1');
INSERT INTO `tb_sys_log` VALUES ('229', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '设备组成员管理', '修改', '1', 'equipIDs=8ed577df-b112-4aea-9435-b5f24895a2a5,equipIDs=9557708b-48a6-4874-a30d-c5a864c6f19f,equipIDs=f1fe7a38-0068-4819-954f-81396005fe46', '2021-06-01 09:53:23', '1');
INSERT INTO `tb_sys_log` VALUES ('230', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=闸门状态,Status=1,Remark=', '2021-06-01 09:54:36', '1');
INSERT INTO `tb_sys_log` VALUES ('231', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=2#闸门状态,Status=1,Remark=', '2021-06-01 09:55:21', '1');
INSERT INTO `tb_sys_log` VALUES ('232', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '点位管理', '修改', '1', 'Name_Before=闸门状态,Name=1#闸门状态,Status=1,Remark=', '2021-06-01 09:55:28', '1');
INSERT INTO `tb_sys_log` VALUES ('233', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=1,Status=1,Remark=11', '2021-06-01 09:55:32', '1');
INSERT INTO `tb_sys_log` VALUES ('234', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=22,Status=1,Remark=22', '2021-06-01 09:55:35', '1');
INSERT INTO `tb_sys_log` VALUES ('235', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '点位管理', '删除', '1', 'keyValue=46867417-a671-4d31-9934-80d7ca80ac10,keyValue=3d71aa09-c55c-4aeb-a9a9-27c2d99bba6c,primary=1,primary=22', '2021-06-01 09:55:39', '1');
INSERT INTO `tb_sys_log` VALUES ('236', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=3#闸门状态,Status=1,Remark=', '2021-06-01 09:55:51', '1');
INSERT INTO `tb_sys_log` VALUES ('237', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 10:06:00', '1');
INSERT INTO `tb_sys_log` VALUES ('238', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 10:06:20', '1');
INSERT INTO `tb_sys_log` VALUES ('239', 'admin', '超级管理员', '172.16.1.253', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,B214,M22,B221,B222,B223,B224,B225,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2,2,1,2,2,2,2,2', '2021-06-01 10:07:22', '1');
INSERT INTO `tb_sys_log` VALUES ('240', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 10:07:26', '1');
INSERT INTO `tb_sys_log` VALUES ('241', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 10:34:20', '1');
INSERT INTO `tb_sys_log` VALUES ('242', 'admin', '超级管理员', '172.16.1.253', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 11:06:10', '1');
INSERT INTO `tb_sys_log` VALUES ('243', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 14:07:34', '1');
INSERT INTO `tb_sys_log` VALUES ('244', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 14:12:46', '1');
INSERT INTO `tb_sys_log` VALUES ('245', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 14:18:59', '1');
INSERT INTO `tb_sys_log` VALUES ('246', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 14:38:34', '1');
INSERT INTO `tb_sys_log` VALUES ('247', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:22:03', '1');
INSERT INTO `tb_sys_log` VALUES ('248', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备组管理', '删除', '1', 'keyValue=67e9c56e-2297-485f-b411-4d98b54e88a1,primary=11', '2021-06-01 16:22:51', '1');
INSERT INTO `tb_sys_log` VALUES ('249', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备组管理', '删除', '1', 'keyValue=e74df2c2-3c0c-413b-a326-07ac53f18d9d,primary=水泵组', '2021-06-01 16:22:54', '1');
INSERT INTO `tb_sys_log` VALUES ('250', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=11', '2021-06-01 16:24:09', '1');
INSERT INTO `tb_sys_log` VALUES ('251', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备组管理', '删除', '1', 'keyValue=8558ce4e-113b-4000-a801-66dbd5dd646a,primary=11', '2021-06-01 16:28:44', '1');
INSERT INTO `tb_sys_log` VALUES ('252', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=11', '2021-06-01 16:29:18', '1');
INSERT INTO `tb_sys_log` VALUES ('253', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=11', '2021-06-01 16:29:26', '1');
INSERT INTO `tb_sys_log` VALUES ('254', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:29:36', '1');
INSERT INTO `tb_sys_log` VALUES ('255', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,B214,M22,B221,B222,B223,B224,B225,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2,2,1,2,2,2,2,2', '2021-06-01 16:29:50', '1');
INSERT INTO `tb_sys_log` VALUES ('256', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:29:54', '1');
INSERT INTO `tb_sys_log` VALUES ('257', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:30:22', '1');
INSERT INTO `tb_sys_log` VALUES ('258', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:32:26', '1');
INSERT INTO `tb_sys_log` VALUES ('259', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:35:10', '1');
INSERT INTO `tb_sys_log` VALUES ('260', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:37:56', '1');
INSERT INTO `tb_sys_log` VALUES ('261', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:42:32', '1');
INSERT INTO `tb_sys_log` VALUES ('262', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:42:53', '1');
INSERT INTO `tb_sys_log` VALUES ('263', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 16:46:18', '1');
INSERT INTO `tb_sys_log` VALUES ('264', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备组成员管理', '修改', '1', 'equipIDs=1efc3e43-004a-4cea-8b39-e5258f93eb54', '2021-06-01 16:46:45', '1');
INSERT INTO `tb_sys_log` VALUES ('265', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 17:03:30', '1');
INSERT INTO `tb_sys_log` VALUES ('266', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '用户管理', '删除', '1', 'keyValue=115d48b1-e02a-45cf-be79-0ae288249345,primary=guest1', '2021-06-01 17:03:40', '1');
INSERT INTO `tb_sys_log` VALUES ('267', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '角色管理', '删除', '1', 'keyValue=6de787b6-e9d0-44ec-9f8c-c9c2c24253fe,primary=guest1', '2021-06-01 17:03:46', '1');
INSERT INTO `tb_sys_log` VALUES ('268', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2', '2021-06-01 17:04:00', '1');
INSERT INTO `tb_sys_log` VALUES ('269', 'guest', 'guest', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 17:04:08', '16');
INSERT INTO `tb_sys_log` VALUES ('270', 'guest', 'guest', '172.16.3.179', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=龙湖1#泵组,Status=1,Remark=', '2021-06-01 17:04:30', '16');
INSERT INTO `tb_sys_log` VALUES ('271', 'guest', 'guest', '172.16.3.179', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=龙湖1#泵,Status=1,Remark=', '2021-06-01 17:04:46', '16');
INSERT INTO `tb_sys_log` VALUES ('272', 'guest', 'guest', '172.16.3.179', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=龙湖2#泵,Status=1,Remark=', '2021-06-01 17:05:01', '16');
INSERT INTO `tb_sys_log` VALUES ('273', 'guest', 'guest', '172.16.3.179', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=龙湖3#泵,Status=1,Remark=', '2021-06-01 17:05:14', '16');
INSERT INTO `tb_sys_log` VALUES ('274', 'guest', 'guest', '172.16.3.179', 'OPLog', '设备组管理', '修改', '1', 'Name_Before=龙湖1#泵组,Name=龙湖泵组,Status=1,Remark=', '2021-06-01 17:05:29', '16');
INSERT INTO `tb_sys_log` VALUES ('275', 'guest', 'guest', '172.16.3.179', 'OPLog', '设备组成员管理', '修改', '1', 'equipIDs=30fe019f-4c55-40c8-96fc-3c977f381614,equipIDs=01859789-08a1-4131-9995-e0554b57640d', '2021-06-01 17:05:39', '16');
INSERT INTO `tb_sys_log` VALUES ('276', 'guest', 'guest', '172.16.3.179', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=1号泵状态,Status=1,Remark=', '2021-06-01 17:07:17', '16');
INSERT INTO `tb_sys_log` VALUES ('277', 'admin', '超级管理员', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 17:15:47', '1');
INSERT INTO `tb_sys_log` VALUES ('278', 'admin', '超级管理员', '172.16.3.179', 'OPLog', '设备管理', '删除', '1', 'keyValue=1efc3e43-004a-4cea-8b39-e5258f93eb54,primary=11', '2021-06-01 17:15:57', '1');
INSERT INTO `tb_sys_log` VALUES ('279', 'guest', 'guest', '172.16.3.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 17:16:04', '16');
INSERT INTO `tb_sys_log` VALUES ('280', 'guest', 'guest', '172.16.3.179', 'OPLog', '点位管理', '修改', '1', 'Name_Before=1号泵状态,Name=龙湖1号泵状态,Status=1,Remark=', '2021-06-01 17:16:33', '16');
INSERT INTO `tb_sys_log` VALUES ('281', 'guest', 'guest', '172.16.3.179', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=龙湖1号泵选择开关,Status=1,Remark=', '2021-06-01 17:17:05', '16');
INSERT INTO `tb_sys_log` VALUES ('282', 'guest', 'guest', '172.16.3.179', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=龙湖1号泵故障状态,Status=1,Remark=', '2021-06-01 17:17:18', '16');
INSERT INTO `tb_sys_log` VALUES ('283', 'guest', 'guest', '172.16.3.179', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=龙湖2号泵状态,Status=1,Remark=', '2021-06-01 17:17:30', '16');
INSERT INTO `tb_sys_log` VALUES ('284', 'guest', null, '172.16.0.6', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-06-01 17:28:21', '0');
INSERT INTO `tb_sys_log` VALUES ('285', 'guest', null, '120.33.91.162', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-06-01 17:28:24', '0');
INSERT INTO `tb_sys_log` VALUES ('286', 'guest', null, '120.33.91.162', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-06-01 17:28:28', '0');
INSERT INTO `tb_sys_log` VALUES ('287', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 17:28:32', '16');
INSERT INTO `tb_sys_log` VALUES ('288', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 17:31:58', '16');
INSERT INTO `tb_sys_log` VALUES ('289', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 17:39:31', '16');
INSERT INTO `tb_sys_log` VALUES ('290', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 18:04:19', '1');
INSERT INTO `tb_sys_log` VALUES ('291', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 18:04:49', '1');
INSERT INTO `tb_sys_log` VALUES ('292', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '设备组管理', '删除', '1', 'keyValue=03b34c47-31c6-4e01-89ff-e60e14b65cf2,primary=11', '2021-06-01 18:05:17', '1');
INSERT INTO `tb_sys_log` VALUES ('293', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-01 18:17:35', '1');
INSERT INTO `tb_sys_log` VALUES ('294', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 08:16:06', '1');
INSERT INTO `tb_sys_log` VALUES ('295', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,permissionExt=1,1,2,2,2,1,2,2,2,1,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2', '2021-06-02 08:16:35', '1');
INSERT INTO `tb_sys_log` VALUES ('296', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 08:16:41', '1');
INSERT INTO `tb_sys_log` VALUES ('297', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 08:18:30', '1');
INSERT INTO `tb_sys_log` VALUES ('298', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2', '2021-06-02 08:19:53', '1');
INSERT INTO `tb_sys_log` VALUES ('299', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2', '2021-06-02 08:20:07', '1');
INSERT INTO `tb_sys_log` VALUES ('300', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 08:20:16', '16');
INSERT INTO `tb_sys_log` VALUES ('301', 'guest', 'guest', '172.16.2.13', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 17:33:30', '16');
INSERT INTO `tb_sys_log` VALUES ('302', 'guest', 'guest', '172.16.2.13', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 17:37:29', '16');
INSERT INTO `tb_sys_log` VALUES ('303', 'guest', 'guest', '172.16.2.13', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=龙湖1号泵状态1,CustomExpression=X*0.1,Status=1,Remark=', '2021-06-02 17:40:56', '16');
INSERT INTO `tb_sys_log` VALUES ('304', 'guest', 'guest', '172.16.2.13', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 17:49:51', '16');
INSERT INTO `tb_sys_log` VALUES ('305', 'guest', 'guest', '172.16.2.13', 'OPLog', '点位管理', '删除', '1', 'keyValue=0e8e3d87-b235-416a-954c-48c316d7dc55,primary=龙湖1号泵状态1', '2021-06-02 17:50:45', '16');
INSERT INTO `tb_sys_log` VALUES ('306', 'guest', 'guest', '172.16.2.13', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵状态,Name=龙湖1号泵状态,CustomExpression=X*0.1,Status=1,Remark=', '2021-06-02 17:50:53', '16');
INSERT INTO `tb_sys_log` VALUES ('307', 'guest', 'guest', '172.16.2.13', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵状态,Name=龙湖1号泵状态,CustomExpression=X*10,Status=1,Remark=', '2021-06-02 17:58:20', '16');
INSERT INTO `tb_sys_log` VALUES ('308', 'guest', 'guest', '172.16.2.13', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵状态,Name=龙湖1号泵状态,CustomExpression=(X+10-1) *8/2,Status=1,Remark=', '2021-06-02 18:02:51', '16');
INSERT INTO `tb_sys_log` VALUES ('309', 'guest', 'guest', '172.16.2.240', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-02 18:52:31', '16');
INSERT INTO `tb_sys_log` VALUES ('310', 'guest', 'guest', '172.16.3.63', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-03 09:59:03', '16');
INSERT INTO `tb_sys_log` VALUES ('311', 'guest', 'guest', '172.16.3.63', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-03 10:02:49', '16');
INSERT INTO `tb_sys_log` VALUES ('312', 'guest', 'guest', '172.16.3.63', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-03 10:13:19', '16');
INSERT INTO `tb_sys_log` VALUES ('313', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-03 10:24:47', '16');
INSERT INTO `tb_sys_log` VALUES ('314', 'guest', 'guest', '172.16.3.63', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-03 13:57:16', '16');
INSERT INTO `tb_sys_log` VALUES ('315', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-03 14:27:46', '16');
INSERT INTO `tb_sys_log` VALUES ('316', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵状态,Name=龙湖1号泵状态,CustomExpression=X*0.1,Status=1,Remark=', '2021-06-03 14:28:25', '16');
INSERT INTO `tb_sys_log` VALUES ('317', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵状态,Name=龙湖1号泵状态,CustomExpression=X*0.2,Status=1,Remark=', '2021-06-03 14:32:10', '16');
INSERT INTO `tb_sys_log` VALUES ('318', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵状态,Name=龙湖1号泵状态,CustomExpression=X*10,Status=1,Remark=', '2021-06-03 14:32:37', '16');
INSERT INTO `tb_sys_log` VALUES ('319', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-08 18:29:25', '16');
INSERT INTO `tb_sys_log` VALUES ('320', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 09:07:44', '16');
INSERT INTO `tb_sys_log` VALUES ('321', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=111,Status=1,Remark=11', '2021-06-09 09:08:36', '16');
INSERT INTO `tb_sys_log` VALUES ('322', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备组管理', '修改', '1', 'Name_Before=111,Name=222,Status=1,Remark=222', '2021-06-09 09:08:45', '16');
INSERT INTO `tb_sys_log` VALUES ('323', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备组管理', '删除', '1', 'keyValue=905ae10b-bd01-4d97-afde-9ac6a36493d0,primary=222', '2021-06-09 09:08:49', '16');
INSERT INTO `tb_sys_log` VALUES ('324', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=1111,Status=1,Remark=1111', '2021-06-09 09:10:22', '16');
INSERT INTO `tb_sys_log` VALUES ('325', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=111,Status=1,Remark=1111', '2021-06-09 09:10:29', '16');
INSERT INTO `tb_sys_log` VALUES ('326', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备管理', '修改', '1', 'Name_Before=111,Name=222,Status=1,Remark=2222', '2021-06-09 09:10:39', '16');
INSERT INTO `tb_sys_log` VALUES ('327', 'guest', 'guest', '192.168.80.1', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=111,CustomExpression=,Status=1,Remark=1', '2021-06-09 09:10:58', '16');
INSERT INTO `tb_sys_log` VALUES ('328', 'guest', 'guest', '192.168.80.1', 'OPLog', '点位管理', '修改', '1', 'Name_Before=111,Name=2121,CustomExpression=,Status=1,Remark=1', '2021-06-09 09:11:15', '16');
INSERT INTO `tb_sys_log` VALUES ('329', 'guest', 'guest', '192.168.80.1', 'OPLog', '点位管理', '删除', '1', 'keyValue=d9925cbb-74ce-4538-a2c5-b43c446fe95c,primary=2121', '2021-06-09 09:11:24', '16');
INSERT INTO `tb_sys_log` VALUES ('330', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备组成员管理', '修改', '1', 'equipIDs=baacdd92-c8bb-4cf3-97d6-e0898d8d927c', '2021-06-09 09:11:42', '16');
INSERT INTO `tb_sys_log` VALUES ('331', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备组管理', '删除', '1', 'keyValue=36d509ae-77a9-45a2-abc4-6cc758f1bb1e,primary=1111', '2021-06-09 09:11:53', '16');
INSERT INTO `tb_sys_log` VALUES ('332', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 09:35:32', '16');
INSERT INTO `tb_sys_log` VALUES ('333', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 13:53:39', '16');
INSERT INTO `tb_sys_log` VALUES ('334', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 13:54:01', '1');
INSERT INTO `tb_sys_log` VALUES ('335', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2', '2021-06-09 13:54:25', '1');
INSERT INTO `tb_sys_log` VALUES ('336', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2', '2021-06-09 13:54:38', '1');
INSERT INTO `tb_sys_log` VALUES ('337', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '设备类型管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=22', '2021-06-09 13:54:56', '1');
INSERT INTO `tb_sys_log` VALUES ('338', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=22,Status=1,Remark=22', '2021-06-09 13:55:11', '1');
INSERT INTO `tb_sys_log` VALUES ('339', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=333,Status=1,Remark=222', '2021-06-09 14:00:03', '1');
INSERT INTO `tb_sys_log` VALUES ('340', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 14:28:37', '1');
INSERT INTO `tb_sys_log` VALUES ('341', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '修改', '1', 'Name_Before=22,Name=泵状态,Status=1,Remark=', '2021-06-09 14:29:38', '1');
INSERT INTO `tb_sys_log` VALUES ('342', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '修改', '1', 'Name_Before=333,Name=正常,Status=1,Remark=222', '2021-06-09 14:32:28', '1');
INSERT INTO `tb_sys_log` VALUES ('343', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '修改', '1', 'Name_Before=正常,Name=正常,Status=1,Remark=222', '2021-06-09 14:33:53', '1');
INSERT INTO `tb_sys_log` VALUES ('344', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 14:47:35', '1');
INSERT INTO `tb_sys_log` VALUES ('345', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '修改', '1', 'Name_Before=正常,Name=正常1,Status=1,Remark=222', '2021-06-09 14:48:58', '1');
INSERT INTO `tb_sys_log` VALUES ('346', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=11', '2021-06-09 14:49:20', '1');
INSERT INTO `tb_sys_log` VALUES ('347', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=22,Status=1,Remark=22', '2021-06-09 14:49:46', '1');
INSERT INTO `tb_sys_log` VALUES ('348', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '删除', '1', 'keyValue=b4bd4cc3-292f-4574-b9d5-9fed9e7acf72,primary=22', '2021-06-09 14:50:06', '1');
INSERT INTO `tb_sys_log` VALUES ('349', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '采集参数管理', '删除', '1', 'keyValue=10e210b2-ded9-420e-936f-9feaea161d98,keyValue=26590b5f-9a1c-42ea-8484-9564b02f2094,primary=正常1,primary=11', '2021-06-09 14:50:21', '1');
INSERT INTO `tb_sys_log` VALUES ('350', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '设备类型管理', '新增', '1', 'Name_Before=,Name=22,Status=1,Remark=22', '2021-06-09 14:50:50', '1');
INSERT INTO `tb_sys_log` VALUES ('351', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '设备类型管理', '新增', '0', 'Name_Before=,Name=22,Status=1,Remark=33', '2021-06-09 14:51:06', '1');
INSERT INTO `tb_sys_log` VALUES ('352', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '设备类型管理', '新增', '1', 'Name_Before=,Name=221,Status=1,Remark=33', '2021-06-09 14:51:22', '1');
INSERT INTO `tb_sys_log` VALUES ('353', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '设备类型管理', '删除', '1', 'keyValue=404aa68b-9229-48c1-98d1-172edd402c43,keyValue=51dbd299-8e4f-4ea6-b48d-d57ab9ae59ba,primary=22,primary=221', '2021-06-09 14:52:04', '1');
INSERT INTO `tb_sys_log` VALUES ('354', 'admin', '超级管理员', '169.254.52.186', 'OPLog', '设备类型管理', '删除', '1', 'keyValue=a617d8be-8d6b-4d85-94ef-80ae7c5aba70,primary=11', '2021-06-09 14:52:36', '1');
INSERT INTO `tb_sys_log` VALUES ('355', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 14:52:51', '16');
INSERT INTO `tb_sys_log` VALUES ('356', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=11', '2021-06-09 14:53:23', '16');
INSERT INTO `tb_sys_log` VALUES ('357', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=11,Name=112,Status=1,Remark=11', '2021-06-09 14:53:31', '16');
INSERT INTO `tb_sys_log` VALUES ('358', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '删除', '1', 'keyValue=4cc84555-8e33-4687-86b2-8e3444e4a161,primary=112', '2021-06-09 14:53:35', '16');
INSERT INTO `tb_sys_log` VALUES ('359', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备类型管理', '新增', '1', 'Name_Before=,Name=泵,Status=1,Remark=', '2021-06-09 14:53:50', '16');
INSERT INTO `tb_sys_log` VALUES ('360', 'guest', 'guest', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=泵状态,Status=1,Remark=', '2021-06-09 14:54:25', '16');
INSERT INTO `tb_sys_log` VALUES ('361', 'guest', 'guest', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=泵控制状态,Status=1,Remark=', '2021-06-09 14:54:39', '16');
INSERT INTO `tb_sys_log` VALUES ('362', 'guest', 'guest', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=泵控制模式,Status=1,Remark=', '2021-06-09 14:54:52', '16');
INSERT INTO `tb_sys_log` VALUES ('363', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备类型管理', '新增', '1', 'Name_Before=,Name=流量计,Status=1,Remark=', '2021-06-09 14:55:33', '16');
INSERT INTO `tb_sys_log` VALUES ('364', 'guest', 'guest', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=瞬时流量,Status=1,Remark=', '2021-06-09 14:55:52', '16');
INSERT INTO `tb_sys_log` VALUES ('365', 'guest', 'guest', '169.254.52.186', 'OPLog', '采集参数管理', '新增', '1', 'Name_Before=,Name=累计流量,Status=1,Remark=', '2021-06-09 14:56:03', '16');
INSERT INTO `tb_sys_log` VALUES ('366', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 15:21:59', '16');
INSERT INTO `tb_sys_log` VALUES ('367', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 15:27:43', '16');
INSERT INTO `tb_sys_log` VALUES ('368', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 15:31:00', '16');
INSERT INTO `tb_sys_log` VALUES ('369', 'admin', '超级管理员', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 16:05:42', '1');
INSERT INTO `tb_sys_log` VALUES ('370', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 16:05:44', '16');
INSERT INTO `tb_sys_log` VALUES ('371', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖1#泵,Name=龙湖1#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 16:06:20', '16');
INSERT INTO `tb_sys_log` VALUES ('372', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 16:36:12', '16');
INSERT INTO `tb_sys_log` VALUES ('373', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖1#泵,Name=龙湖1#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 16:37:24', '16');
INSERT INTO `tb_sys_log` VALUES ('374', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖1#泵,Name=龙湖1#泵,TypeCode=f3f8c5ea-5db1-46dc-9239-e2a75f512e62,Status=1,Remark=', '2021-06-09 16:37:38', '16');
INSERT INTO `tb_sys_log` VALUES ('375', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖1#泵,Name=龙湖1#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 16:37:59', '16');
INSERT INTO `tb_sys_log` VALUES ('376', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=1,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=1', '2021-06-09 16:38:54', '16');
INSERT INTO `tb_sys_log` VALUES ('377', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=11,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=1', '2021-06-09 16:39:27', '16');
INSERT INTO `tb_sys_log` VALUES ('378', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=1,Name=1,TypeCode=f3f8c5ea-5db1-46dc-9239-e2a75f512e62,Status=1,Remark=1', '2021-06-09 16:39:40', '16');
INSERT INTO `tb_sys_log` VALUES ('379', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '删除', '1', 'keyValue=4afd51d7-1621-4639-9dfb-497bd681a396,keyValue=7352fac7-fbd9-4ee2-8266-8e90b759b51a', '2021-06-09 16:39:49', '16');
INSERT INTO `tb_sys_log` VALUES ('380', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 16:52:48', '16');
INSERT INTO `tb_sys_log` VALUES ('381', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 17:20:37', '16');
INSERT INTO `tb_sys_log` VALUES ('382', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 17:27:16', '16');
INSERT INTO `tb_sys_log` VALUES ('383', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 17:29:29', '16');
INSERT INTO `tb_sys_log` VALUES ('384', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖1#泵,Name=龙湖1#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 17:39:04', '16');
INSERT INTO `tb_sys_log` VALUES ('385', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖1#泵,Name=龙湖1#泵,TypeCode=f3f8c5ea-5db1-46dc-9239-e2a75f512e62,Status=1,Remark=', '2021-06-09 17:39:15', '16');
INSERT INTO `tb_sys_log` VALUES ('386', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖1#泵,Name=龙湖1#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 17:39:26', '16');
INSERT INTO `tb_sys_log` VALUES ('387', 'guest', 'guest', '169.254.52.186', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵状态,Name=龙湖1号泵状态,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=X*10,Status=1,Remark=', '2021-06-09 17:43:10', '16');
INSERT INTO `tb_sys_log` VALUES ('388', 'guest', 'guest', '169.254.52.186', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵选择开关,Name=龙湖1号泵选择开关,ParamCode=ba57fa08-ec5f-4340-b0dc-e2ff47374823,CustomExpression=,Status=1,Remark=', '2021-06-09 17:45:41', '16');
INSERT INTO `tb_sys_log` VALUES ('389', 'guest', 'guest', '169.254.52.186', 'OPLog', '采集参数管理', '修改', '1', 'Name_Before=泵控制状态,Name=泵选择开关,Status=1,Remark=', '2021-06-09 17:46:23', '16');
INSERT INTO `tb_sys_log` VALUES ('390', 'guest', 'guest', '169.254.52.186', 'OPLog', '采集参数管理', '修改', '1', 'Name_Before=泵控制模式,Name=泵故障状态,Status=1,Remark=', '2021-06-09 17:46:52', '16');
INSERT INTO `tb_sys_log` VALUES ('391', 'guest', 'guest', '169.254.52.186', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖1号泵故障状态,Name=龙湖1号泵故障状态,ParamCode=8081a3cd-8f8b-4772-b1d6-367a60f33ffd,CustomExpression=,Status=1,Remark=', '2021-06-09 17:47:13', '16');
INSERT INTO `tb_sys_log` VALUES ('392', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 19:18:55', '16');
INSERT INTO `tb_sys_log` VALUES ('393', 'guest', 'guest', '169.254.52.186', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-09 19:22:50', '16');
INSERT INTO `tb_sys_log` VALUES ('394', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=11,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=111', '2021-06-09 19:23:09', '16');
INSERT INTO `tb_sys_log` VALUES ('395', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=21,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 19:23:19', '16');
INSERT INTO `tb_sys_log` VALUES ('396', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备组管理', '新增', '1', 'Name_Before=,Name=11,Status=1,Remark=11', '2021-06-09 19:23:33', '16');
INSERT INTO `tb_sys_log` VALUES ('397', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备组管理', '修改', '1', 'Name_Before=11,Name=112,Status=1,Remark=11', '2021-06-09 19:23:52', '16');
INSERT INTO `tb_sys_log` VALUES ('398', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备组成员管理', '修改', '1', 'equipIDs=14b55642-c865-44c9-a2f9-c086f2ef2f0a', '2021-06-09 19:24:01', '16');
INSERT INTO `tb_sys_log` VALUES ('399', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备组管理', '删除', '1', 'keyValue=cecee4d6-5074-4be6-86ce-eb4275a78c5a,primary=112', '2021-06-09 19:24:16', '16');
INSERT INTO `tb_sys_log` VALUES ('400', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '删除', '1', 'keyValue=0eda9d87-8e4a-4428-b40f-068eaceb8851', '2021-06-09 19:24:26', '16');
INSERT INTO `tb_sys_log` VALUES ('401', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖2#泵,Name=龙湖2#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 19:24:47', '16');
INSERT INTO `tb_sys_log` VALUES ('402', 'guest', 'guest', '169.254.52.186', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖3#泵,Name=龙湖3#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-09 19:24:58', '16');
INSERT INTO `tb_sys_log` VALUES ('403', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-10 08:33:35', '16');
INSERT INTO `tb_sys_log` VALUES ('404', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备类型管理', '修改', '1', 'Name_Before=泵,Name=泵,Status=1,Remark=', '2021-06-10 08:34:37', '16');
INSERT INTO `tb_sys_log` VALUES ('405', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备类型管理', '修改', '1', 'Name_Before=泵,Name=水泵,Status=1,Remark=', '2021-06-10 08:35:03', '16');
INSERT INTO `tb_sys_log` VALUES ('406', 'guest', 'guest', '192.168.80.1', 'OPLog', '设备类型管理', '修改', '1', 'Name_Before=流量计,Name=流量计,Status=1,Remark=', '2021-06-10 08:35:09', '16');
INSERT INTO `tb_sys_log` VALUES ('407', 'guest', 'guest', '192.168.80.1', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=222,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=,Status=1,Remark=', '2021-06-10 08:39:11', '16');
INSERT INTO `tb_sys_log` VALUES ('408', 'guest', 'guest', '192.168.80.1', 'OPLog', '点位管理', '新增', '0', 'Name_Before=,Name=222,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=,Status=1,Remark=', '2021-06-10 08:39:36', '16');
INSERT INTO `tb_sys_log` VALUES ('409', 'guest', 'guest', '192.168.80.1', 'OPLog', '点位管理', '修改', '1', 'Name_Before=222,Name=222,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=,Status=1,Remark=', '2021-06-10 08:39:56', '16');
INSERT INTO `tb_sys_log` VALUES ('410', 'guest', 'guest', '192.168.80.1', 'OPLog', '点位管理', '删除', '1', 'keyValue=903fa99d-28c3-4eea-8717-2cca65b13288', '2021-06-10 08:40:11', '16');
INSERT INTO `tb_sys_log` VALUES ('411', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-10 10:22:19', '16');
INSERT INTO `tb_sys_log` VALUES ('412', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖2号泵状态,Name=龙湖2号泵状态,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=,Status=1,Remark=', '2021-06-10 10:22:37', '16');
INSERT INTO `tb_sys_log` VALUES ('413', 'guest', 'guest', '120.33.91.162', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖2#泵,Name=龙湖2#泵状态,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-10 10:23:21', '16');
INSERT INTO `tb_sys_log` VALUES ('414', 'guest', 'guest', '120.33.91.162', 'OPLog', '设备管理', '修改', '1', 'Name_Before=龙湖2#泵状态,Name=龙湖2#泵,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=', '2021-06-10 10:23:33', '16');
INSERT INTO `tb_sys_log` VALUES ('415', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '修改', '1', 'Name_Before=龙湖2号泵状态,Name=龙湖2号泵状态,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=,Status=1,Remark=', '2021-06-10 10:24:19', '16');
INSERT INTO `tb_sys_log` VALUES ('416', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=龙湖3号泵状态,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=,Status=1,Remark=', '2021-06-10 10:24:39', '16');
INSERT INTO `tb_sys_log` VALUES ('417', 'guest', 'guest', '120.33.91.162', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=龙湖1#流量计,TypeCode=f3f8c5ea-5db1-46dc-9239-e2a75f512e62,Status=1,Remark=', '2021-06-10 10:25:29', '16');
INSERT INTO `tb_sys_log` VALUES ('418', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=龙湖1#流量计瞬时流量,ParamCode=418eac81-d95b-4eeb-97d9-3226ffaf38ee,CustomExpression=,Status=1,Remark=', '2021-06-10 10:25:55', '16');
INSERT INTO `tb_sys_log` VALUES ('419', 'guest', 'guest', '120.33.91.162', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=龙湖1#流量计累计流量,ParamCode=e7f81deb-84e9-48fc-8c3b-0cfd7f61ea61,CustomExpression=,Status=1,Remark=', '2021-06-10 10:26:24', '16');
INSERT INTO `tb_sys_log` VALUES ('420', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 06:37:11', '16');
INSERT INTO `tb_sys_log` VALUES ('421', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 06:56:25', '16');
INSERT INTO `tb_sys_log` VALUES ('422', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 08:07:59', '16');
INSERT INTO `tb_sys_log` VALUES ('423', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 08:08:23', '1');
INSERT INTO `tb_sys_log` VALUES ('424', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-12 08:09:13', '1');
INSERT INTO `tb_sys_log` VALUES ('425', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-12 08:09:27', '1');
INSERT INTO `tb_sys_log` VALUES ('426', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 08:44:31', '16');
INSERT INTO `tb_sys_log` VALUES ('427', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:05:03', '16');
INSERT INTO `tb_sys_log` VALUES ('428', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:06:22', '16');
INSERT INTO `tb_sys_log` VALUES ('429', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:14:41', '16');
INSERT INTO `tb_sys_log` VALUES ('430', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:15:08', '16');
INSERT INTO `tb_sys_log` VALUES ('431', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:16:32', '16');
INSERT INTO `tb_sys_log` VALUES ('432', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:20:58', '16');
INSERT INTO `tb_sys_log` VALUES ('433', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:28:01', '16');
INSERT INTO `tb_sys_log` VALUES ('434', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 09:31:21', '16');
INSERT INTO `tb_sys_log` VALUES ('435', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 11:49:01', '16');
INSERT INTO `tb_sys_log` VALUES ('436', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 11:57:49', '16');
INSERT INTO `tb_sys_log` VALUES ('437', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 12:59:37', '16');
INSERT INTO `tb_sys_log` VALUES ('438', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 13:07:06', '16');
INSERT INTO `tb_sys_log` VALUES ('439', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 13:35:12', '16');
INSERT INTO `tb_sys_log` VALUES ('440', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 13:54:22', '16');
INSERT INTO `tb_sys_log` VALUES ('441', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 14:03:27', '16');
INSERT INTO `tb_sys_log` VALUES ('442', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 14:17:29', '16');
INSERT INTO `tb_sys_log` VALUES ('443', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 14:23:25', '16');
INSERT INTO `tb_sys_log` VALUES ('444', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 14:23:25', '16');
INSERT INTO `tb_sys_log` VALUES ('445', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 14:28:56', '16');
INSERT INTO `tb_sys_log` VALUES ('446', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 14:31:26', '16');
INSERT INTO `tb_sys_log` VALUES ('447', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-12 14:42:01', '16');
INSERT INTO `tb_sys_log` VALUES ('448', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 13:23:24', '16');
INSERT INTO `tb_sys_log` VALUES ('449', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 13:27:08', '16');
INSERT INTO `tb_sys_log` VALUES ('450', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 13:28:02', '16');
INSERT INTO `tb_sys_log` VALUES ('451', 'guest', 'guest', '175.43.95.39', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 14:03:40', '16');
INSERT INTO `tb_sys_log` VALUES ('452', 'guest', 'guest', '175.43.95.39', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 14:11:08', '16');
INSERT INTO `tb_sys_log` VALUES ('453', 'guest', 'guest', '175.43.95.39', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 14:12:57', '16');
INSERT INTO `tb_sys_log` VALUES ('454', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 14:14:57', '16');
INSERT INTO `tb_sys_log` VALUES ('455', 'guest', 'guest', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 14:16:36', '16');
INSERT INTO `tb_sys_log` VALUES ('456', 'guest', 'guest', '175.43.95.39', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 14:19:51', '16');
INSERT INTO `tb_sys_log` VALUES ('457', 'guest', 'guest', '175.43.95.39', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-13 14:34:13', '16');
INSERT INTO `tb_sys_log` VALUES ('458', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-15 09:40:05', '16');
INSERT INTO `tb_sys_log` VALUES ('459', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-15 09:40:37', '1');
INSERT INTO `tb_sys_log` VALUES ('460', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-15 10:04:02', '16');
INSERT INTO `tb_sys_log` VALUES ('461', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-15 10:19:38', '16');
INSERT INTO `tb_sys_log` VALUES ('462', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-15 10:42:46', '16');
INSERT INTO `tb_sys_log` VALUES ('463', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-15 11:15:38', '16');
INSERT INTO `tb_sys_log` VALUES ('464', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-15 11:21:49', '16');
INSERT INTO `tb_sys_log` VALUES ('465', 'guest', 'guest', '172.16.2.131', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-16 16:07:59', '16');
INSERT INTO `tb_sys_log` VALUES ('466', 'guest', 'guest', '172.16.2.131', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-16 16:11:40', '16');
INSERT INTO `tb_sys_log` VALUES ('467', 'guest', 'guest', '172.16.2.131', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-06-16 16:20:29', '16');
INSERT INTO `tb_sys_log` VALUES ('468', 'guest', 'guest', '172.16.2.131', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-16 16:20:46', '16');
INSERT INTO `tb_sys_log` VALUES ('469', 'guest', 'guest', '220.180.241.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-16 16:51:29', '16');
INSERT INTO `tb_sys_log` VALUES ('470', 'guest', 'guest', '220.180.241.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-16 16:51:29', '16');
INSERT INTO `tb_sys_log` VALUES ('471', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-16 16:57:30', '16');
INSERT INTO `tb_sys_log` VALUES ('472', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-16 17:01:30', '16');
INSERT INTO `tb_sys_log` VALUES ('473', 'guest', null, '120.33.91.162', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-06-17 16:59:42', '0');
INSERT INTO `tb_sys_log` VALUES ('474', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-17 16:59:48', '16');
INSERT INTO `tb_sys_log` VALUES ('475', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-17 17:00:17', '1');
INSERT INTO `tb_sys_log` VALUES ('476', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 09:03:08', '1');
INSERT INTO `tb_sys_log` VALUES ('477', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,B218,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-18 09:03:50', '1');
INSERT INTO `tb_sys_log` VALUES ('478', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,B218,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-18 09:04:09', '1');
INSERT INTO `tb_sys_log` VALUES ('479', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 09:07:11', '1');
INSERT INTO `tb_sys_log` VALUES ('480', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 09:16:55', '1');
INSERT INTO `tb_sys_log` VALUES ('481', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 09:52:13', '1');
INSERT INTO `tb_sys_log` VALUES ('482', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 10:43:16', '1');
INSERT INTO `tb_sys_log` VALUES ('483', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 10:48:58', '1');
INSERT INTO `tb_sys_log` VALUES ('484', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 11:41:39', '1');
INSERT INTO `tb_sys_log` VALUES ('485', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 11:44:19', '1');
INSERT INTO `tb_sys_log` VALUES ('486', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 11:56:56', '1');
INSERT INTO `tb_sys_log` VALUES ('487', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 11:56:57', '1');
INSERT INTO `tb_sys_log` VALUES ('488', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 13:00:01', '1');
INSERT INTO `tb_sys_log` VALUES ('489', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 13:04:16', '1');
INSERT INTO `tb_sys_log` VALUES ('490', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 13:04:16', '1');
INSERT INTO `tb_sys_log` VALUES ('491', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '设备管理', '删除', '1', 'keyValue=ca775f2f-4383-468a-b849-7669c1363600', '2021-06-18 13:07:19', '1');
INSERT INTO `tb_sys_log` VALUES ('492', 'admin', '超级管理员', '192.168.80.1', 'OPLog', '点位管理', '删除', '1', 'keyValue=d5246528-e779-4ddb-bdfb-2496efef0c02', '2021-06-18 13:14:15', '1');
INSERT INTO `tb_sys_log` VALUES ('493', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 14:26:02', '1');
INSERT INTO `tb_sys_log` VALUES ('494', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 14:31:18', '1');
INSERT INTO `tb_sys_log` VALUES ('496', 'admin', '超级管理员', '192.168.80.1', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 15:25:55', '1');
INSERT INTO `tb_sys_log` VALUES ('497', 'guest', 'guest', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 16:46:46', '16');
INSERT INTO `tb_sys_log` VALUES ('498', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 16:46:56', '1');
INSERT INTO `tb_sys_log` VALUES ('499', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,B218,B219,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-18 16:47:10', '1');
INSERT INTO `tb_sys_log` VALUES ('500', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,B218,B219,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-18 16:47:17', '1');
INSERT INTO `tb_sys_log` VALUES ('501', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '角色管理', '修改', '1', 'Name_Before=guest,Name=guest,Status=true,Remark=guest,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,B218,B219,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-18 16:47:24', '1');
INSERT INTO `tb_sys_log` VALUES ('502', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '角色管理', '修改', '1', 'Name_Before=超级管理员,Name=超级管理员,Status=true,Remark=,permissionIds=M10,M11,B111,B112,B113,M12,B121,B122,B123,M13,B133,B134,M20,M21,B211,B212,B213,B214,B215,B216,B217,B218,B219,M22,B221,B222,B223,B224,B225,M23,B231,B232,B233,B234,B235,B236,B237,M30,M31,permissionExt=1,1,2,2,2,1,2,2,2,1,2,2,1,1,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,1,2,2,2,2,2,2,2,1,1', '2021-06-18 16:47:31', '1');
INSERT INTO `tb_sys_log` VALUES ('503', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '设备管理', '删除', '1', 'keyValue=508f3ce1-7762-4149-9842-fc849736ffa1', '2021-06-18 16:50:02', '1');
INSERT INTO `tb_sys_log` VALUES ('504', 'admin', '超级管理员', '120.33.91.162', 'OPLog', '设备管理', '删除', '1', 'keyValue=ad1a1eb4-b64c-4bcd-b711-71af215419d4', '2021-06-18 16:50:22', '1');
INSERT INTO `tb_sys_log` VALUES ('505', 'admin', '超级管理员', '120.33.91.162', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-18 18:43:21', '1');
INSERT INTO `tb_sys_log` VALUES ('506', 'guest', 'guest', '175.43.95.39', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-19 08:21:59', '16');
INSERT INTO `tb_sys_log` VALUES ('507', 'guest', 'guest', '220.180.241.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-21 08:55:03', '16');
INSERT INTO `tb_sys_log` VALUES ('508', 'guest', 'guest', '125.82.188.218', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-21 09:52:18', '16');
INSERT INTO `tb_sys_log` VALUES ('509', '18206085031', null, '175.43.95.39', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-06-22 13:20:25', '0');
INSERT INTO `tb_sys_log` VALUES ('510', 'admin', '超级管理员', '175.43.95.39', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-22 13:20:29', '1');
INSERT INTO `tb_sys_log` VALUES ('511', 'guest', 'guest', '220.180.241.179', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-23 15:33:57', '16');
INSERT INTO `tb_sys_log` VALUES ('512', 'guest', 'guest', '113.57.175.26', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-23 15:43:32', '16');
INSERT INTO `tb_sys_log` VALUES ('513', 'guest', 'guest', '218.4.182.157', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-24 09:20:31', '16');
INSERT INTO `tb_sys_log` VALUES ('514', 'guest', 'guest', '110.88.208.65', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-06-28 08:51:22', '16');
INSERT INTO `tb_sys_log` VALUES ('515', 'guest', 'guest', '120.231.188.36', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-07-15 20:41:12', '16');
INSERT INTO `tb_sys_log` VALUES ('516', 'guest', 'guest', '110.88.208.65', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-07-20 17:24:41', '16');
INSERT INTO `tb_sys_log` VALUES ('517', 'guest', 'guest', '174.137.51.115', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-07-20 17:27:32', '16');
INSERT INTO `tb_sys_log` VALUES ('518', 'guest', 'guest', '174.137.51.115', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-07-20 17:27:32', '16');
INSERT INTO `tb_sys_log` VALUES ('519', 'guest', 'guest', '174.137.51.115', 'OPLog', '角色管理', '新增', '1', 'Name_Before=,Name=as,Status=true,Remark=asd,permissionIds=M10,M11,B111,permissionExt=1,1,2', '2021-07-20 17:33:23', '16');
INSERT INTO `tb_sys_log` VALUES ('520', 'guest', 'guest', '174.137.51.115', 'OPLog', '角色管理', '删除', '1', 'keyValue=243bdb3e-3573-4431-8f1c-dab7b5c73f75,primary=as', '2021-07-20 17:33:31', '16');
INSERT INTO `tb_sys_log` VALUES ('521', 'guest', 'guest', '112.17.138.167', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-07-28 15:07:05', '16');
INSERT INTO `tb_sys_log` VALUES ('522', '18206085031', null, '59.56.209.161', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-08-06 16:50:41', '0');
INSERT INTO `tb_sys_log` VALUES ('523', '18206085031', null, '59.56.209.161', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-08-06 16:50:47', '0');
INSERT INTO `tb_sys_log` VALUES ('524', 'admin', '超级管理员', '59.56.209.161', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-08-06 16:50:52', '1');
INSERT INTO `tb_sys_log` VALUES ('525', 'guest', null, '110.84.114.88', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-08-10 10:19:00', '0');
INSERT INTO `tb_sys_log` VALUES ('526', 'admin', '超级管理员', '110.84.114.88', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-08-10 10:19:06', '1');
INSERT INTO `tb_sys_log` VALUES ('527', 'admin', '超级管理员', '110.84.114.88', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=11,TypeCode=fcbb93f9-f7db-4de3-9bcc-c301a22fc0ec,Status=1,Remark=1', '2021-08-10 10:30:41', '1');
INSERT INTO `tb_sys_log` VALUES ('528', 'admin', '超级管理员', '110.84.114.88', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=11,ParamCode=7dc8c143-8663-41c2-ba37-042bbe87f305,CustomExpression=1,Status=1,Remark=', '2021-08-10 10:31:08', '1');
INSERT INTO `tb_sys_log` VALUES ('529', 'admin', '超级管理员', '110.84.114.88', 'OPLog', '设备管理', '新增', '1', 'Name_Before=,Name=222,TypeCode=f3f8c5ea-5db1-46dc-9239-e2a75f512e62,Status=1,Remark=', '2021-08-10 10:32:21', '1');
INSERT INTO `tb_sys_log` VALUES ('530', 'admin', '超级管理员', '110.84.114.88', 'OPLog', '点位管理', '新增', '1', 'Name_Before=,Name=22,ParamCode=418eac81-d95b-4eeb-97d9-3226ffaf38ee,CustomExpression=1,Status=1,Remark=', '2021-08-10 10:32:32', '1');
INSERT INTO `tb_sys_log` VALUES ('531', 'guest', null, '110.84.115.77', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-08-16 16:21:07', '0');
INSERT INTO `tb_sys_log` VALUES ('532', 'guest', null, '110.84.115.77', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-08-16 16:21:07', '0');
INSERT INTO `tb_sys_log` VALUES ('533', 'guest', null, '110.84.115.77', 'LoginLog', '系统登录', '登录', '0', '用户登录', '2021-08-16 16:21:10', '0');
INSERT INTO `tb_sys_log` VALUES ('534', 'guest', 'guest', '183.200.88.79', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-08-23 18:30:12', '16');
INSERT INTO `tb_sys_log` VALUES ('535', 'guest', 'guest', '183.200.88.79', 'LoginLog', '系统登录', '登录', '1', '用户登录', '2021-08-23 18:30:12', '16');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(64) DEFAULT NULL,
  `Name` varchar(16) NOT NULL,
  `Alias` varchar(16) DEFAULT '' COMMENT '别名',
  `PassWord` varchar(128) DEFAULT '' COMMENT '密码',
  `Status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `Remark` varchar(512) DEFAULT '' COMMENT '备注',
  `CreateUser` int(64) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '9d0490ee-52e3-40ad-a666-4d84c45092da', 'admin', '超级管理员', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '系统自带账号，不能删除', '1');
INSERT INTO `tb_user` VALUES ('16', 'a88d80c7-c22a-441b-86ff-617069fdbe17', 'guest', 'guest', 'E10ADC3949BA59ABBE56E057F20F883E', '1', null, '1');

-- ----------------------------
-- Table structure for tb_user_u_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_u_role`;
CREATE TABLE `tb_user_u_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(64) NOT NULL COMMENT '用户',
  `RoleID` varchar(64) NOT NULL COMMENT '角色',
  `Remark` varchar(512) DEFAULT '' COMMENT '备注',
  `CreateUser` bigint(64) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='人员角色';

-- ----------------------------
-- Records of tb_user_u_role
-- ----------------------------
INSERT INTO `tb_user_u_role` VALUES ('1', '9d0490ee-52e3-40ad-a666-4d84c45092da', '89e4d50b-348f-4a3b-8b54-70b569b8e07e', null, '1');
INSERT INTO `tb_user_u_role` VALUES ('19', 'a88d80c7-c22a-441b-86ff-617069fdbe17', 'c50228a5-5cf9-4df6-a2e1-5a195bd69665', null, '1');
