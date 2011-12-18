﻿using System;
using System.Collections.Generic;
using System.Text;
using GMap.NET.WindowsForms;
using System.Drawing;
using GMap.NET;
using System.Windows.Forms;

namespace Ebada.Scgl.Gis.Markers {

    [Serializable]
    public class GMapMarkerVector : GMapMarker,ICloneable, IText {

        public float? Bearing;

        public System.Drawing.Size SizeSt = new Size(6, 6);
        public Pen Pen;
        private List<GMapMarkerVector> items;
        private GMapMarkerVector parentMarker;
        private string id;
        private LineRoute route;
        private string text;
        private bool showText;
        private Font font;

        public virtual Font Font {
            get { return font; }
            set { font = value; }
        }
        public bool ShowText {
            get { return showText; }
            set { showText = value; }
        }

        public virtual string Text {
            get {
                
                return text; 
            }
            set {
                if (value == text) return;
                text = value; 
            }
        }
        public LineRoute Route {
            get { return route; }
            set { route = value; }
        }
        public string Id {
            get { return id; }
            set { id = value; }
        }
        public GMapMarkerVector NextMarker {
            get {
                GMapMarkerVector next = null;
                if (items.Count > 0)
                    next=items[0];
                return next; 
            }
            set {
                if (value==null||items.Contains(value)) return;
                items.Add(value);
            }
        }
        public GMapMarkerVector ParentMarker {
            get { return parentMarker; }
            set { parentMarker = value; }
        }
        public GMapMarkerVector(PointLatLng p)
            : base(p) {
            Size = SizeSt;
            Offset = new Point(-3, -3);
            Pen = new Pen(Color.Red, 2);
            items = new List<GMapMarkerVector>();
            font = new Font(FontFamily.GenericSerif, 9);
        }
        public override void OnRender(Graphics g) {
            //g.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
            System.Drawing.Point p1 = new System.Drawing.Point(LocalPosition.X, LocalPosition.Y);

            Rectangle r = new Rectangle(p1, SizeSt);
            g.FillEllipse(Brushes.White, r);
            g.DrawEllipse(Pen, r);
            if (showText && !string.IsNullOrEmpty(Text)) {

                g.DrawString(Text,font , Brushes.Black, r.Right + 3, r.Top - 3);
            }
        }

        void 线路属性_Click(object sender, EventArgs e) {
            //if (selectedMarker != null) {
            //    this.ShowLineinfo(selectedMarker, allowEdit);
            //}
            (this.Overlay as LineOverlay).ShowLineinfo(this);
        }

        void 杆塔属性_Click(object sender, EventArgs e) {

            //if (selectedMarker != null) {
            //    this.ShowDialog(selectedMarker, allowEdit);
            //}
            (this.Overlay as LineOverlay).ShowDialog(this);
        }
        public virtual ContextMenu CreatePopuMenu() {
           
            ContextMenu contextMenu = new ContextMenu();
            MenuItem item = new MenuItem();
            item.Text = "杆塔属性";
            item.Click += new EventHandler(杆塔属性_Click);
            contextMenu.MenuItems.Add(item);
            item = new MenuItem();
            item.Text = "线路属性";
            item.Click += new EventHandler(线路属性_Click);
            contextMenu.MenuItems.Add(item);

            return contextMenu;
        }

        
        internal virtual void Update() {
            if (this.Overlay is IUpdateable)
                (this.Overlay as IUpdateable).Update(this);
        }

        #region ICloneable 成员

        public object Clone() {
            return null;
        }

        #endregion
    }
}
