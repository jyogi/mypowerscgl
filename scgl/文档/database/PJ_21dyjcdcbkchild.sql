USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[PJ_21dyjcdcbkchild]    脚本日期: 11/06/2012 08:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PJ_21dyjcdcbkchild](
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[GdsCode] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[GdsName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[year] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[month] [int] NULL,
	[alltime] [int] NULL,
	[uptime] [int] NULL,
	[downtime] [int] NULL,
	[hegetime] [int] NULL,
	[csxl] [float] NULL,
	[cxxl] [float] NULL,
	[hegel] [float] NULL,
	[bignumvalue] [float] NULL,
	[bigshowtime] [datetime] NULL,
	[minnumvalue] [float] NULL,
	[minshowtime] [datetime] NULL,
	[cbr] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[by1] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[by2] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[by3] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[by4] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateMan] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_PJ_21dyjcdcbkchild] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供电所代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'GdsCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供电所名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'GdsName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年度' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'year'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'month'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'alltime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'超上限' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'uptime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'超下限' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'downtime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'hegetime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'超上限率' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'csxl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'超下限率' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'cxxl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合格率' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'hegel'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大电压数值' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'bignumvalue'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大电压出显时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'bigshowtime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小电压数值' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'minnumvalue'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小电压出显时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'minshowtime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抄表人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'cbr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'填写人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'CreateMan'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'填写日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PJ_21dyjcdcbkchild', @level2type=N'COLUMN', @level2name=N'CreateDate'
