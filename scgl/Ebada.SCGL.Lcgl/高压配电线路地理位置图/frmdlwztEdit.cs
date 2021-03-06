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
    public partial class frmdlwztEdit : FormBase, IPopupFormEdit
    {
        SortableSearchableBindingList<PJ_gypdxldlwzt> m_CityDic = new SortableSearchableBindingList<PJ_gypdxldlwzt>();

        public frmdlwztEdit()
        {
            InitializeComponent();
        }
        void dataBind() {



            this.comboBoxEdit1.DataBindings.Add("EditValue", rowData, "OrgName");
            this.memoEdit1.DataBindings.Add("EditValue", rowData, "Remark");

            //
            //this.lookUpEdit1.DataBindings.Add("EditValue", rowData, "OrgType");
            //this.dateEdit1.DataBindings.Add("EditValue", rowData, "PSafeTime");           
           // this.dateEdit2.DataBindings.Add("EditValue", rowData, "DSafeTime");

        }
        #region IPopupFormEdit Members
        private PJ_gypdxldlwzt rowData = null;

        public object RowData {
            get {
                return rowData;
            }
            set {
                if (value == null) return;
                if (rowData == null) {
                    this.rowData = value as PJ_gypdxldlwzt;
                    this.InitComboBoxData();
                    dataBind();
                } else {
                    ConvertHelper.CopyTo<PJ_gypdxldlwzt>(value as PJ_gypdxldlwzt, rowData);
                }
            }
        }

        #endregion

        private void InitComboBoxData() {
            comboBoxEdit1.Properties.Items.Clear();
            comboBoxEdit3.Properties.Items.Clear();
            IList strlist = Client.ClientHelper.PlatformSqlMap.GetList("SelectOneStr",
            string.Format("select OrgName from mOrg where 5=5  AND ORGTYPE='1' order by OrgName"));
            if (strlist.Count > 0)
                comboBoxEdit1.Properties.Items.AddRange(strlist);
            else
            {

            }

            comboBoxEdit1.Properties.Items.Add("全局");




         
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

       
       

        private void btnOK_Click(object sender, EventArgs e)
        {
            mOrg org=MainHelper.PlatformSqlMap.GetOne<mOrg>(" where OrgName='"+rowData.OrgName+"' ");
            if (org == null)
            {
                if (rowData.OrgName == "全局")
                {
                    rowData.OrgCode = "all";
                }
            }
            else
            {
                rowData.OrgCode = org.OrgCode;
            }
        }

        private void buttonEdit1_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.Filter = "Excel文件(*.xls)|*.xls|Word文件(*.doc)|*.doc";
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                buttonEdit1.Text = openFileDialog1.FileName;
                rowData.BigData = Ecommon.GetImageBate(openFileDialog1.FileName);
                string[] str_name =  buttonEdit1.Text.Split("\\".ToCharArray());
                string[] filename = str_name[str_name.Length - 1].Split(".".ToCharArray());
                byte[] Excbyte = System.Text.Encoding.Default.GetBytes(filename[filename.Length - 1]);
                string Exc = System.Text.Encoding.Default.GetString(Excbyte);
                rowData.S1 ="."+ Exc;
            }
        }

      
    }
}