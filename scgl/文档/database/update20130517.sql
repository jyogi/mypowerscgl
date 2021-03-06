USE [ebadascgl]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_ddxcd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_ddxcd](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[LineVol] [nvarchar](50) NULL,
	[nzdgh] [nvarchar](50) NULL,
	[cldgh] [nvarchar](50) NULL,
	[clrq] [datetime] NULL,
	[wd] [nvarchar](50) NULL,
	[dxscz] [nvarchar](50) NULL,
	[dxsczz] [nvarchar](50) NULL,
	[dxsczy] [nvarchar](50) NULL,
	[dxbzz] [nvarchar](50) NULL,
	[dxwcz] [nvarchar](50) NULL,
	[dxwczz] [nvarchar](50) NULL,
	[dxwcy] [nvarchar](50) NULL,
	[dxxh] [nvarchar](50) NULL,
	[ddxxh] [nvarchar](50) NULL,
	[ddxscz] [nvarchar](50) NULL,
	[ddxsczy] [nvarchar](50) NULL,
	[ddxbzz] [nvarchar](50) NULL,
	[ddwcz] [nvarchar](50) NULL,
	[ddwcy] [nvarchar](50) NULL,
	[dxjl] [nvarchar](50) NULL,
	[ddxjl] [nvarchar](50) NULL,
	[clr] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_DDXCD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路电压' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'LineVol'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'耐张段杆号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'nzdgh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量档杆号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'cldgh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'clrq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'温度' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'wd'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线实测值左' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxscz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线实测值中' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxsczz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线实测值右' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxsczy'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线标准值' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxbzz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线误差左' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxwcz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线误差中' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxwczz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线误差右' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxwcy'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地线型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ddxxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地线实测值左' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ddxscz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地线实测值右' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ddxsczy'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地线标准值' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ddxbzz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地线误差左' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ddwcz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地线误差右' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ddwcy'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导线结论' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'dxjl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地线结论' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'ddxjl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'clr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导(地)线驰度测量记录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxcd'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_ddxljq]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_ddxljq](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[jcrq] [datetime] NULL,
	[LineVol] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_DDXLJQ] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检测日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'jcrq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电压' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'LineVol'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导地线连接器检测记录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljq'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_ddxljqnr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_ddxljqnr](
	[ID] [nvarchar](50) NOT NULL,
	[ParentID] [nvarchar](50) NULL,
	[gth] [nvarchar](50) NULL,
	[dj] [nvarchar](50) NULL,
	[xb] [nvarchar](50) NULL,
	[ljxs] [nvarchar](50) NULL,
	[djzwz] [nvarchar](50) NULL,
	[ddxxh] [nvarchar](50) NULL,
	[ljqxh] [nvarchar](50) NULL,
	[sccj] [nvarchar](50) NULL,
	[qw] [nvarchar](50) NULL,
	[bz] [nvarchar](50) NULL,
	[cwsssdl] [nvarchar](50) NULL,
	[jcr] [nvarchar](50) NULL,
	[jl] [nvarchar](50) NULL,
	[gw] [nvarchar](50) NULL,
	[xw] [nvarchar](50) NULL,
	[dzx] [nvarchar](50) NULL,
	[dzg] [nvarchar](50) NULL,
	[dzb] [nvarchar](50) NULL,
	[bdzq] [nvarchar](50) NULL,
	[bdzh] [nvarchar](50) NULL,
	[bdzb] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_DDXLJQNR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'杆塔号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'gth'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档距(米)' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'dj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'xb'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接型式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'ljxs'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档距中位置' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'djzwz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导(地)线型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'ddxxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接器型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'ljqxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'sccj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'气温' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'qw'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'bz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测温时输送电流' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'cwsssdl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检测人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'jcr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'jl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管温' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'gw'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线温' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'xw'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'dzx'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'dzg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'比' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'dzb'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'前' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'bdzq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'bdzh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'比' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'bdzb'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导地线连接器检测内容' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_ddxljqnr'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_dgjcjl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_dgjcjl](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[LineVol] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_DGJCJL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电压等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'LineVol'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登杆检查记录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjl'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_dgjcjlnr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_dgjcjlnr](
	[ID] [nvarchar](50) NOT NULL,
	[ParentID] [nvarchar](50) NULL,
	[jcrq] [datetime] NULL,
	[qsgtbh] [nvarchar](50) NULL,
	[zzgtbh] [nvarchar](50) NULL,
	[jcjg] [nvarchar](500) NULL,
	[jcr] [nvarchar](50) NULL,
	[bz] [nvarchar](500) NULL,
	[qxdj] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_DGJCJLNR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父表ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检查日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'jcrq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始杆塔编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'qsgtbh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'终止杆塔编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'zzgtbh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检查结果' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'jcjg'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检查人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'jcr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'bz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缺陷等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'qxdj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登杆检查记录内容' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_dgjcjlnr'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_fsgyxfa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_fsgyxfa](
	[ID] [nvarchar](50) NOT NULL,
	[yxtm] [nvarchar](500) NULL,
	[yxfa] [nvarchar](4000) NULL,
	[fasj] [image] NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_FSGYXFA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'演习题目' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'yxtm'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'演习方案' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'yxfa'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方案数据' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'fasj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反事故演习方案' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxfa'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_fsgyxjl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_fsgyxjl](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[yxrq] [datetime] NULL,
	[kssj] [datetime] NULL,
	[jssj] [datetime] NULL,
	[yxdw] [nvarchar](50) NULL,
	[yxdd] [nvarchar](50) NULL,
	[yxtmID] [nvarchar](50) NULL,
	[yxtm] [nvarchar](500) NULL,
	[ldr] [nvarchar](50) NULL,
	[jhr] [nvarchar](50) NULL,
	[jljpj] [nvarchar](2000) NULL,
	[ndcs] [nvarchar](500) NULL,
	[zxr] [nvarchar](50) NULL,
	[zgxq] [datetime] NULL,
	[qzldr] [nvarchar](50) NULL,
	[qzjhr] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_FSGYXJL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'演习日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'yxrq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'kssj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'jssj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'演习单位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'yxdw'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'演习地点' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'yxdd'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'演习题目ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'yxtmID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'演习题目' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'yxtm'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领导人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'ldr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监护人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'jhr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结论及对参加演习人的评价' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'jljpj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'根据演习结果拟定的措施' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'ndcs'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'zxr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'整改期限' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'zgxq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签字领导人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'qzldr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签字监护人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'qzjhr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反事故演习记录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_fsgyxjl'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_jyzcs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_jyzcs](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[qsgh] [nvarchar](50) NULL,
	[tzgh] [nvarchar](50) NULL,
	[zjs] [nvarchar](50) NULL,
	[nzglzs] [nvarchar](50) NULL,
	[zxglzs] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_JYZCS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始杆号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'qsgh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'终止杆号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'tzgh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总基数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'zjs'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'耐张杆零值数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'nzglzs'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'直线杆零值数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'zxglzs'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子测试' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcs'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_jyzcsjl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_jyzcsjl](
	[ID] [nvarchar](50) NOT NULL,
	[LineID] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[ParentID] [nvarchar](50) NULL,
	[cssj] [datetime] NULL,
	[gh] [nvarchar](50) NULL,
	[gx] [nvarchar](50) NULL,
	[jyzxh] [nvarchar](50) NULL,
	[lzjyzwz] [nvarchar](500) NULL,
	[syfzr] [nvarchar](50) NULL,
	[clsj] [datetime] NULL,
	[bz] [nvarchar](500) NULL,
	[cb] [nvarchar](500) NULL,
	[xb] [nvarchar](500) NULL,
	[zyc] [nvarchar](50) NULL,
	[jyzzzc] [nvarchar](50) NULL,
	[lhpwchdsq] [nvarchar](500) NULL,
	[lhps] [nvarchar](50) NULL,
	[ghrq] [datetime] NULL,
	[fzr] [nvarchar](50) NULL,
	[xghjyzxh] [nvarchar](50) NULL,
	[xghjyzzzc] [nvarchar](50) NULL,
	[lhjyzccrq] [datetime] NULL,
	[lhjyzyxnx] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_JYZCSJL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'LineID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测试时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'cssj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'杆号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'gh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'杆型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'gx'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'jyzxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零值绝缘子位置' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'lzjyzwz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试验负责人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'syfzr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'clsj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'bz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'侧别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'cb'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相别' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'xb'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'左右串' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'zyc'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子制造厂' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'jyzzzc'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劣化瓶位从横担算起' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'lhpwchdsq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劣化片数' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'lhps'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更换日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'ghrq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'fzr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新更换绝缘子型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'xghjyzxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新更换绝缘子制造厂' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'xghjyzzzc'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劣化绝缘子出厂日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'lhjyzccrq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劣化绝缘子运行年限' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'lhjyzyxnx'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子测试记录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzcsjl'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_jyzwhdj]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_jyzwhdj](
	[ID] [nvarchar](50) NOT NULL,
	[whdj] [nvarchar](50) NULL,
	[bzymz] [nvarchar](50) NULL,
	[jyzxh] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_JYZWHDJ] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污秽等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'whdj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准盐密值(mg/c㎡)' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'bzymz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'jyzxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子污秽等级盐密度表' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzwhdj'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_jyzylcl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_jyzylcl](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[gh] [nvarchar](50) NULL,
	[wz] [nvarchar](50) NULL,
	[xh] [nvarchar](50) NULL,
	[bmj] [nvarchar](50) NULL,
	[wd] [nvarchar](50) NULL,
	[dzhyl] [nvarchar](50) NULL,
	[hdwhdj] [nvarchar](50) NULL,
	[whtz] [nvarchar](500) NULL,
	[scymz] [nvarchar](500) NULL,
	[scwhdj] [nvarchar](500) NULL,
	[clrq] [datetime] NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_JYZYLCL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'杆号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'gh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'wz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'xh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表面积(c㎡)' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'bmj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'温度℃' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'wd'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准盐密值(mg/c㎡)' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'dzhyl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'划定污秽等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'hdwhdj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污秽特征' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'whtz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实测盐密值' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'scymz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实测污秽等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'scwhdj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测量日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'clrq'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路绝缘子等值含盐量测量记录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_jyzylcl'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_sgbp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_sgbp](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[bpbjmc] [nvarchar](50) NULL,
	[gexh] [nvarchar](50) NULL,
	[dw] [nvarchar](50) NULL,
	[lrsl] [nvarchar](50) NULL,
	[lrsj] [datetime] NULL,
	[lcsl] [nvarchar](50) NULL,
	[lcsj] [nvarchar](50) NULL,
	[lyr] [nvarchar](50) NULL,
	[kcsl] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_SGBP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备品备件名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'bpbjmc'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'gexh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'dw'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领入数量' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'lrsl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领入时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'lrsj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领出数量' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'lcsl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领出时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'lcsj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'lyr'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'kcsl'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'事故备品备件清册' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_sgbp'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_xlwhjl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_xlwhjl](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[LineVol] [nvarchar](50) NULL,
	[whqd] [nvarchar](50) NULL,
	[wyxz] [nvarchar](50) NULL,
	[whdj] [nvarchar](50) NULL,
	[gx] [nvarchar](50) NULL,
	[jyzxh] [nvarchar](50) NULL,
	[xlbj] [nvarchar](50) NULL,
	[bz] [nvarchar](500) NULL,
	[zhfs] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_XLWHJL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路电压' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'LineVol'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污秽区段 ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'whqd'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污源性质' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'wyxz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污秽等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'whdj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'杆型' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'gx'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子型号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'jyzxh'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'泄露比距(cm/kV)' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'xlbj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'bz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绝缘子组合方式' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'zhfs'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路污秽地段记录' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhjl'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjls_xlwhqd]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjls_xlwhqd](
	[ID] [nvarchar](50) NOT NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[whqd] [nvarchar](50) NULL,
	[qdxx] [nvarchar](500) NULL,
	[whxz] [nvarchar](50) NULL,
	[whdj] [nvarchar](50) NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJLS_XLWHQD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污秽区段' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'whqd'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区段信息' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'qdxx'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污秽性质' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'whxz'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'污秽等级' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'whdj'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路污秽区段' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjls_xlwhqd'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sdjl_21]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sdjl_21](
	[ID] [nvarchar](50) NOT NULL,
	[ParentID] [nvarchar](50) NULL,
	[OrgCode] [nvarchar](50) NULL,
	[OrgName] [nvarchar](50) NULL,
	[LineCode] [nvarchar](50) NULL,
	[LineName] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[gzrjID] [nvarchar](50) NULL,
	[CreateMan] [nvarchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[BigData] [image] NULL,
	[c1] [nvarchar](500) NULL,
	[c2] [nvarchar](500) NULL,
	[c3] [nvarchar](500) NULL,
	[c4] [nvarchar](500) NULL,
	[c5] [nvarchar](500) NULL,
 CONSTRAINT [PK_SDJL_17] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'ParentID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供电所代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供电所名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'OrgName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路代码' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'LineCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'线路名称' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'LineName'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'Remark'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'gzrjID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'gzrjID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'CreateMan'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成日期' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'CreateDate'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成文档' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'BigData'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段1' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'c1'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段2' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'c2'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段3' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'c3'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段4' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'c4'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备用字段5' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21', @level2type=N'COLUMN', @level2name=N'c5'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送电线路条图' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'sdjl_21'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TX_bdzjxt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TX_bdzjxt](
	[ID] [nvarchar](50) NOT NULL,
	[OrgCode] [nvarchar](50) NULL,
	[Nml] [text] NULL,
	[LastTime] [datetime] NULL,
	[LastUserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TX_bdzjxt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'TX_bdzjxt', @level2type=N'COLUMN', @level2name=N'ID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变电所' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'TX_bdzjxt', @level2type=N'COLUMN', @level2name=N'OrgCode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接线图' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'TX_bdzjxt', @level2type=N'COLUMN', @level2name=N'Nml'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'TX_bdzjxt', @level2type=N'COLUMN', @level2name=N'LastTime'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改人' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'TX_bdzjxt', @level2type=N'COLUMN', @level2name=N'LastUserName'

