
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace EbadaAutoupdater
{
    public partial class DownloadConfirm : Form
    {
        #region The private fields
        List<DownloadFileInfo> downloadFileList = null;
        #endregion

        #region The constructor of DownloadConfirm
        public DownloadConfirm(List<DownloadFileInfo> downloadfileList,Config config)
        {
            InitializeComponent();

            downloadFileList = downloadfileList;
            label4.Text += config.ServerUrl;
        }
        #endregion

        #region The private method
        private void OnLoad(object sender, EventArgs e)
        {
            foreach (DownloadFileInfo file in this.downloadFileList)
            {
                ListViewItem item = new ListViewItem(new string[] { file.FileName, file.LastVer, file.Size.ToString() });
            }

            this.Activate();
            this.Focus();
        }
        #endregion
    }
}