USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[LP_Temple]    脚本日期: 06/21/2011 10:40:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LP_Temple](
	[LPID] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentID] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CtrlType] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[CtrlLocation] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CtrlSize] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CellName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[CellPos] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WordCount] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[EventName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[IsAutoExecute] [int] NULL,
	[WorkflowPos] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[SqlSentence] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[SqlColName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[AffectLPID] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[AffectEvent] [varchar](800) COLLATE Chinese_PRC_CI_AS NULL,
	[RelateLPID] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[DocContent] [image] NULL,
	[ImageAttachment] [image] NULL,
	[SignImg] [image] NULL,
	[Kind] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[SortID] [int] NULL,
	[IsVisible] [int] NULL,
	[ColumnName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Status] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[ComBoxItem] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[ExtraWord] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_LP_TEMPLE] PRIMARY KEY CLUSTERED 
(
	[LPID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'LPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'CtrlType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件位置（严格控制格式），如：100,100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'CtrlLocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件大小（严格控制格式），如：100,100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'CtrlSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单元格名字，可能有多个，用|号分开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'CellName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单元格位置，与CellName顺序对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'CellPos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单元格对应的字数，与CellName和CellPos对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'WordCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确定控件内容事件，一般用tab或enter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'EventName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动执行填充excel单元格数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'IsAutoExecute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属流程位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'WorkflowPos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sql语句，用于从数据库中取数据，如果受其他控件影响，用@号表示控件值，与RelateLPID顺序对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'SqlSentence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要查找的表的列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'SqlColName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受此控件影响的其他控件，用|号分开，用于联动事件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'AffectLPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联触发事件，用|号分开，与AffectLPID对应，用于联动事件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'AffectEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'影响到此控件的控件ID，用于联动事件，可能有多个，用‘|’号隔开，用于取那些控件的值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'RelateLPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'excel模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'DocContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'ImageAttachment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'SignImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'票的种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'Kind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'IsVisible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'excel中表格的列名，用|线分开，如：工作地点|工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'ColumnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'combox集合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'ComBoxItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'额外字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Temple', @level2type=N'COLUMN',@level2name=N'ExtraWord'
GO