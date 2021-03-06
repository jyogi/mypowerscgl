USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[WF_WorkTastTrans]    脚本日期: 04/19/2012 06:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WF_WorkTastTrans](
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[WorkFlowID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcmc] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcjdid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcjdmc] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcjdzdid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcjdzdmc] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcjdzdlx] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[slcjdzdbid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[sSQL] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[cdfs] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcmc] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcjdid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcjdmc] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcjdzdid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcjdzdbid] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcjdzdmc] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tlcjdzdlx] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[tSQL] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[S1] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[S2] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[S3] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[S4] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[S5] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_WF_WorkTastTrans_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设置的流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'WorkFlowID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcmc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcjdid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcjdmc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程节点字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcjdzdid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程节点字段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcjdzdmc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程节点字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcjdzdlx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源流程节点字段表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'slcjdzdbid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源SQL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'sSQL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传递方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'cdfs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcmc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程节点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcjdid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcjdmc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程节点字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcjdzdid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程节点字段表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcjdzdbid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程节点字段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcjdzdmc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标流程节点字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tlcjdzdlx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标SQL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'tSQL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'S1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'S2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'S3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'S4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans', @level2type=N'COLUMN',@level2name=N'S5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程节点参数传递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WF_WorkTastTrans'