USE [EbadaScgl]
GO
/****** 对象:  Table [dbo].[PS_tqsbclb]    脚本日期: 03/30/2012 20:05:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_tqsbclb](
	[bh] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[mc] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[xh] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[ParentID] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[S1] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[S2] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[S3] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[zl] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[zlCode] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[sl] [int]
 CONSTRAINT [PK_PS_tqsbclb] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种类编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'bh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'材料规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'mc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'xh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'S1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'S2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'S3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'zl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种类编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'zlCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'台区材料类型管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb'
go
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PS_tqsbclb', @level2type=N'COLUMN',@level2name=N'sl'
go
INSERT INTO [mModule] ([ModuName],[ModuTypes],[AssemblyFileName],[Sequence],[MethodName],[MethodParam],[IconName],[visiableFlag],[ActivityFlag],[IsCores],[Description],[Modu_ID],[ParentID],[Rights]) values (N'杆塔种类参数',N'Ebada.Scgl.Sbgl.UCPS_gtsbclbM',N'Ebada.Scgl.Sbgl.dll',0,N'',NULL,N'',1,0,N'',N'',N'20120330224123046251',N'20110616141704643904',NULL)