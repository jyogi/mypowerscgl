USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[LP_Record]    脚本日期: 06/21/2011 10:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LP_Record](
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE Chinese_PRC_CI_AS NULL,
	[DocContent] [image] NULL,
	[Kind] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[SignImg] [image] NULL,
	[ImageAttachment] [image] NULL,
	[SortID] [int] NULL,
	[CreateTime] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[LastChangeTime] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Status] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Number] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_LP_RECORD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所有控件上的内容，格式：控件ID，控件内容|
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后的文档内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'DocContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'票种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'Kind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'SignImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'ImageAttachment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'SortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'LastChangeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LP_Record', @level2type=N'COLUMN',@level2name=N'Number'
GO
