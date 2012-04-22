﻿using System;
using System.Collections.Generic;
using System.Text;
using GMap.NET.WindowsForms;
using GMap.NET;
using Ebada.Scgl.Model;
using Ebada.Scgl.Sbgl;
using System.Data;
using Ebada.Scgl.Gis.Markers;
using System.Windows.Forms;
using System.Drawing;
namespace Ebada.Scgl.Gis {
    public class PloyLineOverLay : GMapOverlay, IUpdateable, IPopuMenu {

        private GMapControl control;
        private bool allowEdit;
        ContextMenu contextMenu;
        GMapMarker selectedMarker;
        public PloyLineOverLay(GMapControl map, string layid)
            : base(map, layid) {
            control = map;
            map.OnMarkerEnter += new MarkerEnter(map_OnMarkerEnter);
            map.OnMarkerLeave += new MarkerLeave(map_OnMarkerLeave);
            map.OnMapZoomChanged += new MapZoomChanged(map_OnMapZoomChanged);
        }
        private bool firstload = true;
        private int fontsize = 0;
        void map_OnMapZoomChanged() {
            
        }
        
        void map_OnMarkerLeave(GMapMarker item) {
            if (item.Overlay == this)
                selectedMarker = null;
        }

        void map_OnMarkerEnter(GMapMarker item) {
            if (item.Overlay == this)
                selectedMarker = item;
        }
        public bool AllowEdit {
            get { return allowEdit; }
            set { allowEdit = value; }
        }
        public virtual ContextMenu CreatePopuMenu() {
            
            GMapMarkerVector mv = selectedMarker as GMapMarkerVector;
            ContextMenu menu = new ContextMenu();
            if (mv != null) menu = mv.CreatePopuMenu();
            return menu;
        }

        void 属性_Click(object sender, EventArgs e) {
            if (selectedMarker == null) return;
            frmBdsEdit dlg = new frmBdsEdit();

            dlg.RowData = selectedMarker.Tag;
            if (dlg.ShowDialog() == DialogResult.OK) {
                Client.ClientHelper.PlatformSqlMap.Update<mOrg>(dlg.RowData);
            }
        }
        protected override void DrawRoutes(System.Drawing.Graphics g) {
            base.DrawRoutes(g);
        }
        public override void Render(System.Drawing.Graphics g) {
            
            base.Render(g);
            
        }
        public void Update(GMapMarker marker) {

        }
        public virtual void OnMarkerChanged(GMapMarker marker) {

        }
        public void ShowDialog(GMapMarker marker, bool canEdit) { 

            
        }
    }
}