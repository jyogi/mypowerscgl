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
namespace Ebada.Scgl.Sbgl
{
    public partial class frmgtEdit : FormBase, IPopupFormEdit {
        SortableSearchableBindingList<PS_gt> m_CityDic = new SortableSearchableBindingList<PS_gt>();
        private Boolean multipleAdd = false;

        public Boolean MultipleAdd {
            get { return multipleAdd; }
            set { multipleAdd = value;
            labelControl5.Visible = value;
            spinEdit8.Visible = value;
            comboBoxEdit1.Enabled = !value;
            comboBoxEdit2.Enabled = !value;
            }
        }
        public int MultipleNum {
            get{
                return Convert.ToInt32(spinEdit8.EditValue);
            }
        }
        public frmgtEdit() {
            InitializeComponent();
        }
        void dataBind() {


            this.comboBoxEdit1.DataBindings.Add("EditValue", rowData, "gtCode");
            this.comboBoxEdit2.DataBindings.Add("EditValue", rowData, "gth");
            this.comboBoxEdit3.DataBindings.Add("EditValue", rowData, "gtType");
            this.comboBoxEdit4.DataBindings.Add("EditValue", rowData, "gtModle");
            this.spinEdit1.DataBindings.Add("EditValue", rowData, "gtHeight");
            this.spinEdit2.DataBindings.Add("EditValue", rowData, "gtLon");
            this.spinEdit3.DataBindings.Add("EditValue", rowData, "gtLat");
            this.spinEdit4.DataBindings.Add("EditValue", rowData, "gtElev");
            this.spinEdit5.DataBindings.Add("EditValue", rowData, "gtMs");
            this.spinEdit6.DataBindings.Add("EditValue", rowData, "gtZj");
            this.spinEdit7.DataBindings.Add("EditValue", rowData, "gtSpan");
            this.comboBoxEdit5.DataBindings.Add("EditValue", rowData, "gtJg");
 

        }
        #region IPopupFormEdit Members
        private PS_gt rowData = null;

        public object RowData {
            get {
                return rowData;
            }
            set {
                if (value == null) return;
                if (rowData == null) {
                    this.rowData = value as PS_gt;
                    this.InitComboBoxData();
                    dataBind();
                } else {
                    ConvertHelper.CopyTo<PS_gt>(value as PS_gt, rowData);
                }
                setImage();
            }
        }

        private void setImage() {
            pictureEdit1.EditValue = null;
            imageData = null;
            if (string.IsNullOrEmpty(rowData.ImageID)) return;
            image=Client.ClientHelper.PlatformSqlMap.GetOneByKey<PS_Image>(rowData.ImageID);
            if (image != null)
                pictureEdit1.EditValue = image.ImageData;
            
            imageData = null;
        }
        PS_Image image = null;
        public PS_Image GetPS_Image() {
            if (image != null && imageData!=null)
                image.ImageData =(byte[]) imageData;
            return image;
        }
        #endregion

        private void InitComboBoxData() {
            ComboBoxHelper.FillCBoxByGttype(comboBoxEdit4);
            pdsbModelHelper.FillCBoxByGt(comboBoxEdit3);

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

        private void comboBoxEdit2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (comboBoxEdit1.Text == "")
            {
                MsgBox.ShowTipMessageBox("杆塔编号不能为空。");
                comboBoxEdit1.Focus();
                return;
            }
            this.DialogResult = DialogResult.OK;
            this.Close();
        }

        private void frmgtEdit_Load(object sender, EventArgs e)
        {

        }

        private void pictureEdit1_EditValueChanged(object sender, EventArgs e) {
            imageData = pictureEdit1.EditValue;
        }
        object imageData;
        public object GetImage() {

            return imageData;
        }
        
    }
}