﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using Ebada.Client.Platform;

namespace Ebada.Scgl.Sbgl
{
    [ToolboxItem(false)]
    public partial class UCsd_gtM : DevExpress.XtraEditors.XtraUserControl
    {
        public UCsd_gtM()
        {
            InitializeComponent();
            ucpS_TQ1.HideList();
            ucpS_KG1.HideList();
            ucpS_GTSB1.HideList();
            ucpS_GT1.FocusedRowChanged += new Ebada.Client.SendDataEventHandler<Ebada.Scgl.Model.sd_gt>(ucpS_GT1_FocusedRowChanged);
            xtraTabControl1.SelectedPageChanged += new DevExpress.XtraTab.TabPageChangedEventHandler(xtraTabControl1_SelectedPageChanged);
            xtraTabControl1.TabPages.Remove(xtraTabPage1);
            xtraTabControl1.TabPages.Remove(xtraTabPage2);
        }
        protected override void OnLoad(EventArgs e) {
            base.OnLoad(e);
            init();
        }
        private void init() {
            ucpS_GT1.HideList();
            SplitContainerControl scc = new SplitContainerControl();
            scc.Dock = DockStyle.Fill;
            scc.Parent = this;
            splitCC1.Parent = scc.Panel2;
            xltree = new UCsdxlTreeSelector();
            if (MainHelper.UserOrg != null && MainHelper.UserOrg.OrgType == "1") {//如果是供电所人员，则锁定
                xltree.SetShowOrg(MainHelper.UserOrg);
            }
            xltree.Dock = DockStyle.Fill;
            xltree.Parent = scc.Panel1;
            scc.SplitterPosition = 200;
            xltree.LineSelectionChanged += new Ebada.Client.SendDataEventHandler<Ebada.Scgl.Model.sd_xl>(xltree_LineSelectionChanged);
            
        }

        void xltree_LineSelectionChanged(object sender, Ebada.Scgl.Model.sd_xl obj) {
            ucpS_GT1.ParentObj = obj;
        }
        UCsdxlTreeSelector xltree;
        UCsd_jcky ucps_jcky;
        Ebada.Scgl.Model.sd_gt mgt;
        void xtraTabControl1_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e) {
            if (e.Page == xtraTabPage4) {
                if (ucps_jcky == null) {
                    ucps_jcky = new UCsd_jcky();
                    ucps_jcky.Dock = DockStyle.Fill;
                    xtraTabPage4.Controls.Add(ucps_jcky);
                    ucps_jcky.HideList();
                }
                ucps_jcky.ParentObj = mgt;
            }
        }

        void ucpS_GT1_FocusedRowChanged(object sender, Ebada.Scgl.Model.sd_gt obj) {

            if (obj != null) {
                mgt = obj;
                //ucpS_TQ1.ParentObj = obj;
                //ucpS_KG1.ParentObj = obj;
                ucpS_GTSB1.ParentObj = obj;
            } else {
                mgt = null;
                //ucpS_TQ1.ParentObj = null;
                //ucpS_KG1.ParentObj = null;
                ucpS_GTSB1.ParentObj = null;
            }
            if (xtraTabControl1.SelectedTabPage == xtraTabPage4)
                ucps_jcky.ParentObj = mgt;

            splitCC1.Panel2.Text = "杆塔编号：" + (obj != null ? obj.gtCode : "");
        }
    }
}
