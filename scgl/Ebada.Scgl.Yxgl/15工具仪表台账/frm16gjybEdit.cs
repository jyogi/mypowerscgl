﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using Ebada.UI.Base;
using Ebada.Client;
using Ebada.Client.Platform;
using Ebada.Core;
using Ebada.Scgl.Model;
using Ebada.Scgl.Core;
using System.Collections;
namespace Ebada.Scgl.Yxgl
{
    public partial class frm16gjybEdit : FormBase, IPopupFormEdit {
        SortableSearchableBindingList<PS_gjyb> m_CityDic = new SortableSearchableBindingList<PS_gjyb>();

        public frm16gjybEdit() {
            InitializeComponent();
        }
        void dataBind() {


            this.comboBoxEdit1.DataBindings.Add("EditValue", rowData, "sbName");
            this.comboBoxEdit2.DataBindings.Add("EditValue", rowData, "jdgg");
            this.comboBoxEdit3.DataBindings.Add("EditValue", rowData, "dw");
            this.comboBoxEdit4.DataBindings.Add("EditValue", rowData, "cj");
            this.comboBoxEdit5.DataBindings.Add("EditValue", rowData, "sbCode");
            this.memoEdit1.DataBindings.Add("EditValue", rowData, "Remark");
            this.dateEdit1.DataBindings.Add("EditValue", rowData, "lqsj");
            this.spinEdit1.DataBindings.Add("EditValue", rowData, "sl");
            
            //this.lookUpEdit1.DataBindings.Add("EditValue", rowData, "OrgType");
            //this.dateEdit1.DataBindings.Add("EditValue", rowData, "PSafeTime");           
           // this.dateEdit2.DataBindings.Add("EditValue", rowData, "DSafeTime");

        }
        #region IPopupFormEdit Members
        private PS_gjyb rowData = null;

        public object RowData {
            get {
                return rowData;
            }
            set {
                if (value == null) return;
                if (rowData == null) {
                    this.rowData = value as PS_gjyb;
                    this.InitComboBoxData();
                    dataBind();
                } else {
                    ConvertHelper.CopyTo<PS_gjyb>(value as PS_gjyb, rowData);
                }
            }
        }

        #endregion

        private void InitComboBoxData() {
            //this.m_CityDic.Clear();
            //this.m_CityDic.Add(ClientHelper.PlatformSqlMap.GetList<PS_gjyb>(" WHERE Citylevel = '2'"));
          /*  IList<DicType> list = new List<DicType>();
            list.Add(new DicType("0", "机构"));
            list.Add(new DicType("1", "供电所"));
            list.Add(new DicType("2", "变电所"));
            this.SetComboBoxData(this.lookUpEdit1, "Value", "Key", "请选择", "种类", list);*/

            //if (null != cityCode && cityCode.Trim().Length > 0)
            //    this.cltCity.Properties.KeyValue = cityCode;
            ComboBoxHelper.FillCBoxByDyk("15工具仪表台账", "规格精度", comboBoxEdit2.Properties);
            ComboBoxHelper.FillCBoxByDyk("15工具仪表台账", "名称",comboBoxEdit1.Properties);
            ComboBoxHelper.FillCBoxByDyk("15工具仪表台账", "制造厂家",comboBoxEdit4.Properties);
           // ComboBoxHelper.FillCBoxByDyk("15工具仪表台账", "编号",comboBoxEdit5.Properties);
            ComboBoxHelper.FillCBoxByDyk("公用属性", "单位", comboBoxEdit3.Properties);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="comboBox"></param>
        /// <param name="displayMember"></param>
        /// <param name="valueMember"></param>
        /// <param name="nullTest"></param>
        /// <param name="cnStr"></param>
        /// <param name="post"></param>
        public void SetComboBoxData(DevExpress.XtraEditors.LookUpEdit comboBox, string displayMember, string valueMember, string nullTest, string cnStr, IList<DicType> post) {
            comboBox.Properties.Columns.Clear();
            comboBox.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            comboBox.Properties.DataSource = post;
            comboBox.Properties.DisplayMember = displayMember;
            comboBox.Properties.ValueMember = valueMember;
            comboBox.Properties.NullText = nullTest;
            comboBox.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo(valueMember, "ID", 20, DevExpress.Utils.FormatType.None, "", false, DevExpress.Utils.HorzAlignment.Default),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo(displayMember, cnStr)});
        }

        private void textEdit1_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void groupControlOrg_Paint(object sender, PaintEventArgs e)
        {

        }

        private void frm16gjybEdit_Load(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void comboBoxEdit5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void labelControl9_Click(object sender, EventArgs e)
        {

        }

        private void labelControl11_Click(object sender, EventArgs e)
        {

        }

        private void labelControl5_Click(object sender, EventArgs e)
        {

        }

        private void comboBoxEdit1_Properties_Click(object sender, EventArgs e)
        {
            //frmDykSelector dlg = new frmDykSelector();
            //PJ_dyk dyk = null;
            //PJ_dyk parentObj = Client.ClientHelper.PlatformSqlMap.GetOne<PJ_dyk>("where dx='15工具仪表台账' and sx='名称' and parentid=''");
            //if (parentObj != null)
            //{
            //    dlg.ucpJ_dykSelector1.ParentObj = parentObj;
            //    // dlg.TxtMemo = txt;
            //    if (dlg.ShowDialog() == DialogResult.OK)
            //    {
            //        comboBoxEdit1.Text = dlg.ucpJ_dykSelector1.GetSelectedRow().nr;
            //    }


            //}
        }

        private void comboBoxEdit4_Properties_Click(object sender, EventArgs e)
        {
            //frmDykSelector dlg = new frmDykSelector();
            //PJ_dyk dyk = null;
            //PJ_dyk parentObj = Client.ClientHelper.PlatformSqlMap.GetOne<PJ_dyk>("where dx='15工具仪表台账' and sx='制 造 厂 家' and parentid=''");
            //if (parentObj != null)
            //{
            //    dlg.ucpJ_dykSelector1.ParentObj = parentObj;
            //    // dlg.TxtMemo = txt;
            //    if (dlg.ShowDialog() == DialogResult.OK)
            //    {
            //        comboBoxEdit4.Text = dlg.ucpJ_dykSelector1.GetSelectedRow().nr;
            //    }


            //}
        }

        private void comboBoxEdit5_Properties_Click(object sender, EventArgs e)
        {
            //frmDykSelector dlg = new frmDykSelector();
            //PJ_dyk dyk = null;
            //PJ_dyk parentObj = Client.ClientHelper.PlatformSqlMap.GetOne<PJ_dyk>("where dx='15工具仪表台账' and sx='编  号' and parentid=''");
            //if (parentObj != null)
            //{
            //    dlg.ucpJ_dykSelector1.ParentObj = parentObj;
            //    // dlg.TxtMemo = txt;
            //    if (dlg.ShowDialog() == DialogResult.OK)
            //    {
            //        comboBoxEdit4.Text = dlg.ucpJ_dykSelector1.GetSelectedRow().nr;
            //    }


            //}
        }

        private void groupBox1_Enter_1(object sender, EventArgs e)
        {

        }

        private void comboBoxEdit5_SelectedIndexChanged_1(object sender, EventArgs e)
        {

        }
    }
}