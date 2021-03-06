USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[WF_TableUsedField]    脚本日期: 10/08/2011 09:29:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WF_TableUsedField](
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[WorkflowId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[UserControlId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[WorktaskId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[FieldId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[FieldName] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_WF_TableUsedField] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableUsedField', @level2type=N'COLUMN',@level2name=N'WorkflowId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表的ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableUsedField', @level2type=N'COLUMN',@level2name=N'UserControlId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableUsedField', @level2type=N'COLUMN',@level2name=N'WorktaskId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableUsedField', @level2type=N'COLUMN',@level2name=N'FieldId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_TableUsedField', @level2type=N'COLUMN',@level2name=N'FieldName'