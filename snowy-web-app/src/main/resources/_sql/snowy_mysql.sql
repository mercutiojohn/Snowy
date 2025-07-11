SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for AUTH_THIRD_USER
-- ----------------------------
DROP TABLE IF EXISTS `AUTH_THIRD_USER`;
CREATE TABLE `AUTH_THIRD_USER`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `THIRD_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '三方用户id',
  `USER_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统用户id',
  `AVATAR` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '头像',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `NICKNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `GENDER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '三方用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of AUTH_THIRD_USER
-- ----------------------------

-- ----------------------------
-- Table structure for BIZ_NOTICE
-- ----------------------------
DROP TABLE IF EXISTS `BIZ_NOTICE`;
CREATE TABLE `BIZ_NOTICE`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `TITLE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `IMAGE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面图',
  `CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `DIGEST` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '摘要',
  `TYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `PLACE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发布位置',
  `STATUS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序',
  `REMARK` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of BIZ_NOTICE
-- ----------------------------

-- ----------------------------
-- Table structure for CLIENT_RELATION
-- ----------------------------
DROP TABLE IF EXISTS `CLIENT_RELATION`;
CREATE TABLE `CLIENT_RELATION`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `OBJECT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对象ID',
  `TARGET_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标ID',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CLIENT_RELATION
-- ----------------------------

-- ----------------------------
-- Table structure for CLIENT_USER
-- ----------------------------
DROP TABLE IF EXISTS `CLIENT_USER`;
CREATE TABLE `CLIENT_USER`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AVATAR` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '头像',
  `SIGNATURE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '签名',
  `ACCOUNT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账号',
  `PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `NICKNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `GENDER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `AGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `BIRTHDAY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `NATION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '民族',
  `NATIVE_PLACE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `HOME_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '家庭住址',
  `MAILING_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '通信地址',
  `ID_CARD_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件类型',
  `ID_CARD_NUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `CULTURE_LEVEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文化程度',
  `POLITICAL_OUTLOOK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `COLLEGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `EDUCATION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学历',
  `EDU_LENGTH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学制',
  `DEGREE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学位',
  `PHONE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `EMAIL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `HOME_TEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭电话',
  `OFFICE_TEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '办公电话',
  `EMERGENCY_CONTACT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '紧急联系人',
  `EMERGENCY_PHONE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '紧急联系人电话',
  `EMERGENCY_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '紧急联系人地址',
  `LAST_LOGIN_IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录ip',
  `LAST_LOGIN_ADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录地点',
  `LAST_LOGIN_TIME` datetime NULL DEFAULT NULL COMMENT '上次登录时间',
  `LAST_LOGIN_DEVICE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '上次登录设备',
  `LATEST_LOGIN_IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最新登录ip',
  `LATEST_LOGIN_ADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最新登录地点',
  `LATEST_LOGIN_TIME` datetime NULL DEFAULT NULL COMMENT '最新登录时间',
  `LATEST_LOGIN_DEVICE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '最新登录设备',
  `USER_STATUS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户状态',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'C端用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CLIENT_USER
-- ----------------------------

-- ----------------------------
-- Table structure for CLIENT_USER_EXT
-- ----------------------------
DROP TABLE IF EXISTS `CLIENT_USER_EXT`;
CREATE TABLE `CLIENT_USER_EXT`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `USER_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `SOURCE_FROM_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '来源类别',
  `PASSWORD_UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '密码修改日期',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'C端用户扩展' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CLIENT_USER_EXT
-- ----------------------------

-- ----------------------------
-- Table structure for CLIENT_USER_PASSWORD
-- ----------------------------
DROP TABLE IF EXISTS `CLIENT_USER_PASSWORD`;
CREATE TABLE `CLIENT_USER_PASSWORD`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `USER_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'C端用户密码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CLIENT_USER_PASSWORD
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_CONFIG
-- ----------------------------
DROP TABLE IF EXISTS `DEV_CONFIG`;
CREATE TABLE `DEV_CONFIG`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CONFIG_KEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置键',
  `CONFIG_VALUE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '配置值',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `REMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_CONFIG
-- ----------------------------
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967455', 'SNOWY_SYS_LOGO', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAVCAYAAABG1c6oAAAACXBIWXMAAC4jAAAuIwF4pT92AAAE5UlEQVR42nVVfWxTVRS/b93QbcA6GF8SYGAChDjFGI1B/jBRpjLEoHEamSSIEkSY8rFu3fruve+rr+1rWTvW176yxWBgGoxGR8AEJNEgxiAxxoiiQREYCOI+GGMIrO95zisFlfjHTU/vved3fufcc36PcM5JfjFcjMGv5AnxZkJzNuHub+6cMu7RmZ8wSfLg3X/647ptg1FKqKyVPtt2ICAzkXAqQpBcIAggBGkTeS6xv6lRjU2VaIsb5F+A+cics5sMFYkSrzX058LEYdOgm4nIeIHIJI8hbiKLY/t8JR22Iyqhci4GCP0fQIG7DJChCyxUtJ//nmxznGWxPetU2kxw1Rm7XiQZxynPDPdRNVTOxBz7GyUREItgWhIsyiXBrR+jaBdUtP/xA0lnR4SMbb+hJas2aonZRZmRqyRlZysyQxcAcFyuHMy9jxgITDYo8coGNTZNFf1EBFCOgJAiMDxK0raNjF4Nvf3oqui7zyBjALQnWv2/MUUrRUD0Uamf+ACjhat3kNWyWTUtefbbzcG2uZrYBPViRFLUYi+wQGcCDNeGOxfWhQEQbAwyLjVwWpIkqCsXgqKP1IesByuTp7+SRH8B2ShFpxSYV4cmWH0nRDk4URJbiMxZ4WNtXyaQHa63jM5HarUdi/P/H098YciMCvjKLUpoijd96dzY1KVzUclPyHo5PmtscuAUsRyn0uw5zGW1nFFR0KE9no91rxE6HedNo3NhbeTDFYUd9shy4/06HVLEO0xWvTPMM0fQd7LV+0tIgRrWy62VJeal3yGVLB5Utf+0W2GBghYmFxmBjZjOw7PMnq+rzOOf+rTWOXqggQSYVAiPWThv68970Qd9x6UHTmkyE0i9Ep9Zkhw8e/Mgc7mXqnqZEmjC1Ec92XqACnBWnB7ur4u8V4vMFWghnxTyFplXBlwiaccZDzUPamoJWQ+vXOoyREDHmbRt6LyiKMUN6pY5d5unDpEOx3kh1r363uSx3fjKC9qOdFBJGe/nWin4ncsRcZyy9NAFKFcxpjxjdPJiD7HgBVNQi8zFnkYd6poaPIOXBSt7fa2eeag6cShGrOwI7s02Tx6kSrBsNAK6RGy7zBruV0PGJNIY61xwp3XtCjYsHky2+k9uCKXv96SuDQspAABWr2/Z+fQT8c9VbBvcm5QZOE316NSy1MUzOSLZkVEZ22GRxCyi6JHp88wTn+WpT073nWiMpO4rSf816EaHlNfEupY8Fd3nc9sG9ipSvccDmjGlIg2Z4R3wnW6e/YbLipfggCtc9CyNfbJpFIzWGCh+wEjeMzYDgFACZPhadGdNdXjPOndS8AFSMCl69C4vzDQGWRQ/GJYkXgyTI7gzjLoXFhtIvZ56YEHyu64GfevcMamhC5DedbLNtlcZXUuWte6tRxv3yq3Lvf5gfOb85I8fvxLaXh0B3xsaQG6KJ8xkAbaDxpoJTEz5BAsfCifDzq6M7KhZHvtoJdpuE6f7fg3AHYVTokEboa8rgSgOOfm5JUEgDDBSImmAJq5qP9aNNXw53LX0pciuWrTnbz36QbNqzJBoIK/uAmppXvFvSf8NkeU5mXebN0wbSc2W/Y2rwtsXrdDfqa6JHxDD1Edk2pzTTp4nwnLE/vsJyEl97hLUwxPgclFE3ExUSE0FFUc7ACOJ+ucCMX7bJ+Rv+yglcdlNWbUAAAAASUVORK5CYII=', 'SYS_BASE', '系统LOGO', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967456', 'SNOWY_SYS_NAME', 'Snowy', 'SYS_BASE', '系统名称', 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967457', 'SNOWY_SYS_VERSION', 'V3.0.0', 'SYS_BASE', '系统版本', 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967458', 'SNOWY_SYS_COPYRIGHT', 'Snowy ©2022 Created by 小诺开源技术', 'SYS_BASE', '系统版权', 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967459', 'SNOWY_SYS_COPYRIGHT_URL', 'https://www.xiaonuo.vip', 'SYS_BASE', '系统版权链接地址', 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967462', 'SNOWY_SYS_DEFAULT_CAPTCHA_OPEN_FLAG_FOR_B', 'B端全局验证码开关', 'SYS_BASE', 'B端全局验证码开关', 8, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967463', 'SNOWY_SYS_DEFAULT_FILE_ENGINE', 'LOCAL', 'SYS_BASE', '默认文件存储引擎', 9, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967464', 'SNOWY_SYS_DEFAULT_PASSWORD_FOR_B', '123456', 'PASSWORD_STRATEGY_FOR_B', 'B端默认用户密码', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967465', 'SNOWY_SYS_DEFAULT_DESCRRIPTION', 'Snowy是一款国内首例国产密码算法加密框架，采用Vue3.0+AntDesignVue3.0+SpringBoot2.8前后分离技术打造，技术框架与密码的结合，让前后分离‘密’不可分！', 'SYS_BASE', '系统描述', 11, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967466', 'SNOWY_SYS_DEFAULT_WORKBENCH_DATA', '{\"shortcut\":[{\"id\":\"1548901111999770526\",\"title\":\"系统首页\",\"icon\":\"home-outlined\",\"path\":\"/index\"}]}', 'SYS_BASE', '系统默认工作台数据', 12, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967558', 'SNOWY_THIRD_GITEE_CLIENT_ID', 'GiteeClientId', 'THIRD_GITEE', 'GiteeClientId', 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967559', 'SNOWY_THIRD_GITEE_CLIENT_SECRET', 'GiteeClientSecret', 'THIRD_GITEE', 'GiteeClientSecret', 14, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967560', 'SNOWY_THIRD_GITEE_REDIRECT_URL', 'http://localhost:81/callback?platform=gitee', 'THIRD_GITEE', 'Gitee重定向地址', 15, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967561', 'SNOWY_THIRD_WECHAT_CLIENT_ID', 'WechatClientId', 'THIRD_WECHAT', 'WechatClientId', 16, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967562', 'SNOWY_THIRD_WECHAT_CLIENT_SECRET', 'WechatClientSecret', 'THIRD_WECHAT', 'WechatClientSecret', 17, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967563', 'SNOWY_THIRD_WECHAT_REDIRECT_URL', 'Wechat重定向地址', 'THIRD_WECHAT', 'Wechat重定向地址', 18, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967564', 'SNOWY_FILE_LOCAL_FOLDER_FOR_WINDOWS', 'D:/defaultUploadFolder', 'FILE_LOCAL', '本地文件Windows存储位置', 19, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967565', 'SNOWY_FILE_LOCAL_FOLDER_FOR_UNIX', '/defaultUploadFolder', 'FILE_LOCAL', '本地文件Linux存储位置', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967566', 'SNOWY_FILE_TENCENT_SECRET_ID', '腾讯云文件SecretId', 'FILE_TENCENT', '腾讯云文件SecretId', 21, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967567', 'SNOWY_FILE_TENCENT_SECRET_KEY', '腾讯云文件SecretKey', 'FILE_TENCENT', '腾讯云文件SecretKey', 22, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967568', 'SNOWY_FILE_TENCENT_REGION_ID', '腾讯云文件RegionId', 'FILE_TENCENT', '腾讯云文件RegionId', 23, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967569', 'SNOWY_FILE_TENCENT_DEFAULT_BUCKET_NAME', 'defaultbucket', 'FILE_TENCENT', '腾讯云文件默认存储桶', 24, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967570', 'SNOWY_FILE_ALIYUN_ACCESS_KEY_ID', '阿里云文件AccessKeyId', 'FILE_ALIYUN', '阿里云文件AccessKeyId', 25, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967571', 'SNOWY_FILE_ALIYUN_ACCESS_KEY_SECRET', '阿里云文件AccessKeySecret', 'FILE_ALIYUN', '阿里云文件AccessKeySecret', 26, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967572', 'SNOWY_FILE_ALIYUN_END_POINT', '阿里云文件EndPoint', 'FILE_ALIYUN', '阿里云文件EndPoint', 27, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967573', 'SNOWY_FILE_ALIYUN_DEFAULT_BUCKET_NAME', 'defaultbucket', 'FILE_ALIYUN', '阿里云文件默认存储桶', 28, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967574', 'SNOWY_FILE_MINIO_ACCESS_KEY', 'MINIO文件AccessKey', 'FILE_MINIO', 'MINIO文件AccessKey', 29, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967575', 'SNOWY_FILE_MINIO_SECRET_KEY', 'MINIO文件SecetKey', 'FILE_MINIO', 'MINIO文件SecetKey', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967576', 'SNOWY_FILE_MINIO_END_POINT', 'MINIO文件EndPoint', 'FILE_MINIO', 'MINIO文件EndPoint', 31, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967577', 'SNOWY_FILE_MINIO_DEFAULT_BUCKET_NAME', 'defaultbucket', 'FILE_MINIO', 'MINIO文件默认存储桶', 32, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967578', 'SNOWY_EMAIL_LOCAL_FROM', '本地邮件发件账号', 'EMAIL_LOCAL', '本地邮件发件账号', 33, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967579', 'SNOWY_EMAIL_LOCAL_PASSWORD', '本地邮件发件密码', 'EMAIL_LOCAL', '本地邮件发件密码', 34, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967580', 'SNOWY_EMAIL_TENCENT_SECRET_ID', '腾讯云邮件SecretId', 'EMAIL_TENCENT', '腾讯云邮件SecretId', 35, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967581', 'SNOWY_EMAIL_TENCENT_SECRET_KEY', '腾讯云邮件SecretKey', 'EMAIL_TENCENT', '腾讯云邮件SecretKey', 36, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967582', 'SNOWY_EMAIL_TENCENT_FROM', '默认发送账号', 'EMAIL_TENCENT', '默认发送账号', 37, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967583', 'SNOWY_EMAIL_ALIYUN_ACCESS_KEY_ID', '阿里云邮件AccessKeyId', 'EMAIL_ALIYUN', '阿里云邮件AccessKeyId', 38, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967584', 'SNOWY_EMAIL_ALIYUN_ACCESS_KEY_SECRET', '阿里云邮件AccessKeySecret', 'EMAIL_ALIYUN', '阿里云邮件AccessKeySecret', 39, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967585', 'SNOWY_EMAIL_ALIYUN_FROM', '默认发送账号', 'EMAIL_ALIYUN', '默认发送账号', 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967586', 'SNOWY_SMS_TENCENT_SECRET_ID', '腾讯云短信SecretId', 'SMS_TENCENT', '腾讯云短信SecretId', 41, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967587', 'SNOWY_SMS_TENCENT_SECRET_KEY', '腾讯云短信SecretKey', 'SMS_TENCENT', '腾讯云短信SecretKey', 42, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967589', 'SNOWY_SMS_TENCENT_DEFAULT_SDK_APP_ID', '腾讯云短信默认SdkAppId', 'SMS_TENCENT', '腾讯云短信默认SdkAppId', 44, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967590', 'SNOWY_SMS_TENCENT_DEFAULT_SIGN_NAME', '腾讯云短信默认签名', 'SMS_TENCENT', '腾讯云短信默认签名', 45, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967591', 'SNOWY_SMS_ALIYUN_ACCESS_KEY_ID', '阿里云短信AccessKeyId', 'SMS_ALIYUN', '阿里云短信AccessKeyId', 46, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967592', 'SNOWY_SMS_ALIYUN_ACCESS_KEY_SECRET', '阿里云短信AccessKeySecret', 'SMS_ALIYUN', '阿里云短信AccessKeySecret', 47, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967594', 'SNOWY_SMS_ALIYUN_DEFAULT_SIGN_NAME', '阿里云短信默认签名', 'SMS_ALIYUN', '阿里云短信默认签名', 49, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967595', 'SNOWY_SMS_XIAONUO_ACCESS_KEY_ID', '小诺短信账号Id', 'SMS_XIAONUO', '小诺短信账号Id', 50, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967596', 'SNOWY_SMS_XIAONUO_ACCESS_KEY_SECRET', '小诺短信账号Secret', 'SMS_XIAONUO', '小诺短信账号', 51, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967597', 'SNOWY_SMS_XIAONUO_REQUEST_URL', '小诺短信服务URL', 'SMS_XIAONUO', '小诺短信服务URL', 52, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362967598', 'SNOWY_SMS_XIAONUO_DEFAULT_SIGN_NAME', '小诺短信签名', 'SMS_XIAONUO', '小诺短信签名', 53, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362968000', 'SNOWY_EMAIL_LOCAL_SMTP_HOST', 'smtp.qq.com', 'EMAIL_LOCAL', '本地邮件SMTP服务器域名', 80, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362968001', 'SNOWY_EMAIL_LOCAL_SMTP_PORT', '465', 'EMAIL_LOCAL', '本地邮件SMTP服务端口', 81, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362968002', 'SNOWY_EMAIL_LOCAL_AUTH', 'true', 'EMAIL_LOCAL', '本地邮件是否需要用户名密码验证', 82, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362968003', 'SNOWY_EMAIL_LOCAL_SSL_ENABLE', 'true', 'EMAIL_LOCAL', '本地邮件是否使用SSL安全连接', 83, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1554740179362968004', 'SNOWY_EMAIL_LOCAL_STARTTLS_ENABLE', 'true', 'EMAIL_LOCAL', '本地邮件是否使用STARTTLS安全连接', 84, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755202', 'SNOWY_SYS_DEFAULT_PUSH_ENGINE', 'DINGTALK', 'SYS_BASE', '默认消息推送引擎', 85, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755203', 'SNOWY_SYS_DEFAULT_SMS_ENGINE', 'XIAONUO', 'SYS_BASE', '默认短信发送引擎', 86, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755204', 'SNOWY_SYS_DEFAULT_EMAIL_ENGINE', 'LOCAL', 'SYS_BASE', '默认邮件发送引擎', 87, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755205', 'SNOWY_SYS_DEFAULT_CAPTCHA_OPEN_FLAG_FOR_C', 'true', 'SYS_BASE', 'C端全局验证码开关', 88, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755206', 'SNOWY_SYS_DEFAULT_CAPTCHA_EXPIRED_DURATION_FOR_B', '5', 'SYS_BASE', 'B端验证码失效时间', 89, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755207', 'SNOWY_SYS_DEFAULT_CAPTCHA_EXPIRED_DURATION_FOR_C', '5', 'SYS_BASE', 'C端验证码失效时间', 90, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755208', 'SNOWY_PUSH_DINGTALK_SIGN', '钉钉消息推送签名', 'PUSH_DINGTALK', '钉钉消息推送签名', 91, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755209', 'SNOWY_PUSH_DINGTALK_TOKEN_ID', '钉钉消息推送TOKENID', 'PUSH_DINGTALK', '钉钉消息推送TOKENID', 92, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755210', 'SNOWY_PUSH_FEISHU_TOKEN_ID', '飞书消息推送TOKENID', 'PUSH_FEISHU', '飞书消息推送TOKENID', 93, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755211', 'SNOWY_PUSH_WORKWECHAT_TOKEN_ID', '企业微信消息推送TOKENID', 'PUSH_WORKWECHAT', '企业微信消息推送TOKENID', 94, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755212', 'SNOWY_EMAIL_TEMPLATE_NOTICE_REGISTER_SUCCESS_FOR_B', '{\"subject\":\"注册账号成功提醒\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您的账号注册成功，感谢您加入{sysName}。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端注册账号成功邮件消息模板内容', 95, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755213', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_LOGIN_FOR_B', '{\"subject\":\"登录系统验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在登录系统, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端登录系统验证码邮件消息模板内容', 96, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755214', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_UPDATE_PASSWORD_FOR_B', '{\"subject\":\"修改密码验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在修改密码, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端修改密码验证码邮件消息模板内容', 97, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755215', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_RESET_PASSWORD_FOR_B', '{\"subject\":\"重置密码验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在重置密码, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端重置密码验证码邮件消息模板内容', 98, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755216', 'SNOWY_EMAIL_TEMPLATE_NOTICE_PASSWORD_RESET_SUCCESS_FOR_B', '{\"subject\":\"重置密码成功提醒\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您的密码已经重置，重置后的密码为：<font style=\\\"color: #1677FF\\\">{userNewPassword}</font>，如非本人操作请立即修账户密码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端重置密码成功邮件消息模板内容', 99, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755217', 'SNOWY_EMAIL_TEMPLATE_NOTICE_PASSWORD_EXPIRED_FOR_B', '{\"subject\":\"密码即将到期提醒\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您的密码即将过期，请尽快修改密码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端密码即将到期邮件消息模板内容', 100, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755218', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_BINDING_EMAIL_FOR_B', '{\"subject\":\"绑定邮箱验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在绑定邮箱, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端绑定邮箱验证码邮件消息模板内容', 101, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755219', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_UPDATE_BINDING_EMAIL_FOR_B', '{\"subject\":\"修改绑定邮箱验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在修改绑定邮箱, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_B', 'B端修改绑定邮箱验证码邮件消息模板内容', 102, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755220', 'SNOWY_EMAIL_TEMPLATE_NOTICE_REGISTER_SUCCESS_FOR_C', '{\"subject\":\"注册账号成功提醒\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您的账号注册成功，感谢您加入{sysName}。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端注册账号成功邮件消息模板内容', 103, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755221', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_LOGIN_FOR_C', '{\"subject\":\"登录系统验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在登录系统, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端登录系统验证码邮件消息模板内容', 104, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755222', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_UPDATE_PASSWORD_FOR_C', '{\"subject\":\"修改密码验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在修改密码, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端修改密码验证码邮件消息模板内容', 105, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755223', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_RESET_PASSWORD_FOR_C', '{\"subject\":\"重置密码验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在重置密码, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端重置密码验证码邮件消息模板内容', 106, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755224', 'SNOWY_EMAIL_TEMPLATE_NOTICE_PASSWORD_RESET_SUCCESS_FOR_C', '{\"subject\":\"重置密码成功提醒\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您的密码已经重置，重置后的密码为：<font style=\\\"color: #1677FF\\\">{userNewPassword}</font>，如非本人操作请立即修账户密码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端重置密码成功邮件消息模板内容', 107, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755225', 'SNOWY_EMAIL_TEMPLATE_NOTICE_PASSWORD_EXPIRED_FOR_C', '{\"subject\":\"密码即将到期提醒\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您的密码即将过期，请尽快修改密码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端密码即将到期邮件消息模板内容', 108, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755226', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_BINDING_EMAIL_FOR_C', '{\"subject\":\"绑定邮箱验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在绑定邮箱, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端绑定邮箱验证码邮件消息模板内容', 109, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755227', 'SNOWY_EMAIL_TEMPLATE_VALID_CODE_UPDATE_BINDING_EMAIL_FOR_C', '{\"subject\":\"修改绑定邮箱验证码\",\"content\":\"<div style=\\\"padding: 35px;\\\">\\n    <table cellpadding=\\\"0\\\" align=\\\"center\\\"\\n           style=\\\"width: 600px; margin: 0 auto; text-align: left; position: relative; border-radius: 5px;font-size: 18px; font-family:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.5; box-shadow: rgb(153, 153, 153) 0 0 5px; border-collapse: collapse; background: #fff initial initial initial initial;\\\">\\n        <tbody>\\n        <tr>\\n            <th valign=\\\"middle\\\"\\n                style=\\\"height: 25px; line-height: 25px; padding: 15px 35px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(18, 24, 37, 0.87); background-color: #1677FF; border-radius: 5px 5px 0 0;\\\">\\n                <font size=\\\"5\\\" style=\\\"color: rgb(255, 255, 255); \\\">{sysName}</font>\\n            </th>\\n        </tr>\\n        <tr>\\n            <td>\\n                <div style=\\\"padding:25px 35px 40px; background-color:#fff;\\\">\\n                    <h2 style=\\\"margin: 5px 0; \\\">\\n                        <font color=\\\"#333333\\\" style=\\\"line-height: 20px; \\\">\\n                            <font style=\\\"line-height: 22px; \\\" size=\\\"4\\\">亲爱的用户：{userEmail}</font>\\n                        </font>\\n                    </h2>\\n                    <p>您正在修改绑定邮箱, 您的验证码为：<font style=\\\"color: #1677FF\\\">{validCode}</font>，该验证码{validTime}分钟内有效，请尽快验证并保管好验证码。</p>\\n                    <p align=\\\"right\\\">{sysName}</p>\\n                    <p align=\\\"right\\\">{sysNowTime}</p>\\n                </div>\\n            </td>\\n        </tr>\\n        </tbody>\\n    </table>\\n</div>\"}', 'EMAIL_TEMPLATE_FOR_C', 'C端修改绑定邮箱验证码邮件消息模板内容', 110, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755228', 'SNOWY_SMS_TEMPLATE_NOTICE_REGISTER_SUCCESS_FOR_B', '{\"code\":\"\",\"content\":\"您的账号注册成功，感谢您加入${sysName}。\"}', 'SMS_TEMPLATE_FOR_B', 'B端注册账号成功短信消息模板编码', 111, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755229', 'SNOWY_SMS_TEMPLATE_VALID_CODE_LOGIN_FOR_B', '{\"code\":\"\",\"content\":\"您正在登录系统, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_B', 'B端登录系统验证码短信消息模板编码', 112, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755230', 'SNOWY_SMS_TEMPLATE_VALID_CODE_UPDATE_PASSWORD_FOR_B', '{\"code\":\"\",\"content\":\"您正在修改密码, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_B', 'B端修改密码验证码短信消息模板编码', 113, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755231', 'SNOWY_SMS_TEMPLATE_VALID_CODE_RESET_PASSWORD_FOR_B', '{\"code\":\"\",\"content\":\"您正在重置密码, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_B', 'B端重置密码验证码短信消息模板编码', 114, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755232', 'SNOWY_SMS_TEMPLATE_NOTICE_PASSWORD_RESET_SUCCESS_FOR_B', '{\"code\":\"\",\"content\":\"您的密码已经重置，重置后的密码为：${userNewPassword}，如非本人操作请立即修账户密码。\"}', 'SMS_TEMPLATE_FOR_B', 'B端重置密码成功短信消息模板编码', 115, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755233', 'SNOWY_SMS_TEMPLATE_NOTICE_PASSWORD_EXPIRED_FOR_B', '{\"code\":\"\",\"content\":\"您的密码即将过期，请尽快修改密码。\"}', 'SMS_TEMPLATE_FOR_B', 'B端密码即将到期短信消息模板编码', 116, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755234', 'SNOWY_SMS_TEMPLATE_VALID_CODE_BINDING_PHONE_FOR_B', '{\"code\":\"\",\"content\":\"您正在绑定手机, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_B', 'B端绑定手机验证码短信消息模板编码', 117, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755235', 'SNOWY_SMS_TEMPLATE_VALID_CODE_UPDATE_BINDING_PHONE_FOR_B', '{\"code\":\"\",\"content\":\"您正在修改绑定手机, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_B', 'B端修改绑定手机验证码短信消息模板编码', 118, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755236', 'SNOWY_SMS_TEMPLATE_NOTICE_REGISTER_SUCCESS_FOR_C', '{\"code\":\"\",\"content\":\"您的账号注册成功，感谢您加入${sysName}。\"}', 'SMS_TEMPLATE_FOR_C', 'C端注册账号成功短信消息模板编码', 119, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755237', 'SNOWY_SMS_TEMPLATE_VALID_CODE_LOGIN_FOR_C', '{\"code\":\"\",\"content\":\"您正在登录系统, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_C', 'C端登录系统验证码短信消息模板编码', 120, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755238', 'SNOWY_SMS_TEMPLATE_VALID_CODE_UPDATE_PASSWORD_FOR_C', '{\"code\":\"\",\"content\":\"您正在修改密码, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_C', 'C端修改密码验证码短信消息模板编码', 121, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755239', 'SNOWY_SMS_TEMPLATE_VALID_CODE_RESET_PASSWORD_FOR_C', '{\"code\":\"\",\"content\":\"您正在重置密码, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_C', 'C端重置密码验证码短信消息模板编码', 122, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755240', 'SNOWY_SMS_TEMPLATE_NOTICE_PASSWORD_RESET_SUCCESS_FOR_C', '{\"code\":\"\",\"content\":\"您的密码已经重置，重置后的密码为：${userNewPassword}，如非本人操作请立即修账户密码。\"}', 'SMS_TEMPLATE_FOR_C', 'C端重置密码成功短信消息模板编码', 123, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755241', 'SNOWY_SMS_TEMPLATE_NOTICE_PASSWORD_EXPIRED_FOR_C', '{\"code\":\"\",\"content\":\"您的密码即将过期，请尽快修改密码。\"}', 'SMS_TEMPLATE_FOR_C', 'C端密码即将到期短信消息模板编码', 124, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755242', 'SNOWY_SMS_TEMPLATE_VALID_CODE_BINDING_PHONE_FOR_C', '{\"code\":\"\",\"content\":\"您正在绑定手机, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_C', 'C端绑定手机验证码短信消息模板编码', 125, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755243', 'SNOWY_SMS_TEMPLATE_VALID_CODE_UPDATE_BINDING_PHONE_FOR_C', '{\"code\":\"\",\"content\":\"您正在修改绑定手机, 您的验证码为：${validCode}，该验证码${validTime}分钟内有效，请尽快验证并保管好验证码。\"}', 'SMS_TEMPLATE_FOR_C', 'C端修改绑定手机验证码短信消息模板编码', 126, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755244', 'SNOWY_SYS_DEFAULT_CONTINUOUS_LOGIN_FAIL_DURATION_FOR_B', '5', 'LOGIN_STRATEGY_FOR_B', 'B端连续登录失败持续时间', 127, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755245', 'SNOWY_SYS_DEFAULT_CONTINUOUS_LOGIN_FAIL_TIMES_FOR_B', '5', 'LOGIN_STRATEGY_FOR_B', 'B端连续登录失败次数', 128, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755246', 'SNOWY_SYS_DEFAULT_CONTINUOUS_LOGIN_FAIL_LOCK_DURATION_FOR_B', '5', 'LOGIN_STRATEGY_FOR_B', 'B端连续登录失败锁定时间', 129, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755247', 'SNOWY_SYS_DEFAULT_ALLOW_PHONE_LOGIN_FLAG_FOR_B', 'true', 'LOGIN_STRATEGY_FOR_B', 'B端是否允许手机号登录', 130, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755248', 'SNOWY_SYS_DEFAULT_STRATEGY_WHEN_NO_USER_WITH_PHONE_FOR_B', 'NOT_ALLOW_LOGIN', 'LOGIN_STRATEGY_FOR_B', 'B端手机号无对应用户时策略', 131, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755249', 'SNOWY_SYS_DEFAULT_ALLOW_EMAIL_LOGIN_FLAG_FOR_B', 'true', 'LOGIN_STRATEGY_FOR_B', 'B端是否允许邮箱登录', 132, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755250', 'SNOWY_SYS_DEFAULT_STRATEGY_WHEN_NO_USER_WITH_EMAIL_FOR_B', 'NOT_ALLOW_LOGIN', 'LOGIN_STRATEGY_FOR_B', 'B端邮箱无对应用户时策略', 133, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755251', 'SNOWY_SYS_DEFAULT_NEW_USER_ORG_FOR_B', '1543842934270394368', 'REGISTER_STRATEGY_FOR_B', 'B端新用户默认机构', 144, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755252', 'SNOWY_SYS_DEFAULT_NEW_USER_POSITION_FOR_B', '1543899639134019583', 'REGISTER_STRATEGY_FOR_B', 'B端新用户默认职位', 145, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755253', 'SNOWY_SYS_DEFAULT_NEW_USER_ROLE_FOR_B', '1570687866138206208', 'REGISTER_STRATEGY_FOR_B', 'B端新用户默认角色', 146, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755254', 'SNOWY_SYS_DEFAULT_CONTINUOUS_LOGIN_FAIL_DURATION_FOR_C', '5', 'LOGIN_STRATEGY_FOR_C', 'C端连续登录失败持续时间', 134, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755255', 'SNOWY_SYS_DEFAULT_CONTINUOUS_LOGIN_FAIL_TIMES_FOR_C', '5', 'LOGIN_STRATEGY_FOR_C', 'C端连续登录失败次数', 135, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755256', 'SNOWY_SYS_DEFAULT_CONTINUOUS_LOGIN_FAIL_LOCK_DURATION_FOR_C', '5', 'LOGIN_STRATEGY_FOR_C', 'C端连续登录失败锁定时间', 136, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755257', 'SNOWY_SYS_DEFAULT_ALLOW_PHONE_LOGIN_FLAG_FOR_C', 'true', 'LOGIN_STRATEGY_FOR_C', 'C端是否允许手机号登录', 137, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755258', 'SNOWY_SYS_DEFAULT_STRATEGY_WHEN_NO_USER_WITH_PHONE_FOR_C', 'NOT_ALLOW_LOGIN', 'LOGIN_STRATEGY_FOR_C', 'C端手机号无对应用户时策略', 138, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755259', 'SNOWY_SYS_DEFAULT_ALLOW_EMAIL_LOGIN_FLAG_FOR_C', 'true', 'LOGIN_STRATEGY_FOR_C', 'C端是否允许邮箱登录', 139, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755260', 'SNOWY_SYS_DEFAULT_STRATEGY_WHEN_NO_USER_WITH_EMAIL_FOR_C', 'NOT_ALLOW_LOGIN', 'LOGIN_STRATEGY_FOR_C', 'C端邮箱无对应用户时策略', 140, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755261', 'SNOWY_SYS_DEFAULT_ALLOW_REGISTER_FLAG_FOR_B', 'true', 'REGISTER_STRATEGY_FOR_B', 'B端是否允许注册', 141, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755262', 'SNOWY_SYS_DEFAULT_REGISTER_NEED_BIND_PHONE_FOR_B', 'false', 'REGISTER_STRATEGY_FOR_B', 'B端注册后是否需要绑定手机号', 142, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755263', 'SNOWY_SYS_DEFAULT_REGISTER_NEED_BIND_EMAIL_FOR_B', 'false', 'REGISTER_STRATEGY_FOR_B', 'B端注册后是否需要绑定邮箱', 143, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755264', 'SNOWY_SYS_DEFAULT_ALLOW_REGISTER_FLAG_FOR_C', 'true', 'REGISTER_STRATEGY_FOR_C', 'C端是否允许注册', 147, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755265', 'SNOWY_SYS_DEFAULT_REGISTER_NEED_BIND_PHONE_FOR_C', 'false', 'REGISTER_STRATEGY_FOR_C', 'C端注册后是否需要绑定手机号', 148, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755266', 'SNOWY_SYS_DEFAULT_REGISTER_NEED_BIND_EMAIL_FOR_C', 'false', 'REGISTER_STRATEGY_FOR_C', 'C端注册后是否需要绑定邮箱', 149, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755267', 'SNOWY_SYS_DEFAULT_PASSWORD_UPDATE_VALID_TYPE_FOR_B', 'OLD', 'PASSWORD_STRATEGY_FOR_B', 'B端密码修改验证方式', 150, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755268', 'SNOWY_SYS_DEFAULT_PASSWORD_MIN_LENGTH_FOR_B', '6', 'PASSWORD_STRATEGY_FOR_B', 'B端密码最小长度', 151, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755269', 'SNOWY_SYS_DEFAULT_PASSWORD_MAX_LENGTH_FOR_B', '20', 'PASSWORD_STRATEGY_FOR_B', 'B端密码最大长度', 152, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755270', 'SNOWY_SYS_DEFAULT_PASSWORD_COMPLEXITY_FOR_B', 'REG0', 'PASSWORD_STRATEGY_FOR_B', 'B端密码复杂度', 153, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755271', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_CONTINUOUS_SAME_CHARACTER_LENGTH_FOR_B', '3', 'PASSWORD_STRATEGY_FOR_B', 'B端密码不能连续存在相同字符个数', 154, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755272', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_CONTAINS_USER_INFO_FLAG_FOR_B', 'true', 'PASSWORD_STRATEGY_FOR_B', 'B端密码不能包含用户信息开关', 155, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755273', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_USE_HISTORY_FLAG_FOR_B', 'true', 'PASSWORD_STRATEGY_FOR_B', 'B端密码不能使用历史密码开关', 156, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755274', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_USE_HISTORY_COUNT_FOR_B', '3', 'PASSWORD_STRATEGY_FOR_B', 'B端密码不能使用历史密码范围个数', 157, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755275', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_USE_WEAK_FLAG_FOR_B', 'true', 'PASSWORD_STRATEGY_FOR_B', 'B端密码不能使用弱密码库中密码开关', 158, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755276', 'SNOWY_SYS_DEFAULT_PASSWORD_DEFINE_WEAK_DATABASE_FOR_B', 'xiaonuo,xiaonuoark', 'PASSWORD_STRATEGY_FOR_B', 'B端密码自定义额外弱密码库', 159, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755277', 'SNOWY_SYS_DEFAULT_PASSWORD_EXPIRED_DAYS_FOR_B', '30', 'PASSWORD_STRATEGY_FOR_B', 'B端密码有效期天数', 160, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755278', 'SNOWY_SYS_DEFAULT_PASSWORD_EXPIRED_NOTICE_DAYS_FOR_B', '3', 'PASSWORD_STRATEGY_FOR_B', 'B端密码过期前提醒天数', 161, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755279', 'SNOWY_SYS_DEFAULT_PASSWORD_FOR_C', '123456', 'PASSWORD_STRATEGY_FOR_C', 'C端密码默认密码', 162, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755280', 'SNOWY_SYS_DEFAULT_PASSWORD_UPDATE_VALID_TYPE_FOR_C', 'OLD', 'PASSWORD_STRATEGY_FOR_C', 'C端密码修改验证方式', 163, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755281', 'SNOWY_SYS_DEFAULT_PASSWORD_MIN_LENGTH_FOR_C', '6', 'PASSWORD_STRATEGY_FOR_C', 'C端密码最小长度', 164, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755282', 'SNOWY_SYS_DEFAULT_PASSWORD_MAX_LENGTH_FOR_C', '20', 'PASSWORD_STRATEGY_FOR_C', 'C端密码最大长度', 165, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755283', 'SNOWY_SYS_DEFAULT_PASSWORD_COMPLEXITY_FOR_C', 'REG0', 'PASSWORD_STRATEGY_FOR_C', 'C端密码复杂度', 166, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755284', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_CONTINUOUS_SAME_CHARACTER_LENGTH_FOR_C', '3', 'PASSWORD_STRATEGY_FOR_C', 'C端密码不能连续存在相同字符个数', 167, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755285', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_CONTAINS_USER_INFO_FLAG_FOR_C', 'true', 'PASSWORD_STRATEGY_FOR_C', 'C端密码不能包含用户信息开关', 168, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755286', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_USE_HISTORY_FLAG_FOR_C', 'true', 'PASSWORD_STRATEGY_FOR_C', 'C端密码不能使用历史密码开关', 169, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755287', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_USE_HISTORY_COUNT_FOR_C', '3', 'PASSWORD_STRATEGY_FOR_C', 'C端密码不能使用历史密码范围个数', 170, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755288', 'SNOWY_SYS_DEFAULT_PASSWORD_NOT_ALLOW_USE_WEAK_FLAG_FOR_C', 'true', 'PASSWORD_STRATEGY_FOR_C', 'C端密码不能使用弱密码库中密码开关', 171, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755289', 'SNOWY_SYS_DEFAULT_PASSWORD_DEFINE_WEAK_DATABASE_FOR_C', 'xiaonuo,xiaonuoark', 'PASSWORD_STRATEGY_FOR_C', 'C端密码自定义额外弱密码库', 172, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755290', 'SNOWY_SYS_DEFAULT_PASSWORD_EXPIRED_DAYS_FOR_C', '30', 'PASSWORD_STRATEGY_FOR_C', 'C端密码有效期天数', 173, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_CONFIG` VALUES ('1908870094824755291', 'SNOWY_SYS_DEFAULT_PASSWORD_EXPIRED_NOTICE_DAYS_FOR_C', '3', 'PASSWORD_STRATEGY_FOR_C', 'C端密码过期前提醒天数', 174, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for DEV_DICT
-- ----------------------------
DROP TABLE IF EXISTS `DEV_DICT`;
CREATE TABLE `DEV_DICT`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PARENT_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `DICT_LABEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典文字',
  `DICT_VALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典值',
  `CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_DICT
-- ----------------------------
INSERT INTO `DEV_DICT` VALUES ('1543839774776291330', '0', '用户性别类型', 'GENDER', 'nx2UbxB6z6', 'FRM', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1543839901037424642', '1543839774776291330', '男', '男', 'WRrdMORE3c', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1543840033980084226', '1543839774776291330', '女', '女', '4MbEORlvBJ', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1543860103661809666', '0', '系统菜单类型', 'MENU_TYPE', 'pEnxBN7E2o', 'FRM', 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1543860239020388354', '1543860103661809666', '目录', 'CATALOG', 'kMKSJSFZgt', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1543860305508495361', '1543860103661809666', '菜单', 'MENU', 'FOHDkzOjxa', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1543860423485878274', '1543860103661809666', '内链', 'IFRAME', 'u6rH9LmTvz', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1543860477512708098', '1543860103661809666', '外链', 'LINK', 'vOmYaKkhrK', 'FRM', 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1544329873407946753', '0', '系统通用状态', 'COMMON_STATUS', 'SpdguT1MTy', 'FRM', 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1545397556652027906', '1544329873407946753', '启用', 'ENABLE', '4fPYJApbLH', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1545397556652027907', '1544329873407946753', '停用', 'DISABLED', 'DreeA3e26Y', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547207669861064706', '0', '系统角色分类', 'ROLE_CATEGORY', 'rMCKoVuOoF', 'FRM', 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547207891009937409', '1547207669861064706', '全局', 'GLOBAL', 'gaLjy7wwCw', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547207990075203585', '1547207669861064706', '机构', 'ORG', 'f1B0Zt9PPM', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547227094995705858', '0', '系统机构分类', 'ORG_CATEGORY', '2ATB1ySwLN', 'FRM', 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547227670693289985', '1547227094995705858', '部门', 'DEPT', 'XUUCvprRXw', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547228161267474434', '1547227094995705858', '公司', 'COMPANY', '6ntdgLkMOi', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547409689434742786', '0', '系统职位分类', 'POSITION_CATEGORY', 'hPvAP5dxiW', 'FRM', 6, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547409794837602305', '1547409689434742786', '高层', 'HIGH', '7QQxWyMMB0', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547409844779180033', '1547409689434742786', '中层', 'MIDDLE', 'WneMc7T6IT', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547409906406088706', '1547409689434742786', '基层', 'LOW', 'aQhuK5cZ1B', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658113', '0', '用户民族类型', 'NATION', 'OfM9Yo627Z', 'FRM', 7, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658114', '1547641470701658113', '汉族', '汉族', 'IldDHFWUJu', 'FRM', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658115', '1547641470701658113', '壮族', '壮族', 'BcWVpbu1xR', 'FRM', 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658116', '1547641470701658113', '回族', '回族', 'yjVUonNG7d', 'FRM', 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658117', '1547641470701658113', '满族', '满族', 'eJi56S3voF', 'FRM', 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658118', '1547641470701658113', '维吾尔族', '维吾尔族', 'EQaAIa8CM3', 'FRM', 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658119', '1547641470701658113', '苗族', '苗族', 'jey27sIjJh', 'FRM', 6, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658120', '1547641470701658113', '彝族', '彝族', 'NLeKPrUqmD', 'FRM', 7, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658121', '1547641470701658113', '土家族', '土家族', 'jT8d1Ik5pg', 'FRM', 8, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658122', '1547641470701658113', '藏族', '藏族', 'Hn7hhRzZkK', 'FRM', 9, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658123', '1547641470701658113', '蒙古族', '蒙古族', 'nXOl2haSmn', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658124', '1547641470701658113', '侗族', '侗族', 'sjtNWihEAP', 'FRM', 11, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658125', '1547641470701658113', '布依族', '布依族', 'BUJNxSLxaG', 'FRM', 12, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658126', '1547641470701658113', '瑶族', '瑶族', 'XO7sLv3shh', 'FRM', 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658127', '1547641470701658113', '白族', '白族', 'kLKZ70OwP1', 'FRM', 14, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658128', '1547641470701658113', '朝鲜族', '朝鲜族', 'nMRLtjAPfu', 'FRM', 15, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658129', '1547641470701658113', '哈尼族', '哈尼族', 'rAD1IjUe8L', 'FRM', 16, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658130', '1547641470701658113', '黎族', '黎族', 'pgrMlPbuhg', 'FRM', 17, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658131', '1547641470701658113', '哈萨克族', '哈萨克族', 'ZCMR77KXLM', 'FRM', 18, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658132', '1547641470701658113', '傣族', '傣族', 'w7FEqD6b9b', 'FRM', 19, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658133', '1547641470701658113', '畲族', '畲族', 'II3pYCP3gy', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658134', '1547641470701658113', '傈僳族', '傈僳族', 'P4cZRdzfkD', 'FRM', 21, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658135', '1547641470701658113', '东乡族', '东乡族', 'LsDVhLz5aK', 'FRM', 22, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658136', '1547641470701658113', '仡佬族', '仡佬族', 'cRW15z07Wf', 'FRM', 23, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658137', '1547641470701658113', '拉祜族', '拉祜族', 'Rxxpkdtuyi', 'FRM', 24, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658138', '1547641470701658113', '佤族', '佤族', 'BTFWGDBADw', 'FRM', 25, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658139', '1547641470701658113', '水族', '水族', 'rrXze6vNX9', 'FRM', 26, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658140', '1547641470701658113', '纳西族', '纳西族', 'E78hSFKAko', 'FRM', 27, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658141', '1547641470701658113', '羌族', '羌族', 'VoNs4A5D5o', 'FRM', 28, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658142', '1547641470701658113', '土族', '土族', 'UxDL9BKnUm', 'FRM', 29, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658143', '1547641470701658113', '仫佬族', '仫佬族', 'Qn03GasUeA', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658144', '1547641470701658113', '锡伯族', '锡伯族', 'yf4RZRyGzK', 'FRM', 31, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658145', '1547641470701658113', '柯尔克孜族', '柯尔克孜族', 'mCACEtEHGz', 'FRM', 32, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658146', '1547641470701658113', '景颇族', '景颇族', 'XVGhmOIr1v', 'FRM', 33, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658147', '1547641470701658113', '达斡尔族', '达斡尔族', 'pB7plgu56s', 'FRM', 34, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658148', '1547641470701658113', '撒拉族', '撒拉族', '6z5gsbJYwa', 'FRM', 35, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658149', '1547641470701658113', '布朗族', '布朗族', 'qFV4FirD9p', 'FRM', 36, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658150', '1547641470701658113', '毛南族', '毛南族', 'rsNRdCZSMn', 'FRM', 37, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658151', '1547641470701658113', '塔吉克族', '塔吉克族', 'Snn1gGO0Mo', 'FRM', 38, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658152', '1547641470701658113', '普米族', '普米族', 'OfJpLT9wnU', 'FRM', 39, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658153', '1547641470701658113', '阿昌族', '阿昌族', 'GB03mwF8Ou', 'FRM', 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658154', '1547641470701658113', '怒族', '怒族', 'kIUgNs9ESr', 'FRM', 41, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658155', '1547641470701658113', '鄂温克族', '鄂温克族', 'TMlFI08Nyp', 'FRM', 42, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658156', '1547641470701658113', '京族', '京族', 'QNeQWqhYjB', 'FRM', 43, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658157', '1547641470701658113', '基诺族', '基诺族', 'LW4sPUhztO', 'FRM', 44, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658158', '1547641470701658113', '德昂族', '德昂族', 'au5pfugMm1', 'FRM', 45, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658159', '1547641470701658113', '保安族', '保安族', 'xAkxr6cORb', 'FRM', 46, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658160', '1547641470701658113', '俄罗斯族', '俄罗斯族', 'XVDaOjSCRC', 'FRM', 47, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658161', '1547641470701658113', '裕固族', '裕固族', 'aDgjM4JVJ4', 'FRM', 48, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658162', '1547641470701658113', '乌孜别克族', '乌孜别克族', 'IPtwpYl2GX', 'FRM', 49, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658163', '1547641470701658113', '门巴族', '门巴族', 'lP5Vim88tt', 'FRM', 50, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658164', '1547641470701658113', '鄂伦春族', '鄂伦春族', 'NQYDgg0vzB', 'FRM', 51, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658165', '1547641470701658113', '独龙族', '独龙族', 'a37PtONVYo', 'FRM', 52, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658166', '1547641470701658113', '赫哲族', '赫哲族', 'JJ97lOiA4D', 'FRM', 53, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658167', '1547641470701658113', '高山族', '高山族', 'zc52WRi5ro', 'FRM', 54, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658168', '1547641470701658113', '珞巴族', '珞巴族', 'v4ZkItC09c', 'FRM', 55, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1547641470701658169', '1547641470701658113', '塔塔尔族 ', '塔塔尔族 ', 'c4AMDTdh2c', 'FRM', 56, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1549019269252104194', '0', '登录设备类型', 'AUTH_DEVICE_TYPE', '29o4YioH2v', 'FRM', 8, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1549019748883349506', '1549019269252104194', 'PC端', 'PC', 'kf2lvOCEcJ', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1549019813924421634', '1549019269252104194', '移动端', 'APP', 'QGygBhRmjE', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1549019864537088002', '1549019269252104194', '小程序', 'MINI', 'uTYA8duLr3', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554678566166323202', '0', '系统字典分类', 'DICT_CATEGORY', 'f4vCzVKlh5', 'FRM', 9, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554678761742524417', '1554678566166323202', '框架', 'FRM', 'ydzbkvUTj4', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554678863617974273', '1554678566166323202', '业务', 'BIZ', 'xI3z1fXU5z', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554679788378120194', '0', '短信发送引擎', 'SMS_ENGINE', 'kPEEms6spU', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554679872054484993', '1554679788378120194', '阿里云', 'ALIYUN', 'GGSVo47jJ0', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554679958398427138', '1554679788378120194', '腾讯云', 'TENCENT', 'jQ4boYgQCK', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554679958398427139', '1554679788378120194', '小诺方舟', 'XIAONUO', 'M3Oie6gy5Z', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554726376265744386', '0', '文件上传引擎', 'FILE_ENGINE', 'Vo3kYSoWu4', 'FRM', 11, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554726639571566593', '1554726376265744386', '本地', 'LOCAL', 'qw9Tr2Dzox', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554726696068841474', '1554726376265744386', '阿里云', 'ALIYUN', 'DdvFFdIFJA', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554726762338844674', '1554726376265744386', '腾讯云', 'TENCENT', 'Ikys8NAfP4', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1554726830844411905', '1554726376265744386', 'MINIO', 'MINIO', 'KXhgDXlijP', 'FRM', 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556317797993218049', '0', '邮件发送引擎', 'EMAIL_ENGINE', 'NfnLwwpxlj', 'FRM', 12, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319651447767041', '1556317797993218049', '本地', 'LOCAL', '61rvXPdT9X', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319726962016258', '1556317797993218049', '阿里云', 'ALIYUN', 'DfXhM5Gwau', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166593', '1556317797993218049', '腾讯云', 'TENCENT', 'NRjywm25dm', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166594', '0', '消息推送引擎', 'PUSH_ENGINE', 'qRPg7zAJdP', 'FRM', 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166595', '1556319786349166594', '钉钉', 'DINGTALK', 'KDLmGWwMkJ', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166596', '1556319786349166594', '飞书', 'FEISHU', 'Vewyfq4W15', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166597', '1556319786349166594', '企业微信', 'WORKWECHAT', 'JMkb4b45Xd', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166598', '0', '改密验证方式', 'UPDATE_PASSWORD_VALID_TYPE', '9Mqw6ShkbD', 'FRM', 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166599', '1556319786349166598', '旧密码', 'OLD', 'pObj0Dl4Xe', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166600', '1556319786349166598', '手机号', 'PHONE', 'WfOLuw9YmO', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166601', '1556319786349166598', '邮箱', 'EMAIL', 'nsGz3lTCqX', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166602', '0', '密码复杂策略', 'PASSWORD_COMPLEXITY_TYPE', 'dCk4dqC6IY', 'FRM', 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166603', '1556319786349166602', '无限制', 'REG0', '7SWkXJllso', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166604', '1556319786349166602', '必须包含数字和字母', 'REG1', 'MZm9NDOMlf', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166605', '1556319786349166602', '必须包含数字和大写字母', 'REG2', 'RnOoCgVDv6', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166606', '1556319786349166602', '必须包含数字、大写字母、小写字母和特殊字符', 'REG3', 'q8abKxE74G', 'FRM', 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166607', '1556319786349166602', '至少包含数字、字母和特殊字符中的两种', 'REG4', 'SW7iBXX4oY', 'FRM', 50, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166608', '1556319786349166602', '至少包含数字、大写字母、小写字母和特殊字符的三种', 'REG5', 'Fztg672Cva', 'FRM', 60, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166609', '0', '无用户时策略', 'NO_USER_STRATEGY', '49p2f52gYw', 'FRM', 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166610', '1556319786349166609', '不允许登录', 'NOT_ALLOW_LOGIN', '5G50YsKslb', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1556319786349166611', '1556319786349166609', '自动创建用户', 'AUTO_CREATE_USER', '7uCMN8LbRL', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1559942543251079169', '0', '系统通用开关', 'COMMON_SWITCH', 'MFJCVVdJgk', 'FRM', 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1559942706694717442', '1559942543251079169', '开', 'true', 'kNPE0kSKBO', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1559942777674924034', '1559942543251079169', '关', 'false', 'NNzkxA5SNS', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560306347516461058', '0', '用户证件类型', 'IDCARD_TYPE', '2J7klwyzPJ', 'FRM', 14, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560306502135283714', '1560306347516461058', '身份证', '身份证', 'REJIJwygYr', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560306768913989633', '1560306347516461058', '出生证', '出生证', 'eXyBSq6xwR', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560307009365049346', '1560306347516461058', '军官证', '军官证', 'L4pbqvDHsG', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560307180937248769', '1560306347516461058', '护照', '护照', 's8RAk6LIO3', 'FRM', 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309358598914050', '0', '通用文化程度', 'CULTURE_LEVEL', 'pwP5ee8waN', 'FRM', 15, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309494892822530', '1560309358598914050', '小学', '小学', 'oE5AicWtWP', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309602136981505', '1560309358598914050', '中学', '中学', 'DPuwboHfx2', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309700136894465', '1560309358598914050', '高中', '高中', 'u8M3iyacaz', 'FRM', 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309744118366209', '1560309358598914050', '中专', '中专', 'CswfpaCuEy', 'FRM', 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309783037313026', '1560309358598914050', '大专', '大专', 'hrJGWys2Wj', 'FRM', 50, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309816423972866', '1560309358598914050', '本科', '本科', 'LkR8xvh9tY', 'FRM', 60, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560309855661686785', '1560309358598914050', '硕士研究生', '硕士研究生', '75Vt847ADj', 'FRM', 70, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560310085471797250', '1560309358598914050', '博士研究生', '博士研究生', 'dgOJaPhHzh', 'FRM', 80, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560338934867791874', '0', '定时任务分类', 'JOB_CATEGORY', 'Hodol7eYnE', 'FRM', 16, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560339092900777985', '1560338934867791874', '框架', 'FRM', 'AIBvupunuc', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560339156134105089', '1560338934867791874', '业务', 'BIZ', 'L0kgu7bNYN', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560342111344234497', '0', '定时任务状态', 'JOB_STATUS', 'jlfpcMEVVK', 'FRM', 17, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560342186812346370', '1560342111344234497', '运行', 'RUNNING', 'DHhBaibuBk', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1560342250096005121', '1560342111344234497', '停止', 'STOPPED', 'O6KfK7Cobx', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1561595062998102017', '0', '三方用户分类', 'THIRD_CATEGORY', 'OqMe62ViBY', 'FRM', 18, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1561595252714860545', '1561595062998102017', '码云GITEE', 'GITEE', 'lZq8s2ehA5', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1561595322336112641', '1561595062998102017', '微信WECHAT', 'WECHAT', 'pGhKCHQ7hF', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1567580351742619650', '0', '系统消息类型', 'MESSAGE_CATEGORY', 'UPIN4KJqvT', 'FRM', 19, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1567580424270524418', '1567580351742619650', '系统', 'SYS', 'l7Mc5zE5ib', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1567580487684206594', '1567580351742619650', '业务', 'BIZ', 'nYhpV3ep7j', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1619343323218432002', '0', '移动菜单状态', 'MOBILE_STATUS', 'zhK8QL6NOu', 'FRM', 93, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1619343680636047362', '1619343323218432002', '可用', 'ENABLE', 'pCdVlpHewf', 'FRM', 94, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1619343846382358529', '1619343323218432002', '不可用', 'DISABLED', 'K3FADjJN7G', 'FRM', 96, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1619344256295882753', '0', '移动菜单规则', 'MOBILE_REG_TYPE', '4Lz21CUUTV', 'FRM', 97, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1619344428111351809', '1619344256295882753', '正规则', 'YES', 'Tb4OsxMVgN', 'FRM', 98, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1619344504456073218', '1619344256295882753', '反规则', 'NO', '0ibifiB9mB', 'FRM', 99, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1728459107437219842', '0', '系统菜单可见', 'MENU_VISIBLE', 'SCF7DIoiOw', 'FRM', 100, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1728459178341928962', '1728459107437219842', '显示', 'TRUE', 'JpeQ3wzeTY', 'FRM', 101, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1728459493170581505', '1728459107437219842', '隐藏', 'FALSE', 's5RGksqfjr', 'FRM', 102, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811257769085767682', '0', '通知公告类型', 'BIZ_NOTICE_TYPE', 'iXHgzfK7W5', 'FRM', 128, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811258110468558849', '1811257769085767682', '通知', 'NOTICE', 'rNtBUWLnag', 'FRM', 129, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811258351498432514', '1811257769085767682', '公告', 'ANNOUNCEMENT', '578Xq2zTkK', 'FRM', 130, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811258502975721474', '1811257769085767682', '警告', 'WARNING', 'cVjlhwLiE0', 'FRM', 131, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811258687793532929', '0', '通知公告状态', 'BIZ_NOTICE_STATUS', '1OcT1FGyRU', 'FRM', 132, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811259114710765570', '1811258687793532929', '已关闭', 'DISABLE', 'SB07WaNLrC', 'FRM', 133, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811259393917194242', '1811258687793532929', '正常', 'ENABLE', 'O27ZBLXOF5', 'FRM', 134, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811259821748785154', '0', '通知公告位置', 'BIZ_NOTICE_PLACE', '0gnQn6GnJs', 'FRM', 135, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811260041488371714', '1811259821748785154', '后台移动端首页', 'BACK_MOBILE', 'g7E1fXh3l8', 'FRM', 136, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811260212410454018', '1811259821748785154', '后台业务首页', 'BACK_INDEX', 'GP4eqroglk', 'FRM', 137, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811260660487950338', '1811259821748785154', '用户移动端首页', 'CLIENT_MOBILE', 'gnDATqoDpO', 'FRM', 138, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811285429576929282', '0', '轮播图位置', 'DEV_SLIDESHOW_PLACE', '1HQeP9ZwrY', 'FRM', 114, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811285517497929730', '1811285429576929282', '后台移动端首页', 'BACK_MOBILE', 'Lcd7Oc3SMD', 'FRM', 115, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811285597999206402', '1811285429576929282', '后台业务首页', 'BACK_INDEX', 'J1utDwWvGZ', 'FRM', 116, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811285669692444674', '1811285429576929282', '用户移动端首页', 'CLIENT_MOBILE', 'QOA6Gh75nr', 'FRM', 117, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811285778270392321', '1811285429576929282', '后台系统首页', 'BACK_SYS_INDEX', 'vdeOwzBXBr', 'FRM', 118, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811286076128890881', '0', '轮播图状态', 'DEV_SLIDESHOW_STATUS', 'T5lIZkVfTj', 'FRM', 119, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811286168449716226', '1811286076128890881', '启用', 'ENABLE', 'MuZagpmxPv', 'FRM', 120, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811286273949044737', '1811286076128890881', '禁用', 'DISABLE', '5gpxaee739', 'FRM', 121, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811286542808125441', '0', '轮播图跳转', 'WHETHER_TO_CLICK', 'yBB2WcLn2V', 'FRM', 122, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811286611254972418', '1811286542808125441', '启用', 'ENABLE', 'ac87rrN9WF', 'FRM', 123, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811286765760548866', '1811286542808125441', '禁用', 'DISABLE', 'la3FazhpXJ', 'FRM', 124, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811287001631428610', '0', '轮播图跳转方式', 'SKIP_MODE', 'PGtlHTRTEA', 'FRM', 125, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811287257836294146', '1811287001631428610', '跳转至URL', 'URL', 'xmKzrPyyrM', 'FRM', 126, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1811287406557925378', '1811287001631428610', '跳转至路由', 'ROUTER', 'lrtd0Zt0Di', 'FRM', 127, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1820107582090997762', '0', '通用是否', 'COMMON_WHETHER', 'aC6dE9bEVu', 'FRM', 48, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1820107884676476930', '1820107582090997762', '是', 'YES', 'ECNT9heOva', 'FRM', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `DEV_DICT` VALUES ('1820107960018759682', '1820107582090997762', '否', 'NO', 'FK92HBaphg', 'FRM', 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for DEV_EMAIL
-- ----------------------------
DROP TABLE IF EXISTS `DEV_EMAIL`;
CREATE TABLE `DEV_EMAIL`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ENGINE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮件引擎',
  `SEND_ACCOUNT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发件人邮箱',
  `SEND_USER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发件人昵称',
  `RECEIVE_ACCOUNTS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '接收人',
  `SUBJECT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '邮件主题',
  `CONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '邮件正文',
  `TAG_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名',
  `TEMPLATE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '模板名',
  `TEMPLATE_PARAM` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '发送参数',
  `RECEIPT_INFO` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回执信息',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '邮件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_EMAIL
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_FILE
-- ----------------------------
DROP TABLE IF EXISTS `DEV_FILE`;
CREATE TABLE `DEV_FILE`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ENGINE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '存储引擎',
  `BUCKET` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '存储桶',
  `FILE_KEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件KEY',
  `NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文件名称',
  `SUFFIX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件后缀',
  `SIZE_KB` bigint(20) NULL DEFAULT NULL COMMENT '文件大小kb',
  `SIZE_INFO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件大小（格式化后）',
  `OBJ_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文件的对象名（唯一名称）',
  `STORAGE_PATH` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文件存储路径',
  `DOWNLOAD_PATH` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文件下载路径',
  `IS_DOWNLOAD_AUTH` tinyint(1) NULL DEFAULT NULL COMMENT '文件下载是否需要授权',
  `THUMBNAIL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片缩略图',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_FILE
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_JOB
-- ----------------------------
DROP TABLE IF EXISTS `DEV_JOB`;
CREATE TABLE `DEV_JOB`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `ACTION_CLASS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务类名',
  `CRON_EXPRESSION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `JOB_STATUS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务状态',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_JOB
-- ----------------------------
INSERT INTO `DEV_JOB` VALUES ('1555471535453827073', '定时任务', 'qi06nah38m', 'FRM', 'vip.xiaonuo.dev.modular.job.task.DevJobTimerTaskRunner', '0 0 0 1 * ?', 'STOPPED', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for DEV_LOG
-- ----------------------------
DROP TABLE IF EXISTS `DEV_LOG`;
CREATE TABLE `DEV_LOG`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志分类',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志名称',
  `EXE_STATUS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '执行状态',
  `EXE_MESSAGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '具体消息',
  `OP_IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作ip',
  `OP_ADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作地址',
  `OP_BROWSER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作浏览器',
  `OP_OS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `CLASS_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名称',
  `METHOD_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `REQ_METHOD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `REQ_URL` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求地址',
  `PARAM_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `RESULT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回结果',
  `OP_TIME` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `OP_USER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人姓名',
  `SIGN_DATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '签名数据',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_LOG
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_MESSAGE
-- ----------------------------
DROP TABLE IF EXISTS `DEV_MESSAGE`;
CREATE TABLE `DEV_MESSAGE`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `SUBJECT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主题',
  `CONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '站内信' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_MESSAGE
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_PUSH
-- ----------------------------
DROP TABLE IF EXISTS `DEV_PUSH`;
CREATE TABLE `DEV_PUSH`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ENGINE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息引擎',
  `TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息类别',
  `TITLE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '消息标题',
  `CONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '消息内容',
  `RECEIPT_INFO` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回执信息',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '消息推送' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_PUSH
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_RELATION
-- ----------------------------
DROP TABLE IF EXISTS `DEV_RELATION`;
CREATE TABLE `DEV_RELATION`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `OBJECT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对象ID',
  `TARGET_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标ID',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_RELATION
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_SLIDESHOW
-- ----------------------------
DROP TABLE IF EXISTS `DEV_SLIDESHOW`;
CREATE TABLE `DEV_SLIDESHOW`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `TITLE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `PLACE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '展示位置',
  `IMAGE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `PATH_DETAILS` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径详情',
  `STATUS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_SLIDESHOW
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_SMS
-- ----------------------------
DROP TABLE IF EXISTS `DEV_SMS`;
CREATE TABLE `DEV_SMS`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ENGINE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短信引擎',
  `PHONE_NUMBERS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '手机号',
  `SIGN_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '短信签名',
  `TEMPLATE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '模板编码',
  `TEMPLATE_PARAM` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '发送参数',
  `RECEIPT_INFO` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回执信息',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短信' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_SMS
-- ----------------------------

-- ----------------------------
-- Table structure for DEV_WEAK_PASSWORD
-- ----------------------------
DROP TABLE IF EXISTS `DEV_WEAK_PASSWORD`;
CREATE TABLE `DEV_WEAK_PASSWORD`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '弱密码',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '弱密码库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEV_WEAK_PASSWORD
-- ----------------------------

-- ----------------------------
-- Table structure for GEN_BASIC
-- ----------------------------
DROP TABLE IF EXISTS `GEN_BASIC`;
CREATE TABLE `GEN_BASIC`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `DB_TABLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主表',
  `DB_TABLE_KEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主表主键',
  `PLUGIN_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '插件名',
  `MODULE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名',
  `TABLE_PREFIX` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移除表前缀',
  `GENERATE_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成方式',
  `MODULE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属模块',
  `MENU_PID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上级目录',
  `MOBILE_MODULE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移动端所属模块',
  `FUNCTION_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '功能名',
  `BUS_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务名',
  `CLASS_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
  `FORM_LAYOUT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单布局',
  `GRID_WHETHER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '使用栅格',
  `PACKAGE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '包名',
  `AUTHOR_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '生成基础' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of GEN_BASIC
-- ----------------------------

-- ----------------------------
-- Table structure for GEN_CONFIG
-- ----------------------------
DROP TABLE IF EXISTS `GEN_CONFIG`;
CREATE TABLE `GEN_CONFIG`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `BASIC_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基础ID',
  `IS_TABLE_KEY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键',
  `FIELD_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段',
  `FIELD_REMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `FIELD_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `FIELD_JAVA_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实体类型',
  `EFFECT_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作用类型',
  `DICT_TYPE_CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典',
  `WHETHER_TABLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列表显示',
  `WHETHER_RETRACT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列省略',
  `WHETHER_ADD_UPDATE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否增改',
  `WHETHER_REQUIRED` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '必填',
  `WHETHER_UNIQUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '唯一',
  `QUERY_WHETHER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询',
  `QUERY_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询方式',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序',
  `DELETE_FLAG` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '生成配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of GEN_CONFIG
-- ----------------------------

-- ----------------------------
-- Table structure for MOBILE_RESOURCE
-- ----------------------------
DROP TABLE IF EXISTS `MOBILE_RESOURCE`;
CREATE TABLE `MOBILE_RESOURCE`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `PARENT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父ID',
  `TITLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `MODULE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块',
  `MENU_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单类型',
  `PATH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径',
  `ICON` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `COLOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `REG_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则类型',
  `STATUS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '可用状态',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '移动资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of MOBILE_RESOURCE
-- ----------------------------
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623380023993298945', NULL, '业务', '217gcp9ifi', 'MODULE', NULL, NULL, NULL, 'container-outlined', '#1890ff', NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623380258656219138', '0', '机构管理', 'UJ3Iwy3jsW', 'MENU', '1623380023993298945', 'MENU', '/pages/biz/org/index', 'apartment-outlined', '#1890ff', 'YES', 'ENABLE', 0, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623380614295449601', '0', '岗位管理', 'sjIY9oGYir', 'MENU', '1623380023993298945', 'MENU', '/pages/biz/position/index', 'robot-outlined', '#9c28b1', 'YES', 'ENABLE', 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623380765202313218', '0', '人员管理', '2ppITl9dMw', 'MENU', '1623380023993298945', 'MENU', '/pages/biz/user/index', 'team-outlined', '#fed835', 'YES', 'ENABLE', 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623381127095250946', '0', '更多', 'mFVJNzE7gx', 'MENU', '1623380023993298945', 'CATALOG', '7029146815941316608', 'small-dash-outlined', '#f1627e', 'YES', 'ENABLE', 7, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623381298801668098', '1623380258656219138', '新增机构', 'mobileBizOrgAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623381632131395586', '1623380258656219138', '编辑机构', 'mobileBizOrgEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623381698837606401', '1623380258656219138', '删除机构', 'mobileBizOrgDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623696035909316610', '1623380614295449601', '新增岗位', 'mobileBizPositionAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623696094872842242', '1623380614295449601', '编辑岗位', 'mobileBizPositionEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623696153760870401', '1623380614295449601', '删除岗位', 'mobileBizPositionDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623696236267024386', '1623380765202313218', '新增人员', 'mobileBizUserAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623696292042878977', '1623380765202313218', '编辑人员', 'mobileBizUserEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `MOBILE_RESOURCE` VALUES ('1623696346547859458', '1623380765202313218', '删除人员', 'mobileBizUserDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_GROUP
-- ----------------------------
DROP TABLE IF EXISTS `SYS_GROUP`;
CREATE TABLE `SYS_GROUP`  (
  `ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `REMARK` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_GROUP
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_ORG
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ORG`;
CREATE TABLE `SYS_ORG`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PARENT_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `DIRECTOR_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主管ID',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_ORG
-- ----------------------------
INSERT INTO `SYS_ORG` VALUES ('1543842934270394368', '0', NULL, '小诺科技有限公司', 'yfqtrbd5qz', 'COMPANY', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394370', '1543842934270394368', '1543837863788879880', '工会办公室', '5ruzr6n7g7', 'DEPT', 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394371', '1543842934270394368', '1543837863788879883', '综合管理部', 'l4sdfnw27p', 'DEPT', 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394372', '1543842934270394368', '1543837863788879887', '财务资产部', 'h7yq9t1q0t', 'DEPT', 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394373', '1543842934270394368', '1543837863788879892', '人力资源部', '245ryxcbqh', 'DEPT', 6, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394374', '1543842934270394368', '1543837863788879898', '党群工作部', 'sc6jkffc4d', 'DEPT', 7, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394375', '1543842934270394368', '1543837863788879903', '纪检监督部', '39t022fx1m', 'DEPT', 8, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394376', '1543842934270394368', '1543837863788879907', '生产技术部', '34m3lam984', 'DEPT', 9, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394377', '1543842934270394368', '1543837863788879912', '计划营销部', 'w742mipwer', 'DEPT', 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ORG` VALUES ('1543842934270394378', '1543842934270394368', '1543837863788879917', '后勤保卫部', 'b71pvf46do', 'DEPT', 11, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_ORG_EXT
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ORG_EXT`;
CREATE TABLE `SYS_ORG_EXT`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ORG_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '组织id',
  `SOURCE_FROM_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '来源类别',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织扩展' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_ORG_EXT
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_POSITION
-- ----------------------------
DROP TABLE IF EXISTS `SYS_POSITION`;
CREATE TABLE `SYS_POSITION`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ORG_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织id',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '职位' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_POSITION
-- ----------------------------
INSERT INTO `SYS_POSITION` VALUES ('1543899639134019583', '1543842934270394368', '董事长', 'rsz5dmh762', 'HIGH', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_POSITION` VALUES ('1543899639134019584', '1543842934270394368', '总经理', 'wo1araqs2z', 'HIGH', 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_POSITION` VALUES ('1543899639134019585', '1543842934270394368', '副总经理', 'asqvwbsc16', 'HIGH', 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_POSITION` VALUES ('1543899639134019587', '1543842934270394368', '总经理助理', 'aln9y4tno6', 'HIGH', 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_POSITION` VALUES ('1543899639134019591', '1543842934270394368', '部门经理', 'krq0kj7oio', 'MIDDLE', 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_RELATION
-- ----------------------------
DROP TABLE IF EXISTS `SYS_RELATION`;
CREATE TABLE `SYS_RELATION`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `OBJECT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对象ID',
  `TARGET_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标ID',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_RELATION
-- ----------------------------
INSERT INTO `SYS_RELATION` VALUES ('1569556138947522560', '1543837863788879873', '1570687866138206209', 'SYS_USER_HAS_ROLE', NULL);
INSERT INTO `SYS_RELATION` VALUES ('1569556138947522561', '1543837863788879871', '1570687866138206208', 'SYS_USER_HAS_ROLE', NULL);
INSERT INTO `SYS_RELATION` VALUES ('1571134629653872641', '1543837863788879872', NULL, 'SYS_USER_WORKBENCH_DATA', '{\"shortcut\":[{\"id\":\"1548901111999772426\",\"title\":\"系统配置\",\"icon\":\"appstore-outlined\",\"path\":\"/sys/config\"}]}');
INSERT INTO `SYS_RELATION` VALUES ('1571134629653872642', '1543837863788879873', NULL, 'SYS_USER_WORKBENCH_DATA', '{\"shortcut\":[{\"id\":\"1548901111999773978\",\"title\":\"机构管理\",\"icon\":\"appstore-outlined\",\"path\":\"/biz/org\"},{\"id\":\"1548901111999773979\",\"title\":\"人员管理\",\"icon\":\"appstore-outlined\",\"path\":\"/biz/user\"},{\"id\":\"1548901111999773980\",\"title\":\"岗位管理\",\"icon\":\"appstore-outlined\",\"path\":\"/biz/position\"}]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249219594788866', '1570687866138206208', '1623380258656219138', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623380258656219138\",\"buttonInfo\":[\"1623381298801668098\",\"1623381632131395586\",\"1623381698837606401\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249219594788867', '1570687866138206208', '1623380614295449601', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623380614295449601\",\"buttonInfo\":[\"1623696035909316610\",\"1623696094872842242\",\"1623696153760870401\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249219594788868', '1570687866138206208', '1623380765202313218', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623380765202313218\",\"buttonInfo\":[\"1623696236267024386\",\"1623696292042878977\",\"1623696346547859458\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249219594788869', '1570687866138206208', '1623381127095250946', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623381127095250946\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249448540872706', '1570687866138206209', '1623380258656219138', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623380258656219138\",\"buttonInfo\":[\"1623381298801668098\",\"1623381632131395586\",\"1623381698837606401\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249448540872707', '1570687866138206209', '1623380614295449601', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623380614295449601\",\"buttonInfo\":[\"1623696035909316610\",\"1623696094872842242\",\"1623696153760870401\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249448540872708', '1570687866138206209', '1623380765202313218', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623380765202313218\",\"buttonInfo\":[\"1623696236267024386\",\"1623696292042878977\",\"1623696346547859458\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1635249448540872709', '1570687866138206209', '1623381127095250946', 'SYS_ROLE_HAS_MOBILE_MENU', '{\"menuId\":\"1623381127095250946\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862286688257', '1570687866138206208', '/biz/dict/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/dict/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882562', '1570687866138206208', '/biz/dict/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/dict/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882563', '1570687866138206208', '/biz/dict/tree', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/dict/tree\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882564', '1570687866138206208', '/biz/org/add', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/add\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882565', '1570687866138206208', '/biz/org/delete', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/delete\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882566', '1570687866138206208', '/biz/org/detail', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/detail\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882567', '1570687866138206208', '/biz/org/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882568', '1570687866138206208', '/biz/org/orgTreeSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/orgTreeSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882569', '1570687866138206208', '/biz/org/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882570', '1570687866138206208', '/biz/org/tree', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/tree\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862290882571', '1570687866138206208', '/biz/org/userSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/userSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862299271169', '1570687866138206208', '/biz/position/add', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/add\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862299271170', '1570687866138206208', '/biz/position/delete', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/delete\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862299271171', '1570687866138206208', '/biz/position/detail', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/detail\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862299271172', '1570687866138206208', '/biz/position/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862299271173', '1570687866138206208', '/biz/position/orgTreeSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/orgTreeSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862299271174', '1570687866138206208', '/biz/position/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465474', '1570687866138206208', '/biz/position/positionSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/positionSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465475', '1570687866138206208', '/biz/user/add', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/add\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465476', '1570687866138206208', '/biz/user/delete', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/delete\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465477', '1570687866138206208', '/biz/user/detail', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/detail\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465478', '1570687866138206208', '/biz/user/disableUser', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/disableUser\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465479', '1570687866138206208', '/biz/user/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465480', '1570687866138206208', '/biz/user/enableUser', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/enableUser\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465481', '1570687866138206208', '/biz/user/export', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/export\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465482', '1570687866138206208', '/biz/user/exportUserInfo', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/exportUserInfo\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465483', '1570687866138206208', '/biz/user/grantRole', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/grantRole\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465484', '1570687866138206208', '/biz/user/orgListSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/orgListSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862303465485', '1570687866138206208', '/biz/user/orgTreeSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/orgTreeSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862311854081', '1570687866138206208', '/biz/user/ownRole', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/ownRole\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862311854082', '1570687866138206208', '/biz/user/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862311854083', '1570687866138206208', '/biz/user/positionSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/positionSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862311854084', '1570687866138206208', '/biz/user/resetPassword', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/resetPassword\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862311854085', '1570687866138206208', '/biz/user/roleSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/roleSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960862311854086', '1570687866138206208', '/biz/user/userSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/userSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960918255480833', '1570687866138206209', '1689891405367353346', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1689891405367353346\",\"buttonInfo\":[\"1689892202679377921\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960918255480834', '1570687866138206209', '1548901111999773978', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773978\",\"buttonInfo\":[\"1571129529564758017\",\"1571129929961406466\",\"1571130756155408386\",\"1571130811058847745\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960918255480835', '1570687866138206209', '1548901111999773979', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773979\",\"buttonInfo\":[\"1571130973294526465\",\"1571131043532341249\",\"1571131137006600193\",\"1571131427361488898\",\"1571131544973967361\",\"1571131727656878081\",\"1571132076853657601\",\"1635110416263262209\",\"1635110536451043329\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960918255480836', '1570687866138206209', '1548901111999773980', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773980\",\"buttonInfo\":[\"1571132393993371649\",\"1571132468178026497\",\"1571132576143605761\",\"1571132658851086338\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242433', '1570687866138206209', '/biz/dict/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/dict/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242434', '1570687866138206209', '/biz/dict/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/dict/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242435', '1570687866138206209', '/biz/dict/tree', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/dict/tree\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242436', '1570687866138206209', '/biz/org/add', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/add\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242437', '1570687866138206209', '/biz/org/delete', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/delete\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242438', '1570687866138206209', '/biz/org/detail', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/detail\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242439', '1570687866138206209', '/biz/org/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242440', '1570687866138206209', '/biz/org/orgTreeSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/orgTreeSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961876242441', '1570687866138206209', '/biz/org/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351297', '1570687866138206209', '/biz/org/tree', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/tree\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351298', '1570687866138206209', '/biz/org/userSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/org/userSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351299', '1570687866138206209', '/biz/position/add', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/add\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351300', '1570687866138206209', '/biz/position/delete', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/delete\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351301', '1570687866138206209', '/biz/position/detail', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/detail\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351302', '1570687866138206209', '/biz/position/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351303', '1570687866138206209', '/biz/position/orgTreeSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/orgTreeSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351304', '1570687866138206209', '/biz/position/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351305', '1570687866138206209', '/biz/position/positionSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/position/positionSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351306', '1570687866138206209', '/biz/user/add', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/add\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351307', '1570687866138206209', '/biz/user/delete', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/delete\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351308', '1570687866138206209', '/biz/user/detail', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/detail\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351309', '1570687866138206209', '/biz/user/disableUser', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/disableUser\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351310', '1570687866138206209', '/biz/user/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351311', '1570687866138206209', '/biz/user/enableUser', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/enableUser\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351312', '1570687866138206209', '/biz/user/export', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/export\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351313', '1570687866138206209', '/biz/user/exportUserInfo', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/exportUserInfo\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351314', '1570687866138206209', '/biz/user/grantRole', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/grantRole\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351315', '1570687866138206209', '/biz/user/orgListSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/orgListSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351316', '1570687866138206209', '/biz/user/orgTreeSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/orgTreeSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351317', '1570687866138206209', '/biz/user/ownRole', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/ownRole\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351318', '1570687866138206209', '/biz/user/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351319', '1570687866138206209', '/biz/user/positionSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/positionSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351320', '1570687866138206209', '/biz/user/resetPassword', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/resetPassword\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351321', '1570687866138206209', '/biz/user/roleSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/roleSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1689960961943351322', '1570687866138206209', '/biz/user/userSelector', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/user/userSelector\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598256001026', '1570687866138206208', '1548901111999770526', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999770526\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598256001028', '1570687866138206208', '1548901111999770826', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999770826\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598256001029', '1570687866138206208', '1548901111999770926', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999770926\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598256001030', '1570687866138206208', '1548901111999771026', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771026\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598264389633', '1570687866138206208', '1548901111999771226', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771226\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598264389634', '1570687866138206208', '1548901111999771326', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771326\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598264389635', '1570687866138206208', '1548901111999771426', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771426\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598264389636', '1570687866138206208', '1548901111999771726', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771726\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598264389637', '1570687866138206208', '1548901111999771826', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771826\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598264389638', '1570687866138206208', '1548901111999771926', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771926\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598264389639', '1570687866138206208', '1548901111999772026', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772026\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598272778242', '1570687866138206208', '1548901111999772226', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772226\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598272778243', '1570687866138206208', '1548901111999772326', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772326\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598272778244', '1570687866138206208', '1548901111999772426', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772426\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598272778245', '1570687866138206208', '1548901111999772526', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772526\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598272778246', '1570687866138206208', '1548901111999772626', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772626\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166849', '1570687866138206208', '1548901111999772726', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772726\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166850', '1570687866138206208', '1548901111999772826', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772826\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166851', '1570687866138206208', '1548901111999772926', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999772926\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166852', '1570687866138206208', '1548901111999773226', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773226\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166853', '1570687866138206208', '1548901111999773326', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773326\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166854', '1570687866138206208', '1548901111999773254', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773254\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166855', '1570687866138206208', '1548901111999773427', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773427\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166856', '1570687866138206208', '1548901111999773428', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773428\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166857', '1570687866138206208', '1548901111999773429', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773429\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166858', '1570687866138206208', '1548901111999773430', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773430\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598281166859', '1570687866138206208', '1548901111999773431', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773431\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555457', '1570687866138206208', '1548901111999773432', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773432\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555458', '1570687866138206208', '1548901111999773433', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773433\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555459', '1570687866138206208', '1548901111999773434', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773434\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555460', '1570687866138206208', '1548901111999773435', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773435\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555461', '1570687866138206208', '1548901111999773436', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773436\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555462', '1570687866138206208', '1548901111999773437', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773437\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555463', '1570687866138206208', '1548901111999773438', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773438\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555464', '1570687866138206208', '1548901111999773439', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773439\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555465', '1570687866138206208', '1548901111999773440', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773440\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555466', '1570687866138206208', '1548901111999773441', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773441\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555467', '1570687866138206208', '1548901111999773442', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773442\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555468', '1570687866138206208', '1548901111999773443', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773443\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555469', '1570687866138206208', '1548901111999773444', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773444\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555470', '1570687866138206208', '1548901111999773445', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773445\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555471', '1570687866138206208', '1689894316554067969', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1689894316554067969\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555472', '1570687866138206208', '1689894577238450177', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1689894577238450177\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555473', '1570687866138206208', '1623378675591671810', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1623378675591671810\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598289555474', '1570687866138206208', '1623378996099411969', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1623378996099411969\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598297944066', '1570687866138206208', '1689891405367353346', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1689891405367353346\",\"buttonInfo\":[\"1689892202679377921\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598297944067', '1570687866138206208', '1548901111999773978', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773978\",\"buttonInfo\":[\"1571129529564758017\",\"1571129929961406466\",\"1571130756155408386\",\"1571130811058847745\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598297944068', '1570687866138206208', '1548901111999773979', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773979\",\"buttonInfo\":[\"1571130973294526465\",\"1571131043532341249\",\"1571131137006600193\",\"1571131427361488898\",\"1571131544973967361\",\"1571131727656878081\",\"1571132076853657601\",\"1635110416263262209\",\"1635110536451043329\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1728455598297944069', '1570687866138206208', '1548901111999773980', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999773980\",\"buttonInfo\":[\"1571132393993371649\",\"1571132468178026497\",\"1571132576143605761\",\"1571132658851086338\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1728521685882490892', '1570687866138206208', '1811800584425500674', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1811800584425500674\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1812126273234231297', '1570687866138206208', '1811290937444667393', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1811290937444667393\",\"buttonInfo\":[\"1811290937469833217\",\"1811290937486610434\",\"1811290937494999042\",\"1811290937503387650\",\"1811328402989662210\",\"1811330359695400961\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1813959903803842580', '1570687866138206208', '1813959658013433858', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1813959658013433858\",\"buttonInfo\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1813960110876631044', '1570687866138206208', '/biz/notice/add', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/notice/add\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1813960110876631045', '1570687866138206208', '/biz/notice/delete', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/notice/delete\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1813960110876631046', '1570687866138206208', '/biz/notice/detail', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/notice/detail\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1813960110876631047', '1570687866138206208', '/biz/notice/disableStatus', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/notice/disableStatus\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1813960110876631048', '1570687866138206208', '/biz/notice/edit', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/notice/edit\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1813960110876631049', '1570687866138206208', '/biz/notice/enableStatus', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/notice/enableStatus\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1813960110876631050', '1570687866138206208', '/biz/notice/page', 'SYS_ROLE_HAS_PERMISSION', '{\"apiUrl\":\"/biz/notice/page\",\"scopeCategory\":\"SCOPE_ALL\",\"scopeDefineOrgIdList\":[]}');
INSERT INTO `SYS_RELATION` VALUES ('1871280434097565701', '1570687866138206208', '1870158678418993154', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1870158678418993154\",\"buttonInfo\":[\"1870158678481907713\",\"1870158678481907714\",\"1870158678481907715\",\"1870158678481907716\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1871280434097565751', '1570687866138206208', '1871278073018986498', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1871278073018986498\",\"buttonInfo\":[\"1871278073086095361\",\"1871278073086095362\",\"1871278073086095363\",\"1871278073086095364\",\"1871280381043814402\"]}');
INSERT INTO `SYS_RELATION` VALUES ('1909233948956041233', '1570687866138206208', '1548901111999771927', 'SYS_ROLE_HAS_RESOURCE', '{\"menuId\":\"1548901111999771927\",\"buttonInfo\":[]}');

-- ----------------------------
-- Table structure for SYS_RESOURCE
-- ----------------------------
DROP TABLE IF EXISTS `SYS_RESOURCE`;
CREATE TABLE `SYS_RESOURCE`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `PARENT_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `TITLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '别名',
  `CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `MODULE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块',
  `MENU_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单类型',
  `PATH` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '路径',
  `COMPONENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件',
  `ICON` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `COLOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `VISIBLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否可见',
  `DISPLAY_LAYOUT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示布局',
  `KEEP_LIVE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页签缓存',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_RESOURCE
-- ----------------------------
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999770525', NULL, '系统', NULL, 'system', 'MODULE', NULL, NULL, NULL, NULL, 'appstore-add-outlined', '#05a045', NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999770526', '0', '系统首页', 'index', 'system', 'MENU', '1548901111999770525', 'MENU', '/index', 'index/index', 'home-outlined', NULL, 'TRUE', NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999770726', '0', '组织架构', NULL, 'wxq116zcyp', 'MENU', '1548901111999770525', 'CATALOG', '/e4y8y7ib2p', NULL, 'apartment-outlined', NULL, NULL, NULL, NULL, 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999770826', '1548901111999770726', '组织管理', 'sysOrg', '7scuix7595', 'MENU', '1548901111999770525', 'MENU', '/sys/org', 'sys/org/index', 'cluster-outlined', NULL, NULL, NULL, NULL, 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999770926', '1548901111999770726', '用户管理', 'sysUser', 'ue0wd497yb', 'MENU', '1548901111999770525', 'MENU', '/sys/user', 'sys/user/index', 'user-outlined', NULL, NULL, NULL, NULL, 6, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771026', '1548901111999770726', '职位管理', 'sysPosition', 'fkbckffqxi', 'MENU', '1548901111999770525', 'MENU', '/sys/position', 'sys/position/index', 'apartment-outlined', NULL, NULL, NULL, NULL, 7, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771126', '0', '权限管控', NULL, 'k7av3f3rg6', 'MENU', '1548901111999770525', 'CATALOG', '/5k9uuuzafi', NULL, 'user-switch-outlined', NULL, NULL, NULL, NULL, 8, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771226', '1548901111999771126', '角色管理', 'sysRole', 'hwjxhcg122', 'MENU', '1548901111999770525', 'MENU', '/sys/role', 'sys/role/index', 'deployment-unit-outlined', NULL, NULL, NULL, NULL, 9, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771326', '1548901111999771126', '模块管理', 'sysModule', 'opli26z18q', 'MENU', '1548901111999770525', 'MENU', '/sys/module', 'sys/resource/module/index', 'appstore-add-outlined', NULL, NULL, NULL, NULL, 10, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771426', '1548901111999771126', '菜单管理', 'sysMenu', 'q38j3bb839', 'MENU', '1548901111999770525', 'MENU', '/sys/menu', 'sys/resource/menu/index', 'pic-left-outlined', NULL, NULL, NULL, NULL, 11, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771626', '0', '基础工具', NULL, 'nplvu771br', 'MENU', '1548901111999770525', 'CATALOG', '/ozmlc6eyw5', NULL, 'tool-outlined', NULL, NULL, NULL, NULL, 13, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771726', '1548901111999771626', '文件管理', 'devFile', 'n25k83x4sy', 'MENU', '1548901111999770525', 'MENU', '/dev/file/index', 'dev/file/index', 'copy-outlined', NULL, NULL, NULL, NULL, 14, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771826', '1548901111999771626', '邮件推送', 'devEmail', 'x4fx2a91tq', 'MENU', '1548901111999770525', 'MENU', '/dev/email/index', 'dev/email/index', 'send-outlined', NULL, NULL, NULL, NULL, 15, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771926', '1548901111999771626', '短信发送', 'devSms', 'nnjsr7tkrs', 'MENU', '1548901111999770525', 'MENU', '/dev/sms/index', 'dev/sms/index', 'mail-outlined', NULL, NULL, NULL, NULL, 16, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999771927', '1548901111999771626', '消息推送', 'devPush', 'ECKjtnzE9A', 'MENU', '1548901111999770525', 'MENU', '/dev/push/index', 'dev/push/index', 'appstore-outlined', NULL, NULL, NULL, NULL, 16, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772026', '1548901111999771626', '站内信息', 'devMessage', '0yitzu8786', 'MENU', '1548901111999770525', 'MENU', '/dev/message/index', 'dev/message/index', 'message-outlined', NULL, NULL, NULL, NULL, 17, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772126', '0', '系统运维', NULL, '3poiqgf7zx', 'MENU', '1548901111999770525', 'CATALOG', '/a0l7fxfq3m', NULL, 'hdd-outlined', NULL, NULL, NULL, NULL, 18, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772226', '1548901111999772126', '三方用户', 'authThird', 'xf89fmzrtz', 'MENU', '1548901111999770525', 'MENU', '/auth/third', 'auth/third/index', 'team-outlined', NULL, NULL, NULL, NULL, 19, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772326', '1548901111999772126', '数据字典', 'devDict', 'pzr1auhqf3', 'MENU', '1548901111999770525', 'MENU', '/sys/dict', 'dev/dict/index', 'file-search-outlined', NULL, NULL, NULL, NULL, 20, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772426', '1548901111999772126', '系统配置', 'devConfig', '38zmn86vxg', 'MENU', '1548901111999770525', 'MENU', '/sys/config', 'dev/config/index', 'setting-outlined', NULL, NULL, NULL, NULL, 21, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772526', '1548901111999772126', '任务调度', 'devJob', 'mj2p3y3hzq', 'MENU', '1548901111999770525', 'MENU', '/dev/job', 'dev/job/index', 'field-time-outlined', NULL, NULL, NULL, NULL, 22, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772626', '1548901111999772126', '会话管理', 'authMonitor', '4x1fpyaxys', 'MENU', '1548901111999770525', 'MENU', '/auth/monitor', 'auth/monitor/index', 'usergroup-delete-outlined', NULL, NULL, NULL, NULL, 23, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772726', '1548901111999772126', '系统监控', 'devMonitor', 'sugg84qph2', 'MENU', '1548901111999770525', 'MENU', '/dev/monitor', 'dev/monitor/index', 'database-outlined', NULL, NULL, NULL, NULL, 24, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772826', '1548901111999772126', '连接监控', '连接监控', '1xw98nknao', 'MENU', '1548901111999770525', 'IFRAME', 'http://localhost:82/druid/index.html', NULL, 'console-sql-outlined', NULL, NULL, NULL, NULL, 25, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999772926', '1548901111999772126', '接口文档', 'jieKouWenDang', 'ookzmx37dt', 'MENU', '1548901111999770525', 'IFRAME', 'http://localhost:82/doc.html', NULL, 'file-word-outlined', NULL, NULL, NULL, NULL, 26, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773126', '1548901111999772126', '日志审计', NULL, 'i7wpmggo6a', 'MENU', '1548901111999770525', 'CATALOG', '/x1vjuegii4', NULL, 'robot-outlined', NULL, NULL, NULL, NULL, 27, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773226', '1548901111999773126', '访问日志', 'devVislog', 'gr29jwaigx', 'MENU', '1548901111999770525', 'MENU', '/dev/vislog', 'dev/log/vislog/index', 'bars-outlined', NULL, NULL, NULL, NULL, 28, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773250', '0', '在线开发', NULL, 'fk5m5c6b3u', 'MENU', '1548901111999770525', 'CATALOG', '/94mcv3octp', NULL, 'project-outlined', NULL, NULL, NULL, NULL, 41, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773254', '1548901111999773250', '代码生成', 'genIndex', 'ymyd8xlp5i', 'MENU', '1548901111999770525', 'MENU', '/gen', 'gen/index', 'rocket-outlined', NULL, NULL, NULL, NULL, 45, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773326', '1548901111999773126', '操作日志', 'devOplog', '4jbjjrz8h7', 'MENU', '1548901111999770525', 'MENU', '/dev/oplog', 'dev/log/oplog/index', 'bars-outlined', NULL, NULL, NULL, NULL, 29, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773426', '0', '开发示例', NULL, 'kyd5idwiwr', 'MENU', '1548901111999770525', 'CATALOG', '/e2re4evf5y', NULL, 'project-outlined', NULL, NULL, NULL, NULL, 30, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773427', '1548901111999773426', '图标选择', 'tuBiaoXuanZe', '97ygt0hy8t', 'MENU', '1548901111999770525', 'MENU', '/exm/iconSelect', 'exm/iconSelect/index', 'appstore-outlined', NULL, NULL, NULL, NULL, 31, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773428', '1548901111999773426', 'ECK线图', 'eCKXianTu', '7voetv0mru', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCKXianTu', 'exm/chart/eCKXianTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 32, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773429', '1548901111999773426', 'EC仪表图', 'eCYiBiaoTu', 'c4uor9wg1b', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCYiBiaoTu', 'exm/chart/eCYiBiaoTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 33, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773430', '1548901111999773426', 'EC散点图', 'eCSanDianTu', '6r6ti8izxi', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCSanDianTu', 'exm/chart/eCSanDianTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 34, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773431', '1548901111999773426', 'EC柱状图', 'eCZhuZhuangTu', 's3ft1ri9qz', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCZhuZhuangTu', 'exm/chart/eCZhuZhuangTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 35, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773432', '1548901111999773426', 'EC树形图', 'eCShuXingTu', '63lz6owubp', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCShuXingTu', 'exm/chart/eCShuXingTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 36, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773433', '1548901111999773426', 'EC漏斗图', 'eCLouDouTu', 'd46vov3j2d', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCLouDouTu', 'exm/chart/eCLouDouTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 37, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773434', '1548901111999773426', 'EC线形图', 'eCXianXingTu', 'dgp8hclhlr', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCXianXingTu', 'exm/chart/eCXianXingTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 38, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773435', '1548901111999773426', 'EC饼状图', 'eCBingZhuangTu', '2y1g7u2p1k', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/eCBingZhuangTu', 'exm/chart/eCBingZhuangTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 39, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773436', '1548901111999773426', 'G2进度图', 'g2JinDuTu', '8vvhyctv2w', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2JinDuTu', 'exm/chart/g2JinDuTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 40, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773437', '1548901111999773426', 'G2子弹图', 'g2ZiDanTu', '3lgc3ci5f3', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2ZiDanTu', 'exm/chart/g2ZiDanTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 41, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773438', '1548901111999773426', 'G2散点图', 'g2SanDianTu', 'e22qm4b30d', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2SanDianTu', 'exm/chart/g2SanDianTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 42, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773439', '1548901111999773426', 'G2柱状图', 'g2ZhuZhuangTu', '92huf33fcf', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2ZhuZhuangTu', 'exm/chart/g2ZhuZhuangTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 43, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773440', '1548901111999773426', 'G2漏斗图', 'g2LouDouTu', '7w3gnlts80', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2LouDouTu', 'exm/chart/g2LouDouTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 44, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773441', '1548901111999773426', 'G2折线图', 'g2ZheXianTu', '4g3gr90z1i', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2ZheXianTu', 'exm/chart/g2ZheXianTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 45, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773442', '1548901111999773426', 'G2词云图', 'g2CiYunTu', 'atpbicf8em', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2CiYunTu', 'exm/chart/g2CiYunTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 46, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773443', '1548901111999773426', 'G2面积图', 'g2MianJiTu', 'm5lnxo3d56', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2MianJiTu', 'exm/chart/g2MianJiTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 47, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773444', '1548901111999773426', 'G2饼状图', 'g2BingZhuangTu', 'tmn482a18x', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2BingZhuangTu', 'exm/chart/g2BingZhuangTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 48, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773445', '1548901111999773426', 'G2条形图', 'g2TiaoXingTu', 'aej0gwpe43', 'MENU', '1548901111999770525', 'MENU', '/exm/chart/g2TiaoXingTu', 'exm/chart/g2TiaoXingTu', 'appstore-outlined', NULL, NULL, NULL, NULL, 49, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773976', NULL, '业务', NULL, 'biz', 'MODULE', NULL, NULL, NULL, NULL, 'profile-outlined', '#d81b43', NULL, NULL, NULL, 50, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773977', '0', '公司架构', NULL, '3xavzjxt5z', 'MENU', '1548901111999773976', 'CATALOG', '/1nlpdpnief', NULL, 'cluster-outlined', NULL, NULL, NULL, NULL, 51, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773978', '1548901111999773977', '机构管理', 'bizOrg', 'mnt1f21q40', 'MENU', '1548901111999773976', 'MENU', '/biz/org', 'biz/org/index', 'cluster-outlined', NULL, NULL, NULL, NULL, 52, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773979', '1548901111999773977', '人员管理', 'bizUser', '38dptg40lo', 'MENU', '1548901111999773976', 'MENU', '/biz/user', 'biz/user/index', 'user-outlined', NULL, NULL, NULL, NULL, 53, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1548901111999773980', '1548901111999773977', '岗位管理', 'bizPosition', 'l6b7kcqaji', 'MENU', '1548901111999773976', 'MENU', '/biz/position', 'biz/position/index', 'apartment-outlined', NULL, NULL, NULL, NULL, 54, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571129529564758017', '1548901111999773978', '新增机构', NULL, 'bizOrgAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571129929961406466', '1548901111999773978', '批量删除', NULL, 'bizOrgBatchDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571130756155408386', '1548901111999773978', '编辑机构', NULL, 'bizOrgEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571130811058847745', '1548901111999773978', '删除机构', NULL, 'bizOrgDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571130973294526465', '1548901111999773979', '新增人员', NULL, 'bizUserAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571131043532341249', '1548901111999773979', '批量删除', NULL, 'bizUserBatchDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571131137006600193', '1548901111999773979', '编辑人员', NULL, 'bizUserEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571131427361488898', '1548901111999773979', '授权角色', NULL, 'bizUserGrantRole', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571131544973967361', '1548901111999773979', '重置密码', NULL, 'bizUserPwdReset', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571131727656878081', '1548901111999773979', '删除人员', NULL, 'bizUserDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571132076853657601', '1548901111999773979', '启用禁用', NULL, 'bizUserUpdataStatus', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571132393993371649', '1548901111999773980', '新增岗位', NULL, 'bizPositionAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571132468178026497', '1548901111999773980', '批量删除', NULL, 'bizPositionBatchDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571132576143605761', '1548901111999773980', '编辑岗位', NULL, 'bizPositionEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1571132658851086338', '1548901111999773980', '删除岗位', NULL, 'bizPositionDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1623378345382506498', '0', '移动端管理', NULL, NULL, 'MENU', '1548901111999770525', 'CATALOG', '/7029144034425704448', NULL, 'mobile-outlined', NULL, NULL, NULL, NULL, 50, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1623378675591671810', '1623378345382506498', '模块管理', 'mobileModuleIndex', NULL, 'MENU', '1548901111999770525', 'MENU', '/mobile/module/index', 'mobile/resource/module/index', 'build-outlined', NULL, NULL, NULL, NULL, 51, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1623378996099411969', '1623378345382506498', '菜单管理', 'mobileMenuIndex', NULL, 'MENU', '1548901111999770525', 'MENU', '/mobile/menu/index', 'mobile/resource/menu/index', 'appstore-add-outlined', NULL, NULL, NULL, NULL, 52, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1635110416263262209', '1548901111999773979', '导出个人', NULL, 'bizUserExportUserInfo', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1635110536451043329', '1548901111999773979', '批量导出', NULL, 'bizUserBatchExport', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1689891405367353346', '0', '业务字典', 'bizDict', NULL, 'MENU', '1548901111999773976', 'MENU', '/biz/dict/index', 'biz/dict/index', 'read-outlined', NULL, NULL, NULL, NULL, 12, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1689892202679377921', '1689891405367353346', '编辑字典', NULL, 'bizDictEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1689894316554067969', '1548901111999773426', '高德地图', 'gaodeMap', 'noten', 'MENU', '1548901111999770525', 'MENU', '/exm/map/gaodeMap', 'exm/map/gaodeMap', 'environment-outlined', NULL, NULL, NULL, NULL, 99, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1689894577238450177', '1548901111999773426', '百度地图', 'baiduMap', 'noten', 'MENU', '1548901111999770525', 'MENU', '/exm/map/baiduMap', 'exm/map/baiduMap', 'compass-outlined', NULL, NULL, NULL, NULL, 99, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811290937444667393', '0', '通知公告', 'notice', 'oFordpxYEi', 'MENU', '1548901111999773976', 'MENU', '/biz/notice', 'biz/notice/index', 'appstore-outlined', NULL, NULL, NULL, NULL, 99, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811290937469833217', '1811290937444667393', '新增通知公告', NULL, 'bizNoticeAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811290937486610434', '1811290937444667393', '编辑通知公告', NULL, 'bizNoticeEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811290937494999042', '1811290937444667393', '删除通知公告', NULL, 'bizNoticeDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811290937503387650', '1811290937444667393', '批量删除', NULL, 'bizNoticeBatchDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811328402989662210', '1811290937444667393', '更新状态', NULL, 'bizNoticerUpdateStatus', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811330359695400961', '1811290937444667393', '通知公告详情', NULL, 'bizNoticeDetail', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1811800584425500674', '1548901111999772126', '轮播图', 'slideshow', 'XPLrleqZof', 'MENU', '1548901111999770525', 'MENU', '/dev/slideshow', 'dev/slideshow/index', 'file-image-outlined', NULL, 'TRUE', NULL, NULL, 99, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1813959658013433858', '0', '业务首页', 'bizIndex', 'vY0Qc3fkcR', 'MENU', '1548901111999773976', 'MENU', '/biz/index', 'biz/index/index', 'home-outlined', NULL, 'TRUE', NULL, NULL, 0, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1870158678418993154', '1548901111999770726', '用户组管理', 'groupIndex', 'd4KUq2ZnK7', 'MENU', '1548901111999770525', 'MENU', '/sys/group', 'sys/group/index', 'team-outlined', NULL, 'TRUE', NULL, NULL, 99, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1871278073018986498', '1548901111999773977', '用户组', 'bizGroupIndex', 'HQVofyRf7Z', 'MENU', '1548901111999773976', 'MENU', '/biz/group', 'biz/group/index', 'team-outlined', NULL, 'TRUE', NULL, NULL, 55, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1871278073086095361', '1871278073018986498', '新增用户组', NULL, 'bizGroupAdd', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1871278073086095362', '1871278073018986498', '编辑用户组', NULL, 'bizGroupEdit', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1871278073086095363', '1871278073018986498', '删除用户组', NULL, 'bizGroupDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1871278073086095364', '1871278073018986498', '批量删除', NULL, 'bizGroupBatchDelete', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_RESOURCE` VALUES ('1871280381043814402', '1871278073018986498', '授权用户', NULL, 'bizGroupGrantUser', 'BUTTON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_ROLE
-- ----------------------------
DROP TABLE IF EXISTS `SYS_ROLE`;
CREATE TABLE `SYS_ROLE`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ORG_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织id',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `CATEGORY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_ROLE
-- ----------------------------
INSERT INTO `SYS_ROLE` VALUES ('1570687866138206208', NULL, '超级管理员', 'superAdmin', 'GLOBAL', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_ROLE` VALUES ('1570687866138206209', NULL, '业务管理员', 'bizAdmin', 'GLOBAL', 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_USER
-- ----------------------------
DROP TABLE IF EXISTS `SYS_USER`;
CREATE TABLE `SYS_USER`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AVATAR` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '头像',
  `SIGNATURE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '签名',
  `ACCOUNT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账号',
  `PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `NICKNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `GENDER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `AGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `BIRTHDAY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `NATION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '民族',
  `NATIVE_PLACE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `HOME_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '家庭住址',
  `MAILING_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '通信地址',
  `ID_CARD_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件类型',
  `ID_CARD_NUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `CULTURE_LEVEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文化程度',
  `POLITICAL_OUTLOOK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `COLLEGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `EDUCATION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学历',
  `EDU_LENGTH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学制',
  `DEGREE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学位',
  `PHONE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `EMAIL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `HOME_TEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭电话',
  `OFFICE_TEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '办公电话',
  `EMERGENCY_CONTACT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '紧急联系人',
  `EMERGENCY_PHONE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '紧急联系人电话',
  `EMERGENCY_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '紧急联系人地址',
  `EMP_NO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `ENTRY_DATE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入职日期',
  `ORG_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '机构id',
  `POSITION_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位id',
  `POSITION_LEVEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职级',
  `DIRECTOR_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主管id',
  `POSITION_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '兼任信息',
  `LAST_LOGIN_IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录ip',
  `LAST_LOGIN_ADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上次登录地点',
  `LAST_LOGIN_TIME` datetime NULL DEFAULT NULL COMMENT '上次登录时间',
  `LAST_LOGIN_DEVICE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '上次登录设备',
  `LATEST_LOGIN_IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最新登录ip',
  `LATEST_LOGIN_ADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最新登录地点',
  `LATEST_LOGIN_TIME` datetime NULL DEFAULT NULL COMMENT '最新登录时间',
  `LATEST_LOGIN_DEVICE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '最新登录设备',
  `USER_STATUS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户状态',
  `SORT_CODE` int(11) NULL DEFAULT NULL COMMENT '排序码',
  `EXT_JSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_USER
-- ----------------------------
INSERT INTO `SYS_USER` VALUES ('1543837863788879871', 'data:image/jpg;base64,/9j/4AAQSkZJRgABAgAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAGQDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDKooorrMAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACuivfC32Twja699s3+ewXyPKxtzn+LPPT0p/ghtUh1p7nSrBbyWOIho2lCAAkc5Jr1e4vdbTRIbiHSkk1FiPMtTOoCDnPzZwe351nKTTKirnlukeAdV1rS4dQtrizSGbdtWR2DDDFecKe4q9/wqzXP+frT/APv4/wD8RWnpurab4c/tTVL+ZzrM00itYA58pi27aMEgjJHzf1q/o11pfhuxv9Rn8Qw3s14qzCPIDA4JAChicktScpDSR5zoOhXOv6qllb8L1kl25Ea9z/gK3dT+G+s2t35enxm+h2gmYlIufTBfP41r/D2K8l8N6oLe/hsx5mPOaAMU+Xls7h29elbBGly6PZWFx4ss3a3kDPOlwEeRe65EnU+pz9KHJ3BRVjjdC8A32q3d7Bdy/YfspCMSgky5GcDDAdMHr3FU77wPr9jFcXD2J+zQhnMhljzsHOcBienavQ7mbTjpz2On+K9Os4i6srmRZJMDqCxf5skdT246VT8Wac+s6RNq1prsbQ21uyyJaglJiByCQ5A+mO/OaFN3DlVjyaiiitSAooooAKKKKAOm8CLcTeJYrSC8ntUmRhI8BAbAUkdQR1A7V6Po73l1pet2z6pKskF7LbxXUoBaNQq4J6A9TXC/DNIT4mklllRDHbsUDHBJ4zj6DNdxbapoXijRby3t7qO2lvARMhIDhsAZwevAHPtWM9zSOxBobXml6FrrwyHUryG8kZXCf65tiHopP6VY0DWdY1ez1L+1dLax8qMeXuidN+Q2fvdcYH51U0rwprWh2rWumeIIFgZzIQ9oCckAep7AVfOk+JZI2STxJAAwIIFgp4/76qXYaueXeCreC78X2EFzDHNExfdHIoZT8jHkGvTL3SIIrt0ttE8NGEY2mfCP07gRnHPvXAeEbeOz+I1tbRTeckUsqCTbt3YRhnGTXoeq2Qm1KWT+yvD0+cfvLx8Sngfe+Q/hz0xVTepMdin/AGZ/1A/Cn/ff/wBqrmPiVaabavpn9n29pDuEm/7Oirn7uM4/Gun/ALNH/QD8J/8Afz/7VWJ8Q9NsrPw/p80FhZW07yjzGtYwAfkJIBABIzRF6jex5vRRRWxmFFFFABRRRQA5HaNgyMVYdCDg02iigAooooAkguJrWdZreaSGVfuvGxVh24Ipbi4nu52nuZpJpWxukkYsxwMck1FRQAVYmv7y5t47ee7nlgiwI43kLKmBgYBOBxVeigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA/9k=', NULL, 'superAdmin', '207cf410532f92a47dee245ce9b11ff71f578ebd763eb3bbea44ebd043d018fb', '超管', NULL, '男', NULL, '1990-01-01', '汉', '', '', '', '身份证', '', NULL, NULL, NULL, NULL, NULL, NULL, 'eb77186abe605f8de5958df60ef4a279', 'superAdmin@foxmail.com', NULL, NULL, '', '', '', '0000', '2022-07-04', '1543842934270394368', '1543899639134019584', 'C1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENABLE', 1, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);
INSERT INTO `SYS_USER` VALUES ('1543837863788879873', 'data:image/jpg;base64,/9j/4AAQSkZJRgABAgAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAGQDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwCeiiivzs/RQooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACtfw7of8Ab9/JbfaPI2RGTds3Z5AxjI9af4VisbjXoINQiEkUmVUEkAP2z6+mPeus0PSv7J8c38KLiF7YyRf7pdePwOR+FejgsH7VwnLWLdmjzsbjPZKcI6SSun8zmNM8Nf2jr97pf2vy/s2/955ed21gvTPHX1rIvrb7FqFza79/kytHuxjODjOK7bwz/wAj9rP/AG2/9Gim6NolvqHiPXLu+iV7WKeVAH6bixJP4D+dbfUY1IRVNWk5NfJGP16VOcnUd4qMXbzZyejaRPrWopaw5UHmSTGQi+tbGoeBdVt7nZZIbuLaD5hKR8+mC2a2fCqvNp2r/wBn3MdlbGY+W7xbmjXHXJI7evSrpGnyaXa2c3iS1ZoJNzTJNsZ19Mh+vvz9K1oYCjKinNavW90utrK/33sZV8wrRrtQei0tZvpe7t91rnLaP4NvNRubqG5k+yfZyFY7Q+WIzjg46Y79xVa78JazaRzzPaHyIgzFzIn3R3wGPbtXbXEtj9ha0svEdjbRl1YMXV346gsX5yf04qr4ksW1TTZdSttXQxQQEOtvkrKQOQSHx+nfvV1MuoKk+VNyWuklr/w3orkU8xruquZpRemsXp/w/q7Hm9FFFeAe+FFFFABRRRQA+KR4ZUljYq6MGUjsR0r1rS9X03V72CSGQNeC1LOqjhASuQT65A/WvO/DmnaZqN1Mmp3n2WNUyjeaqZOenzCu00ax8N6Hdvc22sxO7oYyJbqMjGQe2PSvcylVIe9dcr3u9dDw82dKfu2fMtrLTUoeGf8AkftZ/wC23/o0U/X9csLPRb6xsJf9KmuZEmUjDAliWPuOwrSsYvD2n6vdalFrEDTXG7er3MZUbmDHHfqPWs670DwreXk91Jrah5pGkYLdxYBJyccV1unVhQcKbjduXXo+xyKpSnXU6ilZKPTqu5y3hSCK58TWcU8SSxsX3I6hgfkbsa76702GO5dYNJ0ExjGPOwrdO4CGuR0K3trXx/DBZzedbo7hJNwbcPLPccGux1G082/kf+ztFmzj57lsSHgdfkP8+lZ5dTth5JrVSt+C8maZjU5sRFp6OKf4vzRW+wf9Qjw5/wB9/wD2uuf8eW1jbNYfYoLaLcJN/kIq5+7jOPxrf+wD/oE+HP8Avv8A+11leNrC1tdFspYbO0gleQbzboAD8pyAQBkZq8ZC+Gnp2/P0RGDnbEw17/l6s4SiiivmT6YKKKKACiiigAooooAKKKKAJIZ5beVZYJXikXo6MVI/EUTTzXMrSzyvLI3V3YsT+JqOind2t0FZXv1Cp5b26ngSGa5mkijxsR5CVXAwMA9OKgooTa2BpPVhRRRSGFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAf/Z', NULL, 'bizAdmin', '207cf410532f92a47dee245ce9b11ff71f578ebd763eb3bbea44ebd043d018fb', '业管', NULL, '男', NULL, '1995-01-01', '汉', '', '', '', '身份证', '', NULL, NULL, NULL, NULL, NULL, NULL, '9c8f683ccff14071f90f1f51ba83f069', 'bizAdmin@foxmail.com', NULL, NULL, '', '', '', '0001', '2022-07-04', '1543842934270394368', '1543899639134019584', 'C1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ENABLE', 2, NULL, 'NOT_DELETE', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_USER_EXT
-- ----------------------------
DROP TABLE IF EXISTS `SYS_USER_EXT`;
CREATE TABLE `SYS_USER_EXT`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `USER_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `SOURCE_FROM_TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '来源类别',
  `PASSWORD_UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '密码修改日期',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户扩展' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_USER_EXT
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_USER_PASSWORD
-- ----------------------------
DROP TABLE IF EXISTS `SYS_USER_PASSWORD`;
CREATE TABLE `SYS_USER_PASSWORD`  (
  `ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `USER_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `PASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `DELETE_FLAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '删除标志',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户密码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SYS_USER_PASSWORD
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
