USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[PJ_25zbdymx]    脚本日期: 03/28/2012 09:50:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PJ_25zbdymx](
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[xh] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[gl] [float] NULL,
	[ts] [int] NULL,
	[dy] [int] NULL,
	[azrq] [datetime] NULL,
	[sccj] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Createdate] [datetime] NULL,
 CONSTRAINT [PK_PJ_25zbdymx] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_25zbdymx', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_25zbdymx', @level2type=N'COLUMN',@level2name=N'xh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_25zbdymx', @level2type=N'COLUMN',@level2name=N'gl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'台数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_25zbdymx', @level2type=N'COLUMN',@level2name=N'ts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电压' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_25zbdymx', @level2type=N'COLUMN',@level2name=N'dy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安装日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_25zbdymx', @level2type=N'COLUMN',@level2name=N'azrq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PJ_25zbdymx', @level2type=N'COLUMN',@level2name=N'sccj'