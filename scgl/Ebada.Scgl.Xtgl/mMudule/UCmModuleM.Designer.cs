﻿namespace Ebada.Scgl.Xtgl {
    partial class UCmModuleM {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.splitCC1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.ucLeft1 = new Ebada.Scgl.Xtgl.UCmModuleTree();
            this.ucRight1 = new Ebada.Scgl.Xtgl.UCmModulFun();
            ((System.ComponentModel.ISupportInitialize)(this.splitCC1)).BeginInit();
            this.splitCC1.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitCC1
            // 
            this.splitCC1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitCC1.FixedPanel = DevExpress.XtraEditors.SplitFixedPanel.Panel2;
            this.splitCC1.Horizontal = false;
            this.splitCC1.Location = new System.Drawing.Point(0, 0);
            this.splitCC1.Name = "splitCC1";
            this.splitCC1.Panel1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Default;
            this.splitCC1.Panel1.CaptionLocation = DevExpress.Utils.Locations.Top;
            this.splitCC1.Panel1.Controls.Add(this.ucLeft1);
            this.splitCC1.Panel1.ShowCaption = true;
            this.splitCC1.Panel1.Text = "模块";
            this.splitCC1.Panel2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.Simple;
            this.splitCC1.Panel2.Controls.Add(this.ucRight1);
            this.splitCC1.Panel2.ShowCaption = true;
            this.splitCC1.Panel2.Text = "操作";
            this.splitCC1.ShowCaption = true;
            this.splitCC1.Size = new System.Drawing.Size(555, 349);
            this.splitCC1.SplitterPosition = 183;
            this.splitCC1.TabIndex = 0;
            this.splitCC1.Text = "splitContainerControl1";
            // 
            // ucLeft1
            // 
            this.ucLeft1.ChildView = null;
            this.ucLeft1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ucLeft1.Location = new System.Drawing.Point(0, 0);
            this.ucLeft1.Name = "ucLeft1";
            this.ucLeft1.Size = new System.Drawing.Size(551, 135);
            this.ucLeft1.TabIndex = 1;
            // 
            // ucRight1
            // 
            this.ucRight1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ucRight1.Location = new System.Drawing.Point(0, 0);
            this.ucRight1.Name = "ucRight1";
            this.ucRight1.Size = new System.Drawing.Size(551, 158);
            this.ucRight1.TabIndex = 0;
            // 
            // UCmModuleM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 14F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitCC1);
            this.Name = "UCmModuleM";
            this.Size = new System.Drawing.Size(555, 349);
            ((System.ComponentModel.ISupportInitialize)(this.splitCC1)).EndInit();
            this.splitCC1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        public DevExpress.XtraEditors.SplitContainerControl splitCC1;
        private UCmModuleTree ucLeft1;
        private UCmModulFun ucRight1;

    }
}
