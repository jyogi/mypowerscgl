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

namespace Ebada.Scgl.Sbgl
{
    /// <summary>
    /// 
    /// </summary>
    [ToolboxItem(false)]
    public partial class UCPS_DYXL : DevExpress.XtraEditors.XtraUserControl
    {
        private GridViewOperation<PS_dyxl> gridViewOperation;

        public event SendDataEventHandler<PS_dyxl> FocusedRowChanged;
        public event SendDataEventHandler<mOrg> SelectGdsChanged;
        frmdyxlEdit frm = new frmdyxlEdit();
        private string parentID = null;
        private PS_tqbyq parentObj;
        public UCPS_DYXL()
        {
            InitializeComponent();
            initImageList();
            gridViewOperation = new GridViewOperation<PS_dyxl>(gridControl1, gridView1, barManager1, frm);
            gridViewOperation.BeforeAdd += new ObjectOperationEventHandler<PS_dyxl>(gridViewOperation_BeforeAdd);
            gridViewOperation.CreatingObjectEvent += gridViewOperation_CreatingObjectEvent;
            gridViewOperation.BeforeDelete += new ObjectOperationEventHandler<PS_dyxl>(gridViewOperation_BeforeDelete);
            gridView1.FocusedRowChanged += gridView1_FocusedRowChanged;
        }
        
        void gridViewOperation_BeforeDelete(object render, ObjectOperationEventArgs<PS_dyxl> e)
        {
           
        }

        void gridViewOperation_BeforeAdd(object render, ObjectOperationEventArgs<PS_dyxl> e)
        {
            if (parentID == null)
                e.Cancel = true;
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            InitColumns();//初始列
            //InitData();//初始数据
            if (this.Site != null) return;
            btGdsList.Edit = DicTypeHelper.GdsDic;
            btGdsList.EditValueChanged += new EventHandler(btGdsList_EditValueChanged);
            btXlList.EditValueChanged += new EventHandler(btXlList_EditValueChanged);
            btGtList.EditValueChanged += new EventHandler(btGtList_EditValueChanged);
            btTQList.EditValueChanged += new EventHandler(btTQList_EditValueChanged);
            btBYQList.EditValueChanged += new EventHandler(btBYQList_EditValueChanged);
            if (MainHelper.UserOrg != null && MainHelper.UserOrg.OrgType == "1")
            {//如果是供电所人员，则锁定
                btGdsList.EditValue = MainHelper.UserOrg.OrgCode;
                btGdsList.Edit.ReadOnly = true;
            }

        }

        void btBYQList_EditValueChanged(object sender, EventArgs e)
        {
            parentID = btBYQList.EditValue.ToString();
            if (parentID != "")
            {
                IList<PS_tqbyq> list = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PS_tqbyq>("where byqID='" + parentID + "'");
                PS_tqbyq byq = null;
                if (list.Count > 0)
                {
                    byq = list[0];
                    ParentObj = byq;
                }
            }
        }

        void btTQList_EditValueChanged(object sender, EventArgs e)
        {
            IList<PS_tqbyq> list = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PS_tqbyq>("where tqID='" + btTQList.EditValue.ToString() + "'");
            repositoryItemLookUpEdit5.DataSource = list;
        }

        void btGtList_EditValueChanged(object sender, EventArgs e)
        {
            IList<PS_tq> list = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PS_tq>("where gtID='" + btGtList.EditValue.ToString() + "'");
            repositoryItemLookUpEdit4.DataSource = list;
 
        }

        void btXlList_EditValueChanged(object sender, EventArgs e)
        {
                IList<PS_gt> list = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PS_gt>("where LineCode='" + btXlList.EditValue.ToString() + "'");
                repositoryItemLookUpEdit3.DataSource = list;
        }

        void btGdsList_EditValueChanged(object sender, EventArgs e)
        {
            IList<mOrg> list = Client.ClientHelper.PlatformSqlMap.GetList<mOrg>("where orgcode='" + btGdsList.EditValue + "'");
            mOrg org=null;
            if (list.Count > 0)
                org = list[0];
            
            if (org != null)
            {
                IList<PS_xl> xlList = Client.ClientHelper.PlatformSqlMap.GetListByWhere<PS_xl>(" where OrgCode='" + org.OrgCode + "'");
                repositoryItemLookUpEdit2.DataSource = xlList;
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
                FocusedRowChanged(gridView1, gridView1.GetFocusedRow() as PS_dyxl);
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
        /// <summary>
        /// 初始化列,
        /// </summary>
        public void InitColumns()
        {

            //需要隐藏列时在这写代码
            //hideColumn("ParentID");
            //hideColumn("gzrjID");
        }
        /// <summary>
        /// 刷新数据
        /// </summary>
        /// <param name="slqwhere">sql where 子句 ，为空时查询全部数据</param>
        public void RefreshData(string slqwhere)
        {
            gridViewOperation.RefreshData(slqwhere);
        }
        /// <summary>
        /// 封装了数据操作的对象
        /// </summary>
        [Browsable(false)]
        public GridViewOperation<PS_dyxl> GridViewOperation
        {
            get { return gridViewOperation; }
            set { gridViewOperation = value; }
        }
        /// <summary>
        /// 新建对象设置Key值
        /// </summary>
        /// <param name="newobj"></param>
        void gridViewOperation_CreatingObjectEvent(PS_dyxl newobj)
        {
            if (parentID == null) return;
            newobj.byqID = parentID;
   
        }
        /// <summary>
        /// 父表ID
        /// </summary>
        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        //[DesignTimeVisible(false)]
        public string ParentID
        {
            get { return parentID; }
            set
            {
                parentID = value;
                if (!string.IsNullOrEmpty(value))
                {
                    RefreshData(" where byqID='" + value + "' order by dyxlCode");
                }
            }
        }
        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
        public PS_tqbyq ParentObj
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
                    ParentID = value.byqID;
                }
            }
        }

        private void btView_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e) {
            if (gridView1.FocusedRowHandle>=0)
            {
                gridControl1.ExportToXls("C:\\temp.xls");
                System.Diagnostics.Process.Start("C:\\temp.xls");
                
            }
           
           
        }
    }
}
