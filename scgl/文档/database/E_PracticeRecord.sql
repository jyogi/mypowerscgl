USE [ebadascgl]
GO
/****** 对象:  Table [dbo].[E_PracticeRecord]    脚本日期: 10/20/2013 20:20:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E_PracticeRecord](
	[ID] [nvarchar](50) NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[PracticeDate] [datetime] NULL,
	[PracticeNum] [int] NULL,
	[RightPercent] [float] NULL,
	[Sequence] [int] NULL,
	[BySCol1] [nvarchar](200) NULL,
	[BySCol2] [nvarchar](200) NULL,
	[BySCol3] [nvarchar](200) NULL,
	[BySCol4] [nvarchar](200) NULL,
	[BySCol5] [nvarchar](200) NULL,
	[Remark] [nvarchar](200) NULL,
	[RowVersion] [timestamp] NULL,
 CONSTRAINT [PK_E_PracticeRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'练习时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'PracticeDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 练习题数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'PracticeNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正确率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'RightPercent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'BySCol1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'BySCol2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'BySCol3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'BySCol4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'BySCol5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间戳' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'E_PracticeRecord', @level2type=N'COLUMN',@level2name=N'RowVersion'