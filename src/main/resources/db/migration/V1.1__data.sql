USE [forum]
GO

/****** Object:  Table [dbo].[DATA_CONFIG]    Script Date: 04/19/2021 13:10:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DATA_CONFIG](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CREATED_DT] [datetime2](7) NULL,
	[CREATED_BY] [varchar](32) NULL,
	[NAME] [varchar](16) NULL,
	[VALUE] [varchar](16) NULL,
	[TYPE_ID] [varchar](16) NULL,
 CONSTRAINT [_copy_3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [forum]
GO

/****** Object:  Table [dbo].[table_comment]    Script Date: 04/19/2021 13:11:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[table_comment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[created_dt] [datetime2](7) NULL,
	[created_by] [varchar](32) NULL,
	[POST_ID] [bigint] NULL,
	[EVALUATE_CONTENT] [varchar](255) NULL,
	[EVALUATE_DT] [varbinary](max) NULL,
	[user_id] [bigint] NULL,
 CONSTRAINT [_copy_2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [forum]
GO

/****** Object:  Table [dbo].[table_post]    Script Date: 04/19/2021 13:11:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[table_post](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[CREATED_DT] [datetime2](7) NULL,
	[CREATED_BY] [varchar](32) NULL,
	[POST_CODE] [varchar](32) NULL,
	[POST_TITLE] [varchar](128) NULL,
	[POST_CONTENT] [varchar](max) NULL,
	[POST_FILE] [varchar](50) NULL,
	[browse_COUNT] [int] NULL,
	[Boutique] [varchar](1) NULL,
 CONSTRAINT [_copy_4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [forum]
GO

/****** Object:  Table [dbo].[table_user]    Script Date: 04/19/2021 13:12:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[table_user](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[CREATED_DT] [datetime2](7) NULL,
	[CREATED_BY] [varchar](32) NULL,
	[USERNAME] [varchar](32) NULL,
	[PASSWORD] [varchar](32) NULL,
	[NAME] [varchar](20) NULL,
	[STUDY_CODE] [varchar](50) NULL,
	[SEX] [varchar](1) NULL,
	[LEVEL] [varchar](10) NULL,
	[subject] [varchar](128) NULL,
	[PHONE] [varchar](50) NULL,
	[portrait] [varchar](50) NULL,
	[remark] [varchar](255) NULL,
	[role] [nvarchar](1) NULL,
 CONSTRAINT [_copy_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '男', '1', 'sex');
INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '女', '0', 'sex');
INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '大一', '1', 'level');
INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '大二', '2', 'level');
INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '大三', '3', 'level');
INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '大四', '4', 'level');
INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '准毕业生', '1', 'role');
INSERT INTO DATA_CONFIG(CREATED_DT, CREATED_BY, NAME, VALUE, TYPE_ID) VALUES ('2021-04-17 09:04:33', 'admin', '校友', '2', 'role');

INSERT INTO TABLE_POST(CREATED_DT, CREATED_BY, POST_CODE, POST_TITLE, POST_CONTENT, POST_FILE, browse_COUNT, Boutique) VALUES ('2021-04-16 10:11:02', 'admin', '111', '测试标题111', '测试内容111', '111.zip', 0, NULL);
INSERT INTO TABLE_POST(CREATED_DT, CREATED_BY, POST_CODE, POST_TITLE, POST_CONTENT, POST_FILE, browse_COUNT, Boutique) VALUES ('2021-04-16 10:11:11', 'admin', '222', '测试标题222', '测试内容222', '222.zip', 0, NULL);

create view VIEW_POST as 
SELECT p.*, u.name from TABLE_POST p left join TABLE_USER u on p.CREATED_BY = u.USERNAME;

INSERT INTO TABLE_USER(CREATED_DT, CREATED_BY, USERNAME, PASSWORD, NAME, STUDY_CODE, SEX, LEVEL, subject, PHONE, portrait, remark, role) VALUES ('2021-04-19 09:11:40', 'admin', 'admin', '123', '管理员', 'xxxxxxxx', '1', '1', 'xx专业', '88888888', '/image/user/admin.png', '系统管理员', '0');

create view VIEW_USER as
SELECT u.*,
(SELECT c.NAME from DATA_CONFIG c where c.VALUE = u.sex and c.TYPE_ID = 'sex') as sexView,
(SELECT c.NAME from DATA_CONFIG c where c.VALUE = u.LEVEL and c.TYPE_ID = 'level') as levelView,
(SELECT c.NAME from DATA_CONFIG c where c.VALUE = u.role and c.TYPE_ID = 'role') as roleView
 from TABLE_USER u;
