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
using DevExpress.XtraEditors.Repository;
using System.IO;
namespace Ebada.Scgl.Yxgl
{
    public partial class frmddyb : FormBase, IPopupFormEdit {
        SortableSearchableBindingList<xxgx_ddyb> m_CityDic = new SortableSearchableBindingList<xxgx_ddyb>();

        public frmddyb()
        {
            InitializeComponent();
        }
        void dataBind() {
            btnSelectFile.DataBindings.Add("EditValue", rowData, "filename");
        }
        #region IPopupFormEdit Members
        private xxgx_ddyb rowData = null;

        public object RowData {
            get {
               
                return rowData;
              
            }
            set {
                if (value == null) return;
                if (rowData == null) {
                    this.rowData = value as xxgx_ddyb;
                    this.InitComboBoxData();
                    dataBind();
                } else {
                    ConvertHelper.CopyTo<xxgx_ddyb>(value as xxgx_ddyb, rowData);
                }
                
            }
        }

        #endregion
        


        private void InitComboBoxData() {

           
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

        

        private void btnOk_Click(object sender, EventArgs e)
        {
           
            if (string.IsNullOrEmpty(btnSelectFile.EditValue as string))
            {
                MsgBox.ShowWarningMessageBox("请选择要上传的文件!");
                return;
            }
            rowData.filedata = compressFile(btnSelectFile.EditValue.ToString());
            this.DialogResult = DialogResult.OK;
        }
        private byte[] compressFile(string filename)
        {
            byte[] buff = new byte[0];
            if (File.Exists(filename))
            {
                string filecopy = filename + "_";
                string gzFile = string.Empty;
                //复制文件
                File.Copy(filename, filecopy);
                //压缩文件
                try
                {
                    gzFile = GZipHelper.Compress(filecopy);

                }
                catch (Exception err)
                {
                    throw new Exception("压缩失败。", err);
                }
                finally
                {
                    File.Delete(filecopy);
                }
                //读取文件
                using (FileStream fs = File.OpenRead(gzFile))
                {
                    buff = new byte[(int)fs.Length];
                    fs.Read(buff, 0, (int)fs.Length);
                }

                File.Delete(gzFile);

            }
            return buff;
        }

        private void btnSelectFile_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog();
            openFileDialog1.Filter = "Excel文件(*.xls)|*.xls";
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                btnSelectFile.EditValue = Path.GetFileName(openFileDialog1.FileName);

            }
        }

      
    }
}