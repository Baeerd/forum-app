DROP TABLE IF EXISTS DATA_CONFIG;
CREATE TABLE `DATA_CONFIG`  (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `CREATED_DT` datetime NULL,
  `CREATED_BY` varchar(32) NULL,
  `NAME` varchar(16) NULL,
  `VALUE` varchar(16) NULL,
  `TYPE_ID` varchar(16) NULL,
  PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS TABLE_COMMENT;
CREATE TABLE `TABLE_COMMENT`  (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `created_dt` datetime NULL COMMENT '创建时间',
  `created_by` varchar(32) NULL COMMENT '创建人',
  `POST_ID` bigint NULL COMMENT '帖子ID',
  `EVALUATE_CONTENT` varchar(255) NULL COMMENT '评价内容',
  `EVALUATE_DT` longblob NULL COMMENT '评价时间',
  `user_id` bigint NULL COMMENT '人员ID',
  PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS TABLE_POST;
CREATE TABLE `TABLE_POST`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `CREATED_DT` datetime NULL COMMENT '创建时间',
  `CREATED_BY` varchar(32) NULL COMMENT '创建人',
  `POST_CODE` varchar(32) NULL COMMENT '帖子ID',
  `POST_TITLE` varchar(128) NULL COMMENT '帖子标题',
  `POST_CONTENT` text NULL COMMENT '帖子主体内容',
  `POST_FILE` varchar(50) NULL COMMENT '帖子附件',
  `browse_COUNT` int NULL COMMENT '浏览次数',
  `Boutique` varchar(1) NULL COMMENT '是否精品',
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS TABLE_ROLE;
CREATE TABLE `TABLE_ROLE`  (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int NULL COMMENT '角色ID',
  `ROLE_DESC` varchar(128) NULL COMMENT '角色描述',
  PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS TABLE_USER;
CREATE TABLE `TABLE_USER`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `CREATED_DT` datetime NULL COMMENT '创建时间',
  `CREATED_BY` varchar(32) NULL COMMENT '创建人',
  `USERNAME` varchar(32) NULL COMMENT '用户名',
  `PASSWORD` varchar(32) NULL COMMENT '密码',
  `NAME` varchar(20) NULL COMMENT '姓名',
  `STUDY_CODE` varchar(50) NULL COMMENT '学号',
  `SEX` varchar(1) NULL COMMENT '性别',
  `LEVEL` varchar(10) NULL COMMENT '年级',
  `subject` varchar(128) NULL COMMENT '专业',
  `PHONE` varchar(50) NULL COMMENT '联系方式',
  `portrait` varchar(50) NULL COMMENT '头像',
  `remark` varchar(255) NULL COMMENT '简介',
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS TABLE_USER_ROLE;
CREATE TABLE `TABLE_USER_ROLE`  (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL COMMENT '人员ID',
  `ROLE_ID` bigint NULL COMMENT '角色ID',
  PRIMARY KEY (`ID`)
);

