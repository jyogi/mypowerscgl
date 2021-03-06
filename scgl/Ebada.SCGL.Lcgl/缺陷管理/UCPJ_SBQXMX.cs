﻿/**********************************************
系统:企业ERP
模块:
作者:Rabbit
创建时间:2011-6-3
最后一次修改:2011-6-3
***********************************************/
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using Ebada.Client.Platform;

using DevExpress.XtraGrid.Columns;
using System.Reflection;
using Ebada.Client;
using DevExpress.XtraGrid.Views.Base;
using Ebada.Scgl.Model;
using Ebada.Scgl.Core;
using Ebada.Scgl.WFlow;

namespace Ebada.Scgl.Lcgl
{
    /// <summary>
    /// 
    /// </summary>
    [ToolboxItem(false)]
    public partial class UCPJ_SBQXMX : DevExpress.XtraEditors.XtraUserControl
    {
        private GridViewOperation<PJ_qxfl> gridViewOperation;

        public event SendDataEventHandler<PJ_qxfl> FocusedRowChanged;
        public event SendDataEventHandler<mOrg> SelectGdsChanged;
        private string parentID = null;
        private mOrg parentObj;

        private bool isWorkflowCall = false;
        private LP_Record currRecord = null;
        private frmModleFjly fjly = null;
        private DataTable WorkFlowData = null;//实例流程信息
        private LP_Temple parentTemple = null;
        private string varDbTableName = "PJ_qxfl,LP_Record";
        private bool readOnly = false;
        public bool ReadOnly
        {
            get { return readOnly; }
            set
            {
                readOnly = value;
                // btnOK.Visible = 
                liuchbarSubItem.Enabled = !value;
                btAdd.Enabled = !value;
                btEdit.Enabled = !value;
                btDelete.Enabled = !value;

            }
        }

        public LP_Temple ParentTemple
        {
            get { return parentTemple; }
            set
            {
                parentTemple = value;
            }
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
            set
            {
                currRecord = value;

            }
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
                if (isWorkflowCall)
                {
                    if (RecordWorkTask.HaveRunSPYJRole(currRecord.Kind) || RecordWorkTask.HaveRunFuJianRole(currRecord.Kind))
                    {
                        if (fjly == null) fjly = new frmModleFjly();
                        barFJLY.Visibility = DevExpress.XtraBars.BarItemVisibility.OnlyInRuntime;
                    }
                    barFJLY.Visibility = DevExpress.XtraBars.BarItemVisibility.OnlyInRuntime;
                    liuchbarSubItem.Visibility = DevExpress.XtraBars.BarItemVisibility.OnlyInRuntime;
                    IList<WF_WorkTaskCommands> wtlist = MainHelper.PlatformSqlMap.GetList<WF_WorkTaskCommands>("SelectWF_WorkTaskCommandsList", " where WorkFlowId='" + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "' and WorkTaskId='" + WorkFlowData.Rows[0]["WorkTaskId"].ToString() + "'");
                    foreach (WF_WorkTaskCommands wt in wtlist)
                    {
                        if (wt.CommandName == "01")
                        {

                            SubmitButton.Visibility = DevExpress.XtraBars.BarItemVisibility.OnlyInRuntime;
                            if (wt.Description != "")
                                SubmitButton.Caption = wt.Description;
                            barFJLY.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                        }
                        else
                            if (wt.CommandName == "02")
                            {

                                TaskOverButton.Visibility = DevExpress.XtraBars.BarItemVisibility.OnlyInRuntime;
                                if (wt.Description != "")
                                    TaskOverButton.Caption = wt.Description;

                            }

                    }

                }
            }
        }
        public string VarDbTableName
        {
            get { return varDbTableName; }
            set
            {
                varDbTableName = value; ;
            }
        }

        public UCPJ_SBQXMX()
        {
            InitializeComponent();
            initImageList();
            gridViewOperation = new GridViewOperation<PJ_qxfl>(gridControl1, gridView1, barManager1, true);
            gridViewOperation.BeforeAdd += new ObjectOperationEventHandler<PJ_qxfl>(gridViewOperation_BeforeAdd);
            gridViewOperation.CreatingObjectEvent += gridViewOperation_CreatingObjectEvent;
            gridViewOperation.BeforeDelete += new ObjectOperationEventHandler<PJ_qxfl>(gridViewOperation_BeforeDelete);
            gridView1.FocusedRowChanged += gridView1_FocusedRowChanged;
        }

        void gridViewOperation_BeforeDelete(object render, ObjectOperationEventArgs<PJ_qxfl> e)
        {
            if (isWorkflowCall)
            {

                MainHelper.PlatformSqlMap.DeleteByWhere<WF_ModleRecordWorkTaskIns>(" where ModleRecordID='" + e.Value.ID + "' and RecordID='" + currRecord.ID + "'");
            }
        }

        void gridViewOperation_BeforeAdd(object render, ObjectOperationEventArgs<PJ_qxfl> e)
        {
            if (parentID == null)
                e.Cancel = true;
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            InitColumns();//初始列
            InitData();//初始数据
            if (this.Site != null) return;
            btGdsList.Edit = DicTypeHelper.GdsDic;
            btGdsList.EditValueChanged += new EventHandler(btGdsList_EditValueChanged);
            if (MainHelper.UserOrg != null && MainHelper.UserOrg.OrgType == "1")
            {//如果是供电所人员，则锁定
                btGdsList.EditValue = MainHelper.UserOrg.OrgCode;
                btGdsList.Edit.ReadOnly = true;
            }

        }

        void btGdsList_EditValueChanged(object sender, EventArgs e)
        {
            IList<mOrg> list = Client.ClientHelper.PlatformSqlMap.GetList<mOrg>("where orgcode='" + btGdsList.EditValue + "'");
            mOrg org = null;
            if (list.Count > 0)
                org = list[0];

            if (org != null)
            {
                ParentObj = org;
                if (SelectGdsChanged != null)
                    SelectGdsChanged(this, org);
            }
            DelJL(org);

        }
        //清空标记
        private void DelJL(mOrg org)
        {
            if (!ReadOnly)
            {
                string sqlupdate = " s1=''  where OrgCode='" + org.OrgCode + "'";
                MainHelper.PlatformSqlMap.Update("UpdatePJ_qxflByWhwer", sqlupdate);
            }

        }
        private void initImageList()
        {
            ImageList imagelist = new ImageList();
            imagelist.ImageStream = (Ebada.Client.Resource.UCGridToolbar.UCGridToolbarImageList);
            barManager1.Images = imagelist;
        }
        void gridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (FocusedRowChanged != null)
                FocusedRowChanged(gridView1, gridView1.GetFocusedRow() as PJ_qxfl);
        }
        private void hideColumn(string colname)
        {
            gridView1.Columns[colname].Visible = false;
        }
        /// <summary>
        /// 初始化数据
        /// </summary>
        public void InitData()
        {
            if (this.Site != null && this.Site.DesignMode) return;//必要的，否则设计时可能会报错
            //需要初始化数据时在这写代码
        }
        ComboBoxEdit cob = new ComboBoxEdit();

        /// <summary>
        /// 初始化列,
        /// </summary>

        public void InitColumns()
        {

            //需要隐藏列时在这写代码
            for (int i = 0; i < gridView1.Columns.Count; i++)
            {
                gridView1.Columns[i].OptionsColumn.AllowEdit = false;
            }
            gridView1.Columns["xlqd"].Caption = "缺陷发生地点";
            hideColumn("OrgCode");
            hideColumn("LineID");
            hideColumn("gzrjID");
            //hideColumn("s1");
            hideColumn("s3");
            hideColumn("s2");

            //if (currRecord.Kind == "交叉跨越对地距离测量流程")
            //{
                gridView1.Columns["s1"].Caption = "是否处理缺陷";
                DevExpress.XtraEditors.Repository.RepositoryItemComboBox box = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
                box.Properties.Items.Clear();
                box.Properties.Items.Add("是");
                box.Properties.Items.Add("否");
                box.EditValueChanged += new EventHandler(box_EditValueChanged);
                gridView1.Columns["s1"].ColumnEdit = box;
                gridView1.Columns["s1"].OptionsColumn.AllowEdit = true;
                hideColumn("remark");
            //}
            //else
            //{
            //    gridView1.Columns["s1"].Caption = "流程选择";
            //    DevExpress.XtraEditors.Repository.RepositoryItemComboBox box = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            //    box.Properties.Items.Clear();
            //    box.Properties.Items.Add("一般");
            //    box.Properties.Items.Add("紧急");
            //    box.Properties.Items.Add("重大");
            //    box.Properties.Items.Add("低压");
            //    gridView1.Columns["s1"].ColumnEdit = box;
            //    gridView1.Columns["s1"].OptionsColumn.AllowEdit = true;
            //}

            //cob.SelectedIndexChanged += new EventHandler(cob_SelectedIndexChanged);
            hideColumn("CreateMan");

            hideColumn("CreateDate");

            hideColumn("xcr");

            hideColumn("xcrq");

            hideColumn("xsr");
            gridView1.Columns["xlqd"].Caption = "缺陷发生地点";
        }

        void box_EditValueChanged(object sender, EventArgs e)
        {
            PJ_qxfl qx = gridView1.GetFocusedRow() as PJ_qxfl;
            var s1 = ((DevExpress.XtraEditors.ComboBoxEdit)(sender)).EditValue;
            if (qx != null && s1 != null)
            {
                qx.s1 = s1.ToString();
                ClientHelper.PlatformSqlMap.Update<PJ_qxfl>(qx);
            }
        }


        private string basesql;
        /// <summary>
        /// 刷新数据
        /// </summary>
        /// <param name="slqwhere">sql where 子句 ，为空时查询全部数据</param>
        public void RefreshData(string slqwhere)
        {
            if (isWorkflowCall)
            {
                //if (slqwhere == "") slqwhere = " where 1=1";
                //slqwhere = slqwhere + " and ( id not in (select ModleRecordID from WF_ModleRecordWorkTaskIns where 1=1 ";
                //slqwhere = slqwhere + " and  WorkFlowId='" + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "'"

                //   + " and  WorkTaskId='" + WorkFlowData.Rows[0]["WorkTaskId"].ToString() + "') ";
                //slqwhere = slqwhere + " or  id  in (select ModleRecordID from WF_ModleRecordWorkTaskIns where RecordID='" + CurrRecord.ID + "'";
                //slqwhere = slqwhere + " and  WorkFlowId='" + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "'"
                //   + " and  WorkFlowInsId='" + WorkFlowData.Rows[0]["WorkFlowInsId"].ToString() + "'"
                //   + " and  WorkTaskId='" + WorkFlowData.Rows[0]["WorkTaskId"].ToString() + "'"
                //   + " and  WorkTaskInsId='" + WorkFlowData.Rows[0]["WorkTaskInsId"].ToString() + "') "
                //   + ")"
                //   ;
            }
            basesql = slqwhere;
            RefreshData();
            //gridViewOperation.RefreshData(slqwhere);
        }
        /// <summary>
        /// 封装了数据操作的对象
        /// </summary>
        [Browsable(false)]
        public GridViewOperation<PJ_qxfl> GridViewOperation
        {
            get { return gridViewOperation; }
            set { gridViewOperation = value; }
        }
        /// <summary>
        /// 新建对象设置Key值
        /// </summary>
        /// <param name="newobj"></param>
        void gridViewOperation_CreatingObjectEvent(PJ_qxfl newobj)
        {
            if (parentID == null) return;
            newobj.OrgCode = parentID;
            newobj.OrgName = parentObj.OrgName;
            newobj.CreateDate = DateTime.Now;
            Ebada.Core.UserBase m_UserBase = MainHelper.ValidateLogin();
            newobj.CreateMan = m_UserBase.RealName;
            newobj.xssj = DateTime.Now;

            //if (isWorkflowCall)
            //{
            //    WF_ModleRecordWorkTaskIns mrwt = new WF_ModleRecordWorkTaskIns();
            //    mrwt.ModleRecordID = newobj.ID;
            //    mrwt.RecordID = currRecord.ID;
            //    mrwt.WorkFlowId = WorkFlowData.Rows[0]["WorkFlowId"].ToString();
            //    mrwt.WorkFlowInsId = WorkFlowData.Rows[0]["WorkFlowInsId"].ToString();
            //    mrwt.WorkTaskId = WorkFlowData.Rows[0]["WorkTaskId"].ToString();
            //    mrwt.ModleTableName = newobj.GetType().ToString();
            //    mrwt.WorkTaskInsId = WorkFlowData.Rows[0]["WorkTaskInsId"].ToString();
            //    mrwt.CreatTime = DateTime.Now;
            //    MainHelper.PlatformSqlMap.Create<WF_ModleRecordWorkTaskIns>(mrwt);
            //}
            try { frmLP.ReadTaskData(newobj, RecordWorkFlowData, ParentTemple, CurrRecord); }
            catch { }
        }
        /// <summary>
        /// 父表ID
        /// </summary>
        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        public string ParentID
        {
            get { return parentID; }
            set
            {
                parentID = value;
                if (!string.IsNullOrEmpty(value))
                {
                    RefreshData(" where OrgCode='" + value + "' ");
                }
            }
        }
        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        public mOrg ParentObj
        {
            get { return parentObj; }
            set
            {

                parentObj = value;
                if (value == null)
                {
                    parentID = null;
                }
                else
                {
                    ParentID = value.OrgID;
                }
            }
        }

        private void btView_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //if (currRecord.Kind == "交叉跨越对地距离测量流程")
            //{
                IList<PJ_qxfl> list = gridControl1.DataSource as IList<PJ_qxfl>;
                IList<PJ_qxfl> temp = new List<PJ_qxfl>();
                if (list != null && list.Count > 0)
                {
                    foreach (PJ_qxfl item in list)
                    {
                        if (item.s1 == "是")
                        {
                            temp.Add(item);
                        }
                    }
                    ExportQX.ExportExcel(temp);
                }
            //}
            //else
            //{

            //    Dictionary<string, List<PJ_qxfl>> diclist = new Dictionary<string, List<PJ_qxfl>>();
            //    for (int i = 0; i < gridView1.RowCount; i++)
            //    {
            //        PJ_qxfl _pj = gridView1.GetRow(i) as PJ_qxfl;
            //        if (diclist.ContainsKey(_pj.LineID))
            //        {
            //            diclist[_pj.LineID].Add(_pj);
            //        }
            //        else
            //        {
            //            List<PJ_qxfl> lispj = new List<PJ_qxfl>();
            //            lispj.Add(_pj);
            //            diclist[_pj.LineID] = lispj;
            //        }
            //    }
            //    foreach (KeyValuePair<string, List<PJ_qxfl>> pp in diclist)
            //    {
            //        List<PJ_qxfl> objlist = pp.Value;
            //        if (objlist.Count > 0)
            //        {
            //            ExportQX.ExportExcel(objlist);
            //        }

            //    }
            //}
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (parentID == null) return;
            frmXSQD pd = new frmXSQD();
            pd.parentobj = ParentObj;
            pd.ShowDialog();

        }

        private void SubmitButton_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            frmModleSubmit fm = new frmModleSubmit();
            fm.RecordWorkFlowData = WorkFlowData;
            fm.CurrRecord = currRecord;
            if (currRecord.Status == "申报")
                fm.Status = "add";
            else
                fm.Status = "edit";
            fm.Kind = currRecord.Kind;
            Export11 export = new Export11();
            export.CurrRecord = currRecord;
            export.IsWorkflowCall = isWorkflowCall;
            export.ParentTemple = parentTemple;
            export.RecordWorkFlowData = WorkFlowData;
            if (MainHelper.UserOrg.OrgName.IndexOf("局") == -1)
                export.ExportExceljhbAllSubmit(ref parentTemple, "预防性试验", "设备预防性试验计划（总）表", parentID, false);
            else
                export.ExportExceljhbAllSubmit(ref parentTemple, "预防性试验", "设备预防性试验计划（总）表", "", false);
            fm.ParentTemple = parentTemple;
            if (fm.ShowDialog() == DialogResult.OK)
            {

                if (MainHelper.UserOrg.OrgName.IndexOf("局") == -1)
                    export.ExportExceljhbAllSubmitToWF_ModleRecordWorkTaskIns(parentID);
                else
                    export.ExportExceljhbAllSubmitToWF_ModleRecordWorkTaskIns(parentID);
                gridControl1.FindForm().Close();
            }
        }

        private void TaskOverButton_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //请求确认
            if (MsgBox.ShowAskMessageBox("是否确认此节点结束，并进入下一流程?") != DialogResult.OK)
            {
                //SendMessage(this.Handle, 0x0010, (IntPtr)0, (IntPtr)0);
                return;
            }
            string strmes = "";

            if (RecordWorkTask.CheckOnRiZhi(WorkFlowData))
            {

                RecordWorkTask.CreatRiZhi(WorkFlowData, null, currRecord.ID, new object[] { currRecord });

            }
            WF_WorkTaskCommands wt = (WF_WorkTaskCommands)MainHelper.PlatformSqlMap.GetObject("SelectWF_WorkTaskCommandsList", " where WorkFlowId='" + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "' and WorkTaskId='" + WorkFlowData.Rows[0]["WorkTaskId"].ToString() + "'");
            if (wt != null)
            {
                strmes = RecordWorkTask.RunWorkFlow(MainHelper.User.UserID, WorkFlowData.Rows[0]["OperatorInsId"].ToString(), WorkFlowData.Rows[0]["WorkTaskInsId"].ToString(), wt.CommandName);
            }
            else
            {
                strmes = RecordWorkTask.RunWorkFlow(MainHelper.User.UserID, WorkFlowData.Rows[0]["OperatorInsId"].ToString(), WorkFlowData.Rows[0]["WorkTaskInsId"].ToString(), "提交");
            }
            if (strmes.IndexOf("未提交至任何人") > -1)
            {
                MsgBox.ShowTipMessageBox("未提交至任何人,创建失败,请检查流程模板和组织机构配置是否正确!");
                return;
            }
            else
                MsgBox.ShowTipMessageBox(strmes);
            fjly.btn_Submit_Click(sender, e);
            strmes = RecordWorkTask.GetWorkFlowTaskCaption(WorkFlowData.Rows[0]["WorkTaskInsId"].ToString());
            if (strmes == "结束节点1")
            {
                currRecord.Status = "存档";
            }
            else
            {
                currRecord.Status = strmes;
            }
            currRecord.LastChangeTime = DateTime.Now.ToString();
            if (currRecord.ImageAttachment == null) currRecord.ImageAttachment = new byte[0];
            if (currRecord.SignImg == null) currRecord.SignImg = new byte[0];
            MainHelper.PlatformSqlMap.Update("UpdateLP_Record", CurrRecord);
            gridControl1.FindForm().Close();
        }

        private void liuchenBarClear_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string strmess = "";
            //请求确认
            if (MsgBox.ShowAskMessageBox("是否确认清除关联信息?") != DialogResult.OK)
            {
                return;
            }
            if (RecordWorkTask.DeleteModleRelationRecord(currRecord, WorkFlowData, ref strmess))
            {
                MsgBox.ShowTipMessageBox("清除成功");
            }
            else
            {
                MsgBox.ShowTipMessageBox("清除失败: " + strmess);
            }

        }

        private void barFJLY_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            if (fjly == null) fjly = new frmModleFjly();
            fjly.CurrRecord = currRecord;
            fjly.RecordWorkFlowData = WorkFlowData;
            fjly.Kind = currRecord.Kind;
            fjly.Status = RecordWorkTask.GetWorkTaskStatus(WorkFlowData, currRecord);
            fjly.ShowDialog();
        }

        private void barxqjl_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (gridView1.FocusedRowHandle < 0) return;
            //请求确认
            if (MsgBox.ShowAskMessageBox("是否确认选中记录消缺，并进入下一流程?") != DialogResult.OK)
            {
                return;
            }

            foreach (var item in gridView1.GetSelectedRows())
            {
                PJ_qxfl pj = gridView1.GetRow(item) as PJ_qxfl;
                PJ_qxfl pj1 = gridView1.GetRow(item) as PJ_qxfl;
                if (pj.s1 != pj1.s1)
                {
                    MsgBox.ShowWarningMessageBox("类型不一致，请统一后再消缺！");
                    return;
                }
            }
            foreach (var item in gridView1.GetSelectedRows())
            {
                PJ_qxfl pj = gridView1.GetRow(item) as PJ_qxfl;
                if (pj != null)
                {
                    ClientHelper.PlatformSqlMap.Update<PJ_qxfl>(pj);
                }
            }

            PJ_qxfl qxfl = gridView1.GetFocusedRow() as PJ_qxfl;
            string strmes = "";
            currRecord.OrgName = qxfl.OrgName;
            currRecord.LastChangeTime = DateTime.Now.ToString();
            if (RecordWorkTask.CheckOnRiZhi(WorkFlowData))
            {

                RecordWorkTask.CreatRiZhi(WorkFlowData, null, currRecord.ID, new object[] { qxfl, currRecord });

            }
            WF_ModleRecordWorkTaskIns mrwt = new WF_ModleRecordWorkTaskIns();
            mrwt.ModleRecordID = qxfl.ID;
            mrwt.RecordID = currRecord.ID;
            mrwt.WorkFlowId = WorkFlowData.Rows[0]["WorkFlowId"].ToString();
            mrwt.WorkFlowInsId = WorkFlowData.Rows[0]["WorkFlowInsId"].ToString();
            mrwt.WorkTaskId = WorkFlowData.Rows[0]["WorkTaskId"].ToString();
            mrwt.ModleTableName = qxfl.GetType().ToString();
            mrwt.WorkTaskInsId = WorkFlowData.Rows[0]["WorkTaskInsId"].ToString();
            mrwt.CreatTime = DateTime.Now;
            MainHelper.PlatformSqlMap.Create<WF_ModleRecordWorkTaskIns>(mrwt);
            WF_WorkTaskCommands wt;


            //string[] strtemp = RecordWorkTask.RunNewGZPRecord(currRecord.ID, kind, MainHelper.User.UserID);
            wt = (WF_WorkTaskCommands)MainHelper.PlatformSqlMap.GetObject("SelectWF_WorkTaskCommandsList", " where WorkFlowId='" + WorkFlowData.Rows[0]["WorkFlowId"].ToString() + "' and WorkTaskId='" + WorkFlowData.Rows[0]["WorkTaskId"].ToString() + "'");
            if (wt != null)
            {
                strmes = RecordWorkTask.RunWorkFlow(MainHelper.User.UserID, WorkFlowData.Rows[0]["OperatorInsId"].ToString(), WorkFlowData.Rows[0]["WorkTaskInsId"].ToString(), wt.CommandName);
            }
            else
            {
                strmes = RecordWorkTask.RunWorkFlow(MainHelper.User.UserID, WorkFlowData.Rows[0]["OperatorInsId"].ToString(), WorkFlowData.Rows[0]["WorkTaskInsId"].ToString(), "提交");
            }
            if (strmes.IndexOf("未提交至任何人") > -1)
            {
                MsgBox.ShowTipMessageBox("未提交至任何人,创建失败,请检查流程模板和组织机构配置是否正确!");
                return;
            }
            else
                MsgBox.ShowTipMessageBox(strmes);
            strmes = RecordWorkTask.GetWorkFlowTaskCaption(WorkFlowData.Rows[0]["WorkTaskInsId"].ToString());
            if (strmes == "结束节点1")
            {
                currRecord.Status = "存档";
            }
            else
            {
                currRecord.Status = strmes;
            }
            if (currRecord.ImageAttachment == null)
            {
                currRecord.ImageAttachment = new byte[0];
            }
            if (currRecord.DocContent == null)
            {
                currRecord.DocContent = new byte[0];
            }
            if (currRecord.SignImg == null)
            {
                currRecord.SignImg = new byte[0];
            }

            currRecord.LastChangeTime = DateTime.Now.ToString();
            if (currRecord.ImageAttachment == null) currRecord.ImageAttachment = new byte[0];
            if (currRecord.SignImg == null) currRecord.SignImg = new byte[0];
            MainHelper.PlatformSqlMap.Update("UpdateLP_Record", currRecord);



            gridControl1.FindForm().Close();
        }


        private void RefreshData()
        {
            if (barCheckItem1.Checked)
            {

                gridViewOperation.RefreshData(basesql + " and len(xcr)=0");
            }
            else
            {
                gridViewOperation.RefreshData(basesql);
            }
        }


        private void barCheckItem1_CheckedChanged(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            RefreshData();
        }


    }
}
