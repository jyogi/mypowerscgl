﻿using System;
using System.Collections.Generic;
using System.Text;
using GMap.NET.WindowsForms;
using System.Windows.Forms;
using Ebada.Scgl.Gis.Markers;
using System.Drawing;
using GMap.NET;

namespace Ebada.Scgl.Gis {
    internal class OperationBase {
        protected RMap rMap1;
        protected GMapMarker currentMarker;
        protected Boolean isMouseDown;
        protected GMapMarker selectedMarker;
        private Point beginPoint;
        private Point localPoint;
        protected GMapOverlay routes;
        protected Boolean canAddMarker;
        private GMapMarker updateMarker;
        private ContextMenu mMenu;
        public OperationBase(RMap mapcontrol){
            rMap1 = mapcontrol;
            //routes = new GMapOverlay(rMap1, "Line");
            mMenu = CreatePopuMenu();
        }

        void rMap1_Paint(object sender, PaintEventArgs e) {
            OnPaint(e.Graphics);
        }
        public virtual void OnMarkerLeave(GMapMarker item) {
            if (!isMouseDown && currentMarker == item)
                currentMarker = null;
        }

        public virtual void OnMarkerEnter(GMapMarker item) {
            if (!isMouseDown)
                currentMarker = item;
        }
        public virtual void OnPaint(Graphics g) {

        }
        public virtual void MouseUp(object sender, MouseEventArgs e) {
            if (e.Button == MouseButtons.Left) {
                isMouseDown = false;
                if (updateMarker != null) {
                    (updateMarker.Overlay as LineOverlay).Update(updateMarker);
                }
            }
        }
        public virtual void MouseDown(object sender, MouseEventArgs e) {
            if (e.Button == MouseButtons.Left) {
                isMouseDown = true;
                beginPoint = new Point(e.X, e.Y);
                if (currentMarker != null && currentMarker.IsMouseOver) {
                    selectedMarker = currentMarker;
                    GPoint p= rMap1.FromLatLngToLocal(currentMarker.Position);
                    localPoint = new Point(p.X, p.Y);
                    routes = currentMarker.Overlay;
                } else
                    selectedMarker = null;
            } else if (e.Button == MouseButtons.Right) {
                if (currentMarker != null && currentMarker.IsMouseOver) {
                    selectedMarker = currentMarker;

                    mMenu.Show(rMap1, e.Location);
                } 
            }
        }

        // move current marker with left holding
        public virtual void MouseMove(object sender, MouseEventArgs e) {
            if (e.Button == MouseButtons.Left && isMouseDown) {
                if (currentMarker != null) {
                    if (currentMarker.IsVisible) {
                        Point p0 = localPoint;
                        Point p1 = new Point(p0.X + e.X - beginPoint.X, p0.Y + e.Y - beginPoint.Y);
                        //beginPoint = new Point(e.X, e.Y);
                        currentMarker.Position = rMap1.FromLocalToLatLng(p1.X, p1.Y);
                        //currentMarker.ToolTipText = currentMarker.Position.ToString();
                        if (currentMarker.Overlay is LineOverlay) {
                            (currentMarker.Overlay as LineOverlay).OnMarkerChanged(currentMarker);
                            updateMarker = currentMarker;
                        }
                    }
                } 
            }
        }
        public virtual ContextMenu CreatePopuMenu() {
            ContextMenu menu = new ContextMenu();
            MenuItem item = new MenuItem();
            item.Text = "属性";
            item.Click += new EventHandler(属性_Click);
            menu.MenuItems.Add(item);
            return menu;

        }

        void 属性_Click(object sender, EventArgs e) {

            if (selectedMarker != null && selectedMarker.Overlay is LineOverlay) {
                (selectedMarker.Overlay as LineOverlay).ShowDialog(selectedMarker);
            }
                
        }
        GMapMarker createMarker(PointLatLng pos) {
            GMapMarkerVector marker = new GMapMarkerVector(pos);
            marker.Pen = new Pen(Color.FromArgb(144, Color.MidnightBlue), 2);
            marker.IsHitTestVisible = true;
            marker.ToolTipMode = MarkerTooltipMode.OnMouseOver;
            return marker;
        }
    }
}
