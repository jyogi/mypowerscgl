USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[WF_TableFieldValue]    脚本日期: 10/18/2011 15:25:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WF_TableFieldValue](
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[RecordId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[FieldId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WorkFlowId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WorkFlowInsId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WorkTaskId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WorkTaskInsId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ControlValue] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[UserControlId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[XExcelPos] [int] NULL,
	[YExcelPos] [int] NULL,
	[ExcelSheetName] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_WF_TableFieldValue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'RecordId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表的字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'FieldId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'WorkFlowId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'WorkFlowInsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'WorkTaskId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'WorkTaskInsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段输入的值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'ControlValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表的ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'UserControlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在Excel的行数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'XExcelPos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在Excel的列数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'YExcelPos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作表的名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableFieldValue', @level2type=N'COLUMN',@level2name=N'ExcelSheetName'