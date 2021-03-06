USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[PJ_06sbxsmx]    脚本日期: 03/28/2012 20:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PJ_06sbxsmx](
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
        [ParentID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgCode] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[OrgName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LineID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LineName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[xlqd] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[xssj] [datetime] NULL,
	[xsr] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[qxnr] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[qxlb] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[xcr] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[xcrq] [datetime] NULL,
	[CreateMan] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateDate] [datetime] NULL,
	[gzrjID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[xcqx] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL DEFAULT (''),
 CONSTRAINT [PK_PJ_06SBXSMX] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供电所代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'OrgCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供电所名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'OrgName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'LineID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'LineName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡视区段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'xlqd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡视时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'xssj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巡视人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'xsr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缺陷内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'qxnr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缺陷类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'qxlb'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消除人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'xcr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消除日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'xcrq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'填写人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'CreateMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'填写日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'gzrjID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'gzrjID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消缺期限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx', @level2type=N'COLUMN',@level2name=N'xcqx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备巡视及缺陷消除记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_06sbxsmx'