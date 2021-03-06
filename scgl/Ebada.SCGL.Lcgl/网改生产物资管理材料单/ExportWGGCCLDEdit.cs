﻿using System;
using System.Collections.Generic;
using System.Text;
using Ebada.Client;
using Ebada.Scgl.Model;
using Ebada.Scgl.Core;
using System.Collections;
using System.Windows.Forms;
using System.Data;
using Excel = Microsoft.Office.Interop.Excel;
using Ebada.Client.Platform;
using Ebada.Components;
using System.Threading;
using System.Text.RegularExpressions;
namespace Ebada.Scgl.Lcgl
{
    /// <summary>
    /// 使用ExcelAccess生成Excel文档
    /// 文档
    /// </summary>
    public class ExportWGGCCLDEdit
    {
        private bool isWorkflowCall = false;
        private LP_Record currRecord = null;
        private DataTable WorkFlowData = null;//实例流程信息
        private LP_Temple parentTemple = null;
        public LP_Temple ParentTemple
        {
            get { return parentTemple; }
            set { parentTemple = value; }
        }
        public bool IsWorkflowCall
        {
            set
            {

                isWorkflowCall = value;

            }
        }
        public LP_Record CurrRecord
        {
            get { return currRecord; }
            set { currRecord = value; }
        }

        public DataTable RecordWorkFlowData
        {
            get
            {

                return WorkFlowData;
            }
            set
            {


                WorkFlowData = value;


            }
        }
        /// <summary>
        /// 文档格式预定义好的，只填写内容
        /// </summary>
        /// <param name="obj"></param>
        public void ExportExcelProjectCKD(string orgid, string strProject, string strfenProject)
        {
            ////lgm
            ExcelAccess ex = new ExcelAccess();
            SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            string fname = Application.StartupPath + "\\00记录模板\\出库材料单.xls";
            ex.Open(fname);
            string strfirst = "";
            string filter = "";
            string filter2 = "";
            string filter3 = "";
            string filter4 = "";
            if (strProject != "全部")
                filter2 = "  where 1=1 and ssgc='" + strProject + "'  and type = '工程材料材料单' ";
            else
                filter2 = "  where 1=1  and type = '工程材料材料单' ";

            IList mclist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct ssgc  from PJ_wgclcrkd " + filter2 + " order by ssgc");

            foreach (string mc in mclist)
            {
                if (strfenProject == "全部")
                    filter3 = "  where 1=1 and type = '工程材料材料单' ";
                else
                    filter3 = "  where  ssxm='" + strfenProject + "'  and type = '工程材料材料单' ";

                IList xmlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct ssxm  from PJ_wgclcrkd " + filter3 + " order by ssxm");
                foreach (string xm in xmlist)
                {
                    filter4 = "  where 1=1 and type = '工程材料材料单'"
                        + "  and ssgc='" + mc + "' "
                        + "  and ssxm='" + xm + "' ";
                    //IList sjlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct CONVERT(varchar(50) ,indate, 112 )  from PJ_wgclcrkd " + filter4 + " ");

                    IList sjlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct num  from PJ_wgclcrkd " + filter4 + " "); 
                    foreach (string sj in sjlist)
                    {
                        filter = "  where 1=1 and type = '工程材料材料单'"
                        + "  and ssgc='" + mc + "' "
                        + "  and ssxm='" + xm
                        + "' and num= '" + sj + "' ";
                        if (isWorkflowCall)
                        {

                            filter = filter + " and id not in (select ModleRecordID from WF_ModleRecordWorkTaskIns where  WorkFlowId='"
                                + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "') "
                                    + " or id in  (select ModleRecordID from WF_ModleRecordWorkTaskIns where "
                                + "    RecordID='" + currRecord.ID + "') "
                                ;
                        }

                        IList<PJ_wgclcrkd> datalist = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PJ_wgclcrkd>(
                         filter
                           );
                        ExportExcel(ex, datalist);
                    }
                }

            }


            try
            {
                ex.DeleteSheet(1);
            }
            catch { }
            ex.ShowExcel();
        }
        public void ExportExcelYear(string orgid, string year)
        {
            //////lgm
            //ExcelAccess ex = new ExcelAccess();
            //SaveFileDialog saveFileDialog1 = new SaveFileDialog();
            //string fname = Application.StartupPath + "\\00记录模板\\出库单.xls";
            //ex.Open(fname);
            //IList mclist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct wpmc  from PJ_wgclcrkd order by wpmc");
            //string strfirst = "";
            //string filter = "";
            //foreach (string mc in mclist)
            //{
            //    if (year=="全部")
            //        filter = "  where 1=1 and wpmc='" + mc + "'  and type = '出库单' ";
            //    else
            //        filter = "  where CONVERT(varchar(50) , indate, 112 )   like '" + year + "%' and wpmc='" + mc + "'  and type = '出库单' ";

            //    if (orgid != "") filter += " and OrgCode='" + orgid + "'";

            //    if (isWorkflowCall)
            //    {
            //        filter = filter + " and id not in (select ModleRecordID from WF_ModleRecordWorkTaskIns where  WorkFlowId='"
            //            + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "') "
            //                + " or id in  (select ModleRecordID from WF_ModleRecordWorkTaskIns where "
            //            + "    RecordID='" + currRecord.ID + "') "
            //            ;
            //    }
            //    IList<PJ_wgclcrkd> datalist = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PJ_wgclcrkd>(
            //     filter
            //       );
            //    ExportExcel(ex, datalist);
            //} 
            //mclist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct wpmc  from PJ_fsctz order by wpmc");
            //strfirst = "";
            //foreach (string mc in mclist)
            //{
            //    filter = "  where 1=1 and wpmc='" + mc + "' and type = '出库单' ";
            //    if (year != "全部") filter += " and CONVERT(varchar(50) , indate, 112 )   like '" + year + "%' and type = '出库单' ";

            //    if (orgid != "") filter += " and OrgCode='" + orgid + "'";

            //    if (isWorkflowCall)
            //    {
            //        filter = filter + " and id not in (select ModleRecordID from WF_ModleRecordWorkTaskIns where  WorkFlowId='"
            //            + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "') "
            //                + " or id in  (select ModleRecordID from WF_ModleRecordWorkTaskIns where "
            //            + "    RecordID='" + currRecord.ID + "') "
            //            ;
            //    }
            //    IList<PJ_fsctz> datalist2 = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PJ_fsctz>(
            //     filter
            //       );
            //    ExportExcel(ex, datalist2, mc);
            //}
            //ex.DeleteSheet(1);

            //ex.ShowExcel();
        }
        public void ExportExceljhbAllSubmitToWF_ModleRecordWorkTaskIns(string orgid, string strProject, string strfenProject)
        {

            string filter = "";
            int i = 0;
            List<WF_ModleRecordWorkTaskIns> mrwtlist = new List<WF_ModleRecordWorkTaskIns>();
            string strfirst = "";
            string filter2 = "";
            string filter3 = "";
            string filter4 = "";
            if (strProject != "全部")
                filter2 = "  where 1=1 and ssgc='" + strProject + "'  and type = '工程材料材料单' ";
            else
                filter2 = "  where 1=1  and type = '工程材料材料单' ";

            IList mclist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct ssgc  from PJ_wgclcrkd " + filter2 + " order by ssgc");

            foreach (string mc in mclist)
            {
                if (strfenProject == "全部")
                    filter3 = "  where 1=1 and type = '工程材料材料单' ";
                else
                    filter3 = "  where  ssxm='" + strfenProject + "'  and type = '工程材料材料单' ";

                IList xmlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct ssxm  from PJ_wgclcrkd " + filter3 + " order by ssxm");
                foreach (string xm in xmlist)
                {
                    filter4 = "  where 1=1 and type = '工程材料材料单'"
                        + "  and ssgc='" + mc + "' "
                        + "  and ssxm='" + xm + "' ";
                    //IList sjlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct CONVERT(varchar(50) ,indate, 112 )  from PJ_wgclcrkd " + filter4 + " ");
                    IList sjlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct num  from PJ_wgclcrkd " + filter4 + " ");
                    foreach (string sj in sjlist)
                    {
                        filter = "  where 1=1 and type = '工程材料材料单'"
                        + "  and ssgc='" + mc + "' "
                        + "  and ssxm='" + xm
                        + "' and num= '" + sj + "' ";
                        if (isWorkflowCall)
                        {

                            filter = filter + " and id not in (select ModleRecordID from WF_ModleRecordWorkTaskIns where  WorkFlowId='"
                                + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "') "
                                    + " or id in  (select ModleRecordID from WF_ModleRecordWorkTaskIns where "
                                + "    RecordID='" + currRecord.ID + "') "
                                ;
                        }

                        IList<PJ_wgclcrkd> datalist = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PJ_wgclcrkd>(
                         filter
                           );
                        if (isWorkflowCall)
                        {
                            for (i = 0; i < datalist.Count; i++)
                            {
                                WF_ModleRecordWorkTaskIns mrwt = new WF_ModleRecordWorkTaskIns();
                                mrwt.ID = mrwt.CreateID();
                                mrwt.ModleRecordID = datalist[i].ID;
                                mrwt.RecordID = currRecord.ID;
                                mrwt.WorkFlowId = WorkFlowData.Rows[0]["WorkFlowId"].ToString();
                                mrwt.WorkFlowInsId = WorkFlowData.Rows[0]["WorkFlowInsId"].ToString();
                                mrwt.WorkTaskId = WorkFlowData.Rows[0]["WorkTaskId"].ToString();
                                mrwt.WorkTaskInsId = WorkFlowData.Rows[0]["WorkTaskInsId"].ToString();
                                mrwt.ModleTableName = datalist[i].GetType().ToString();
                                mrwt.CreatTime = DateTime.Now;
                                Thread.Sleep(new TimeSpan(100000));//0.1毫秒
                                mrwtlist.Add(mrwt);
                            }
                        }

                    }
                }

            }


            List<SqlQueryObject> list3 = new List<SqlQueryObject>();
            if (mrwtlist.Count > 0)
            {
                SqlQueryObject obj3 = new SqlQueryObject(SqlQueryType.Insert, mrwtlist.ToArray());
                list3.Add(obj3);
            }
            MainHelper.PlatformSqlMap.ExecuteTransationUpdate(list3);





        }


        public void ExportExcelSubmit(ref LP_Temple parentTemple, string orgid, string strProject, string strfenProject, bool isShow)
        {
            DSOFramerControl dsoFramerWordControl1 = new DSOFramerControl();
            string fname = Application.StartupPath + "\\00记录模板\\出库材料单.xls";
            dsoFramerWordControl1.FileOpen(fname);

            if (parentTemple == null)
            {
                parentTemple = new LP_Temple();
                parentTemple.Status = "文档生成";
            }
            parentTemple.DocContent = dsoFramerWordControl1.FileDataGzip;
            dsoFramerWordControl1.FileSave();
            dsoFramerWordControl1.FileClose();
            dsoFramerWordControl1.FileDataGzip = parentTemple.DocContent;
            ExcelAccess ex = new ExcelAccess();
            Microsoft.Office.Interop.Excel.Workbook wb = dsoFramerWordControl1.AxFramerControl.ActiveDocument as Microsoft.Office.Interop.Excel.Workbook;
            ex.MyWorkBook = wb;
            ex.MyExcel = wb.Application;

            string strfirst = "";
            string filter = "";
            string filter2 = "";
            string filter3 = "";
            string filter4 = "";
            if (strProject != "全部")
                filter2 = "  where 1=1 and ssgc='" + strProject + "'  and type = '工程材料材料单' ";
            else
                filter2 = "  where 1=1  and type = '工程材料材料单' ";

            IList mclist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct ssgc  from PJ_wgclcrkd " + filter2 + " order by ssgc");

            foreach (string mc in mclist)
            {
                if (strfenProject == "全部")
                    filter3 = "  where 1=1 and type = '工程材料材料单' ";
                else
                    filter3 = "  where  ssxm='" + strfenProject + "'  and type = '工程材料材料单' ";

                IList xmlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct ssxm  from PJ_wgclcrkd " + filter3 + " order by ssxm");
                foreach (string xm in xmlist)
                {
                    filter4 = "  where 1=1 and type = '工程材料材料单'"
                        + "  and ssgc='" + mc + "' "
                        + "  and ssxm='" + xm + "' ";
                    //IList sjlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct CONVERT(varchar(50) ,indate, 112 )  from PJ_wgclcrkd " + filter4 + " ");
                    IList sjlist = ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select distinct num  from PJ_wgclcrkd " + filter4 + " ");
                    foreach (string sj in sjlist)
                    {
                        filter = "  where 1=1 and type = '工程材料材料单'"
                        + "  and ssgc='" + mc + "' "
                        + "  and ssxm='" + xm
                        + "' and num= '" + sj + "' ";
                        if (isWorkflowCall)
                        {

                            filter = filter + " and id not in (select ModleRecordID from WF_ModleRecordWorkTaskIns where  WorkFlowId='"
                                + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "') "
                                    + " or id in  (select ModleRecordID from WF_ModleRecordWorkTaskIns where "
                                + "    RecordID='" + currRecord.ID + "') "
                                ;
                        }

                        IList<PJ_wgclcrkd> datalist = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PJ_wgclcrkd>(
                         filter
                           );
                        ExportExcel(ex, datalist);
                    }
                }

            }
            //ex.ActiveSheet(1);
            //ex.DeleteWorkSheet(1);
            Excel.Worksheet sheet;
            for (int i = 1; i <= wb.Application.Sheets.Count; i++)
            {
                sheet = wb.Application.Sheets[i] as Excel.Worksheet;
                sheet.Cells.Clear();
                sheet.Cells.ClearContents();
                sheet.Cells.ClearOutline();
                sheet.Visible = Excel.XlSheetVisibility.xlSheetHidden;
                dsoFramerWordControl1.FileSave();


                break;
            }
            if (parentTemple == null)
            {
                parentTemple = new LP_Temple();
                parentTemple.Status = "文档生成";
            }
            dsoFramerWordControl1.FileSave();
            parentTemple.DocContent = dsoFramerWordControl1.FileDataGzip;
            dsoFramerWordControl1.FileSave();
            dsoFramerWordControl1.FileClose();
        }
        
        
  
        
    
        public void ExportExcel(ExcelAccess ex ,IList<PJ_wgclcrkd> datalist)
        {
            
            //此处写填充内容代码
            int row = 8;
            int col = 2;
            int rowcount = 25;
            if (datalist.Count < 1) return;
            Regex r1 = new Regex("[0-9]+");
            string str = r1.Match(datalist[0].num).Value;
            if(str=="")
            {
             str = datalist[0].num;
            }
            string tablename = datalist[0].ssgc + datalist[0].ssxm + str;
            if(tablename.Length >30 )
            {
                tablename=tablename.Substring(tablename.Length-31);
            }
            //

            //加页
            int pageindex = 1;
            if (pageindex < Ecommon.GetPagecount(datalist.Count, rowcount))
            {
                pageindex = Ecommon.GetPagecount(datalist.Count, rowcount);
            }
            for (int j = 1; j <= pageindex; j++)
            {

                ex.CopySheet(1, j);
                if (j == 1) ex.ReNameWorkSheet(j + 1, tablename);
                else
                    ex.ReNameWorkSheet(j + 1, tablename + "(" + (j) + ")");
            }
            for (int j = 0; j < datalist.Count; j++)
            {

                if (j % rowcount == 0)
                {
                    if (j == 0) ex.ActiveSheet(tablename);
                    else ex.ActiveSheet(tablename + "(" + (j / rowcount + 1) + ")");
                    ex.SetCellValue(datalist[j].ssgc, 3, 4);
                    ex.SetCellValue(datalist[j].lqdw, 6, 3);
                    ex.SetCellValue(datalist[j].ghdw, 6, 14);

                    ex.SetCellValue(datalist[j].ckdate.ToString("yyyy"), 4, 4);
                    ex.SetCellValue(datalist[j].ckdate.ToString("MM"), 4, 7);
                    ex.SetCellValue(datalist[j].ckdate.ToString("dd"), 4, 9);

                    ex.SetCellValue(datalist[j].ssgc, 36, 4);
                    ex.SetCellValue(datalist[j].lqdw, 39, 3);
                    ex.SetCellValue(datalist[j].ghdw, 39, 14);
                    ex.SetCellValue(datalist[j].ckdate.ToString("yyyy"), 37, 7);
                    ex.SetCellValue(datalist[j].ckdate.ToString("MM"), 37, 9);
                    ex.SetCellValue(datalist[j].ckdate.ToString("dd"), 37, 11);

                    ex.SetCellValue(datalist[j].ssgc, 69, 4);
                    ex.SetCellValue(datalist[j].lqdw, 72, 3);
                    ex.SetCellValue(datalist[j].ghdw, 72, 14);
                    ex.SetCellValue(datalist[j].ckdate.ToString("yyyy"), 70, 7);
                    ex.SetCellValue(datalist[j].ckdate.ToString("MM"), 70, 9);
                    ex.SetCellValue(datalist[j].ckdate.ToString("dd"), 70, 11);

                   
                }

                ex.SetCellValue(datalist[j].wpmc, row + j % rowcount , col);
                ex.SetCellValue(datalist[j].wpgg, row + j % rowcount , col + 4);
                ex.SetCellValue(datalist[j].wpdw, row + j % rowcount, col + 8);
                ex.SetCellValue(datalist[j].cksl, row + j % rowcount, col + 10);
                ex.SetCellValue(datalist[j].Remark, row + j % rowcount, col + 12);

                ex.SetCellValue(datalist[j].wpmc, row + j % rowcount+33, col);
                ex.SetCellValue(datalist[j].wpgg, row + j % rowcount + 33, col + 4);
                ex.SetCellValue(datalist[j].wpdw, row + j % rowcount + 33, col + 8);

                ex.SetCellValue(datalist[j].cksl, row + j % rowcount + 33, col + 10);
                ex.SetCellValue(datalist[j].Remark, row + j % rowcount + 33, col + 12);

                ex.SetCellValue(datalist[j].wpmc, row + j % rowcount + 66, col);
                ex.SetCellValue(datalist[j].wpgg, row + j % rowcount + 66, col + 4);
                ex.SetCellValue(datalist[j].wpdw, row + j % rowcount + 66, col + 8);
                ex.SetCellValue(datalist[j].cksl, row + j % rowcount + 66, col + 10);
                ex.SetCellValue(datalist[j].Remark, row + j % rowcount + 66, col + 12);

                //long value = Convert.ToInt64(Math.Round(Convert.ToDouble(datalist[j].cksl) * Convert.ToDouble(datalist[j].wpdj), 2) * 100);
                //int index = 19;
                //while (value > 0)
                //{
                //    long ifen = value % 10;
                //    ex.SetCellValue(ifen.ToString(), row + j % rowcount, index);
                //    ex.SetCellValue(ifen.ToString(), row + j % rowcount + 20, index);
                //    ex.SetCellValue(ifen.ToString(), row + j % rowcount + 40, index);
                //    ex.SetCellValue(ifen.ToString(), row + j % rowcount + 60, index);
                //    value = value/ 10;
                //    index--;
                //}
                //ex.SetCellValue(datalist[j].zrr, row + j % rowcount, col + 7);


            }
        }
    
    }
}
