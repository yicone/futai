USE [FuTai]
GO
/****** 对象:  Table [dbo].[Comment]    脚本日期: 10/20/2009 19:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[CommontId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[NickName] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[ProductId] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[Title] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Content] [varchar](1000) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_Comment_CreateDate]  DEFAULT (getdate()),
	[AuditStatus] [int] NOT NULL CONSTRAINT [DF_Comment_AuditStatus]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

-------------------------------------------------------------------------------

USE [FuTai]
GO
/****** 对象:  Table [dbo].[User]    脚本日期: 10/20/2009 20:00:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[CardId] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[Email] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[NickName] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[Password] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[PasswordAnswer] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[PasswordQuestion] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Authority] [int] NULL,
	[UserName] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[BirthDate] [datetime] NULL,
	[Sex] [bit] NULL,
	[Phone] [nchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[Impression] [nvarchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
