﻿namespace Ebada.Scgl.Sbgl
{
    partial class Ucm_ddczzl
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.btAdds = new DevExpress.XtraBars.BarButtonItem();
            this.btEdits = new DevExpress.XtraBars.BarButtonItem();
            this.btDeletes = new DevExpress.XtraBars.BarButtonItem();
            this.btRefreshs = new DevExpress.XtraBars.BarButtonItem();
            this.btExports = new DevExpress.XtraBars.BarButtonItem();
            this.btFind = new DevExpress.XtraBars.BarButtonItem();
            this.btClose = new DevExpress.XtraBars.BarButtonItem();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.btRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.lkueorg = new DevExpress.XtraEditors.LookUpEdit();
            this.lblOrg = new DevExpress.XtraEditors.LabelControl();
            this.btnReset = new DevExpress.XtraEditors.SimpleButton();
            this.btnSearchs = new DevExpress.XtraEditors.SimpleButton();
            this.datesj = new DevExpress.XtraEditors.DateEdit();
            this.lbltime = new DevExpress.XtraEditors.LabelControl();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.lkueorg.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.datesj.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.datesj.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar1});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btAdds,
            this.btEdits,
            this.btDeletes,
            this.btRefresh,
            this.btExports,
            this.btRefreshs,
            this.btFind,
            this.btClose});
            this.barManager1.MaxItemId = 8;
            // 
            // bar1
            // 
            this.bar1.BarName = "Tools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 0;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btAdds),
            new DevExpress.XtraBars.LinkPersistInfo(this.btEdits),
            new DevExpress.XtraBars.LinkPersistInfo(this.btDeletes),
            new DevExpress.XtraBars.LinkPersistInfo(this.btRefreshs),
            new DevExpress.XtraBars.LinkPersistInfo(this.btExports),
            new DevExpress.XtraBars.LinkPersistInfo(this.btFind),
            new DevExpress.XtraBars.LinkPersistInfo(this.btClose)});
            this.bar1.Text = "Tools";
            // 
            // btAdds
            // 
            this.btAdds.Caption = "增加";
            this.btAdds.Id = 0;
            this.btAdds.ImageIndex = 6;
            this.btAdds.Name = "btAdds";
            this.btAdds.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.btAdds.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btAdds_ItemClick);
            // 
            // btEdits
            // 
            this.btEdits.Caption = "修改";
            this.btEdits.Id = 1;
            this.btEdits.ImageIndex = 1;
            this.btEdits.Name = "btEdits";
            this.btEdits.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.btEdits.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btEdits_ItemClick);
            // 
            // btDeletes
            // 
            this.btDeletes.Caption = "删除";
            this.btDeletes.Id = 2;
            this.btDeletes.ImageIndex = 12;
            this.btDeletes.Name = "btDeletes";
            this.btDeletes.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.btDeletes.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btDeletes_ItemClick);
            // 
            // btRefreshs
            // 
            this.btRefreshs.Caption = "刷新";
            this.btRefreshs.Id = 5;
            this.btRefreshs.ImageIndex = 9;
            this.btRefreshs.Name = "btRefreshs";
            this.btRefreshs.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.btRefreshs.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btRefreshs_ItemClick);
            // 
            // btExports
            // 
            this.btExports.Caption = "导出";
            this.btExports.Id = 4;
            this.btExports.ImageIndex = 7;
            this.btExports.Name = "btExports";
            this.btExports.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.btExports.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btExports_ItemClick);
            // 
            // btFind
            // 
            this.btFind.Caption = "查询";
            this.btFind.Id = 6;
            this.btFind.ImageIndex = 5;
            this.btFind.Name = "btFind";
            this.btFind.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // btClose
            // 
            this.btClose.Caption = "关闭";
            this.btClose.Id = 7;
            this.btClose.ImageIndex = 13;
            this.btClose.Name = "btClose";
            this.btClose.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Size = new System.Drawing.Size(713, 24);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 408);
            this.barDockControlBottom.Size = new System.Drawing.Size(713, 0);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 24);
            this.barDockControlLeft.Size = new System.Drawing.Size(0, 384);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(713, 24);
            this.barDockControlRight.Size = new System.Drawing.Size(0, 384);
            // 
            // btRefresh
            // 
            this.btRefresh.Caption = "刷新";
            this.btRefresh.Id = 3;
            this.btRefresh.Name = "btRefresh";
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.Horizontal = false;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 24);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.lkueorg);
            this.splitContainerControl1.Panel1.Controls.Add(this.lblOrg);
            this.splitContainerControl1.Panel1.Controls.Add(this.btnReset);
            this.splitContainerControl1.Panel1.Controls.Add(this.btnSearchs);
            this.splitContainerControl1.Panel1.Controls.Add(this.datesj);
            this.splitContainerControl1.Panel1.Controls.Add(this.lbltime);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Controls.Add(this.gridControl1);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(713, 384);
            this.splitContainerControl1.SplitterPosition = 29;
            this.splitContainerControl1.TabIndex = 5;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // lkueorg
            // 
            this.lkueorg.Location = new System.Drawing.Point(75, 3);
            this.lkueorg.MenuManager = this.barManager1;
            this.lkueorg.Name = "lkueorg";
            this.lkueorg.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lkueorg.Properties.NullText = "选择变电所";
            this.lkueorg.Size = new System.Drawing.Size(132, 21);
            this.lkueorg.TabIndex = 7;
            // 
            // lblOrg
            // 
            this.lblOrg.Location = new System.Drawing.Point(9, 6);
            this.lblOrg.Name = "lblOrg";
            this.lblOrg.Size = new System.Drawing.Size(60, 14);
            this.lblOrg.TabIndex = 6;
            this.lblOrg.Text = "选择变电所";
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(502, 2);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(75, 23);
            this.btnReset.TabIndex = 3;
            this.btnReset.Text = "重置";
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // btnSearchs
            // 
            this.btnSearchs.Location = new System.Drawing.Point(421, 2);
            this.btnSearchs.Name = "btnSearchs";
            this.btnSearchs.Size = new System.Drawing.Size(75, 23);
            this.btnSearchs.TabIndex = 2;
            this.btnSearchs.Text = "查询";
            this.btnSearchs.Click += new System.EventHandler(this.btnSearchs_Click);
            // 
            // datesj
            // 
            this.datesj.EditValue = null;
            this.datesj.Location = new System.Drawing.Point(267, 3);
            this.datesj.MenuManager = this.barManager1;
            this.datesj.Name = "datesj";
            this.datesj.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.datesj.Properties.DisplayFormat.FormatString = "yyyy-MM";
            this.datesj.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.datesj.Properties.EditFormat.FormatString = "yyyy-MM";
            this.datesj.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.datesj.Properties.Mask.EditMask = "yyyy-MM";
            this.datesj.Properties.Mask.UseMaskAsDisplayFormat = true;
            this.datesj.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.datesj.Size = new System.Drawing.Size(138, 21);
            this.datesj.TabIndex = 1;
            // 
            // lbltime
            // 
            this.lbltime.Location = new System.Drawing.Point(213, 6);
            this.lbltime.Name = "lbltime";
            this.lbltime.Size = new System.Drawing.Size(48, 14);
            this.lbltime.TabIndex = 0;
            this.lbltime.Text = "选择时间";
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(713, 349);
            this.gridControl1.TabIndex = 1;
            this.gridControl1.UseEmbeddedNavigator = true;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // Ucm_ddczzl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainerControl1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "Ucm_ddczzl";
            this.Size = new System.Drawing.Size(713, 408);
            this.Load += new System.EventHandler(this.Ucm_czpdjb_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.lkueorg.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.datesj.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.datesj.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraBars.BarButtonItem btAdds;
        private DevExpress.XtraBars.BarButtonItem btEdits;
        private DevExpress.XtraBars.BarButtonItem btDeletes;
        private DevExpress.XtraBars.BarButtonItem btRefresh;
        private DevExpress.XtraBars.BarButtonItem btExports;
        private DevExpress.XtraBars.BarButtonItem btRefreshs;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraEditors.DateEdit datesj;
        private DevExpress.XtraEditors.LabelControl lbltime;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraEditors.SimpleButton btnReset;
        private DevExpress.XtraEditors.SimpleButton btnSearchs;
        private DevExpress.XtraBars.BarButtonItem btFind;
        private DevExpress.XtraBars.BarButtonItem btClose;
        private DevExpress.XtraEditors.LabelControl lblOrg;
        private DevExpress.XtraEditors.LookUpEdit lkueorg;
    }
}
