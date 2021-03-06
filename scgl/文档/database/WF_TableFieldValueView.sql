USE [EbadaScgl]

DROP VIEW WF_TableFieldValueView
GO

/****** 对象:  View [dbo].[WF_TableFieldValueView]    脚本日期: 11/21/2011 21:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[WF_TableFieldValueView]
AS
SELECT     dbo.LP_Record.ID, dbo.LP_Record.DocContent, dbo.LP_Record.Kind
,dbo.WF_WorkFlow.FlowCaption
, dbo.LP_Record.SignImg
			, dbo.LP_Record.ImageAttachment, dbo.LP_Record.SortID, dbo.LP_Record.CreateTime
, dbo.LP_Record.LastChangeTime, dbo.LP_Record.Status, dbo.LP_Record.Number, dbo.LP_Record.OrgName
, dbo.WFP_RecordWorkTaskIns.WorkFlowId, dbo.WFP_RecordWorkTaskIns.WorkFlowInsId
, dbo.WF_TableFieldValue.WorkTaskId, dbo.WF_TableFieldValue.WorkTaskInsId
, dbo.WF_TableFieldValue.FieldId
,dbo.LP_Temple.CellName as FieldName
, dbo.WF_TableFieldValue.ControlValue, dbo.WF_TableFieldValue.UserControlId
, dbo.WF_TableFieldValue.XExcelPos, dbo.WF_TableFieldValue.YExcelPos
, dbo.WF_TableFieldValue.ExcelSheetName

,  isExplorer   = case 
when dbo.LP_Temple.isExplorer= 0 then '是' 
when dbo.LP_Temple.isExplorer is null then '是'
when dbo.LP_Temple.isExplorer= 1 then '否' 

end

FROM         dbo.LP_Record  JOIN
dbo.WFP_RecordWorkTaskIns ON dbo.LP_Record.ID = dbo.WFP_RecordWorkTaskIns.RecordID 
 JOIN
dbo.WF_TableFieldValue ON 
 dbo.WF_TableFieldValue.RecordId = dbo.WFP_RecordWorkTaskIns.RecordId

 JOIN
dbo.WF_WorkFlow ON dbo.WF_WorkFlow.WorkFlowId=dbo.WF_TableFieldValue.WorkFlowId
 
JOIN
dbo.LP_Temple ON dbo.WF_TableFieldValue.FieldId = dbo.LP_Temple.LPID 
