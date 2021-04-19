DROP TABLE IF EXISTS DATA_CONFIG;
CREATE TABLE DATA_CONFIG  (
  ID bigint NOT NULL AUTO_INCREMENT,
  CREATED_DT datetime NULL,
  CREATED_BY varchar(32) NULL,
  NAME varchar(16) NULL,
  VALUE varchar(16) NULL,
  TYPE_ID varchar(16) NULL,
  PRIMARY KEY (ID)
);

INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (1, '2021-04-17 09:04:33', 'admin', '男', '1', 'sex');
INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (2, '2021-04-17 09:04:33', 'admin', '女', '0', 'sex');
INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (3, '2021-04-17 09:04:33', 'admin', '大一', '1', 'level');
INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (4, '2021-04-17 09:04:33', 'admin', '大二', '2', 'level');
INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (5, '2021-04-17 09:04:33', 'admin', '大三', '3', 'level');
INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (6, '2021-04-17 09:04:33', 'admin', '大四', '4', 'level');
INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (7, '2021-04-17 09:04:33', 'admin', '准毕业生', '1', 'role');
INSERT INTO `forum-app`.`DATA_CONFIG`(`ID`, `CREATED_DT`, `CREATED_BY`, `NAME`, `VALUE`, `TYPE_ID`) VALUES (8, '2021-04-17 09:04:33', 'admin', '校友', '2', 'role');


DROP TABLE IF EXISTS TABLE_COMMENT;
CREATE TABLE TABLE_COMMENT  (
  ID bigint NOT NULL AUTO_INCREMENT,
  created_dt datetime NULL COMMENT '创建时间',
  created_by varchar(32) NULL COMMENT '创建人',
  POST_ID bigint NULL COMMENT '帖子ID',
  EVALUATE_CONTENT varchar(255) NULL COMMENT '评价内容',
  EVALUATE_DT longblob NULL COMMENT '评价时间',
  user_id bigint NULL COMMENT '人员ID',
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS TABLE_POST;
CREATE TABLE TABLE_POST  (
  id bigint NOT NULL AUTO_INCREMENT,
  CREATED_DT datetime NULL COMMENT '创建时间',
  CREATED_BY varchar(32) NULL COMMENT '创建人',
  POST_CODE varchar(32) NULL COMMENT '帖子ID',
  POST_TITLE varchar(128) NULL COMMENT '帖子标题',
  POST_CONTENT text NULL COMMENT '帖子主体内容',
  POST_FILE varchar(50) NULL COMMENT '帖子附件',
  browse_COUNT int NULL COMMENT '浏览次数',
  Boutique varchar(1) NULL COMMENT '是否精品',
  PRIMARY KEY (id)
);

INSERT INTO TABLE_POST(id, CREATED_DT, CREATED_BY, POST_CODE, POST_TITLE, POST_CONTENT, POST_FILE, browse_COUNT, Boutique) VALUES (1, '2021-04-16 10:11:02', 'admin', '111', '测试标题111', '测试内容111', '111.zip', 0, NULL);
INSERT INTO TABLE_POST(id, CREATED_DT, CREATED_BY, POST_CODE, POST_TITLE, POST_CONTENT, POST_FILE, browse_COUNT, Boutique) VALUES (2, '2021-04-16 10:11:11', 'admin', '222', '测试标题222', '测试内容222', '222.zip', 0, NULL);

create or REPLACE view VIEW_POST as 
SELECT p.*, u.name from TABLE_POST p left join TABLE_USER u on p.CREATED_BY = u.USERNAME;

DROP TABLE IF EXISTS TABLE_USER;
CREATE TABLE TABLE_USER  (
  id bigint NOT NULL AUTO_INCREMENT,
  CREATED_DT datetime NULL COMMENT '创建时间',
  CREATED_BY varchar(32) NULL COMMENT '创建人',
  USERNAME varchar(32) NULL COMMENT '用户名',
  PASSWORD varchar(32) NULL COMMENT '密码',
  NAME varchar(20) NULL COMMENT '姓名',
  STUDY_CODE varchar(50) NULL COMMENT '学号',
  SEX varchar(1) NULL COMMENT '性别',
  LEVEL varchar(10) NULL COMMENT '年级',
  subject varchar(128) NULL COMMENT '专业',
  PHONE varchar(50) NULL COMMENT '联系方式',
  portrait varchar(50) NULL COMMENT '头像',
  remark varchar(255) NULL COMMENT '简介',
  role varchar(1) NULL COMMENT '角色',
  PRIMARY KEY (id)
);

INSERT INTO `forum-app`.`TABLE_USER`(`id`, `CREATED_DT`, `CREATED_BY`, `USERNAME`, `PASSWORD`, `NAME`, `STUDY_CODE`, `SEX`, `LEVEL`, `subject`, `PHONE`, `portrait`, `remark`, `role`) VALUES (1, '2021-04-16 16:45:33', 'admin', 'admin', '123', '管理员', 'xxxxxxxx', '1', '1', 'xx专业', '88888888', NULL, '系统管理员', '0');

create or REPLACE view VIEW_USER as
SELECT u.*,
(SELECT c.NAME from DATA_CONFIG c where c.VALUE = u.sex and c.TYPE_ID = 'sex') as sexView,
(SELECT c.NAME from DATA_CONFIG c where c.VALUE = u.LEVEL and c.TYPE_ID = 'level') as levelView,
(SELECT c.NAME from DATA_CONFIG c where c.VALUE = u.role and c.TYPE_ID = 'role') as roleView
 from TABLE_USER u;
