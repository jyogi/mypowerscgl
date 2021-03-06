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
namespace Ebada.Scgl.Lcgl
{
    public partial class frmSDYEdit : FormBase, IPopupFormEdit {
        SortableSearchableBindingList<PJ_sdytz> m_CityDic = new SortableSearchableBindingList<PJ_sdytz>();

        //供电所ID
        public string gdsID
        {
            get { return null; }
            set
            {
                ICollection list = ComboBoxHelper.getRy("OrgCode", value);
                comboBoxEdit10.Properties.Items.Clear();
                comboBoxEdit10.Properties.Items.AddRange(list);
                list = Client.ClientHelper.PlatformSqlMap.GetList("SelectOneStr", "select UserName from mUser where orgcode='" + value + "'and PostName ='所长'");
                if (list != null && list.Count > 0)
                {
                    comboBoxEdit11.Properties.Items.Clear();
                    comboBoxEdit11.Properties.Items.AddRange(list);
                    comboBoxEdit11.EditValue = list;
                    rowData.chargeman = comboBoxEdit11.EditValue.ToString();
                }

            }
        }

        public frmSDYEdit()
        {
            InitializeComponent();
        }
        void dataBind() {

            this.comboBoxEdit1.DataBindings.Add("EditValue", rowData, "khdz");
            this.comboBoxEdit2.DataBindings.Add("EditValue", rowData, "khmc");
            this.comboBoxEdit3.DataBindings.Add("EditValue", rowData, "zdyOrgName");
            this.comboBoxEdit4.DataBindings.Add("EditValue", rowData, "zdyLineName");
            this.comboBoxEdit5.DataBindings.Add("EditValue", rowData, "kgfs");
            this.comboBoxEdit6.DataBindings.Add("EditValue", rowData, "zdykgModle");
            this.comboBoxEdit7.DataBindings.Add("EditValue", rowData, "fdyOrgName");
            this.comboBoxEdit8.DataBindings.Add("EditValue", rowData, "fdyLineName");
            this.comboBoxEdit9.DataBindings.Add("EditValue", rowData, "fdykgModle");

            this.memoEdit1.DataBindings.Add("EditValue", rowData, "Remark");
            this.comboBoxEdit10.DataBindings.Add("EditValue", rowData, "zbr");
            this.comboBoxEdit11.DataBindings.Add("EditValue", rowData, "chargeman");
            gdsID = MainHelper.UserOrg.OrgCode;
        }
        #region IPopupFormEdit Members
        private PJ_sdytz rowData = null;

        public object RowData {
            get {
               
                return rowData;
              
            }
            set {
                if (value == null) return;
                if (rowData == null) {
                    this.rowData = value as PJ_sdytz;
                    this.InitComboBoxData();
                    dataBind();
                } else {
                    ConvertHelper.CopyTo<PJ_sdytz>(value as PJ_sdytz, rowData);
                }
            
            }
        }

        #endregion




        public void SetComboBoxData(DevExpress.XtraEditors.LookUpEdit comboBox, string displayMember, string valueMember, string nullTest, string cnStr, IList post)
        {
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

        private void InitComboBoxData() {
           
            //填充下拉列表数据
            comboBoxEdit3.Properties.Items.Clear();
            comboBoxEdit7.Properties.Items.Clear();
            IList strlist = Client.ClientHelper.PlatformSqlMap.GetList("SelectOneStr",
            string.Format("select OrgName from mOrg where Orgtype='2' order by orgcode"));
            comboBoxEdit3.Properties.Items.AddRange(strlist);
            comboBoxEdit7.Properties.Items.AddRange(strlist);
            ComboBoxHelper.FillCBoxByDyk("12线路开关卡片", "型号", comboBoxEdit6.Properties);
            ComboBoxHelper.FillCBoxByDyk("12线路开关卡片", "型号", comboBoxEdit9.Properties);
            FillComb(comboBoxEdit4);
            FillComb(comboBoxEdit8);
        }
        
        private void FillComb(ComboBoxEdit cob)
        {
            string sqlwhere = "select LineName from PS_xl where  len(linecode)=6 and   OrgCode='" + MainHelper.UserOrg.OrgCode + "'";
            IList strlist = Client.ClientHelper.PlatformSqlMap.GetList("SelectOneStr", sqlwhere);
            cob.Properties.Items.Clear();
            cob.Properties.Items.AddRange(strlist);

          
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

      

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            SelectorHelper.SelectDyk("所月度停电计划", "主要检修内容", memoEdit1);
        }

      

       
        private void comboBoxEdit2_Properties_EditValueChanged(object sender, EventArgs e)
        {

        }

       

       
    }
}