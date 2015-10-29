// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.e;
import com.baidu.platform.comapi.map.f;
import com.baidu.platform.comapi.map.z;
import com.baidu.platform.comjni.tools.ParcelItem;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.map:
//            UiSettings, a, b, c, 
//            MapStatusUpdate, MapStatus, MyLocationData, MyLocationConfiguration, 
//            MapStatusUpdateFactory, BitmapDescriptor, HeatMap, OverlayOptions, 
//            Overlay, InfoWindow, MapView, Marker, 
//            BitmapDescriptorFactory, MarkerOptions, Projection, MapPoi

public class BaiduMap
{
    public static interface OnMapClickListener
    {

        public abstract void onMapClick(LatLng latlng);

        public abstract boolean onMapPoiClick(MapPoi mappoi);
    }

    public static interface OnMapDoubleClickListener
    {

        public abstract void onMapDoubleClick(LatLng latlng);
    }

    public static interface OnMapDrawFrameCallback
    {

        public abstract void onMapDrawFrame(GL10 gl10, MapStatus mapstatus);
    }

    public static interface OnMapLoadedCallback
    {

        public abstract void onMapLoaded();
    }

    public static interface OnMapLongClickListener
    {

        public abstract void onMapLongClick(LatLng latlng);
    }

    public static interface OnMapStatusChangeListener
    {

        public abstract void onMapStatusChange(MapStatus mapstatus);

        public abstract void onMapStatusChangeFinish(MapStatus mapstatus);

        public abstract void onMapStatusChangeStart(MapStatus mapstatus);
    }

    public static interface OnMarkerClickListener
    {

        public abstract boolean onMarkerClick(Marker marker);
    }

    public static interface OnMarkerDragListener
    {

        public abstract void onMarkerDrag(Marker marker);

        public abstract void onMarkerDragEnd(Marker marker);

        public abstract void onMarkerDragStart(Marker marker);
    }

    public static interface OnMyLocationClickListener
    {

        public abstract boolean onMyLocationClick();
    }

    public static interface SnapshotReadyCallback
    {

        public abstract void onSnapshotReady(Bitmap bitmap);
    }


    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    private static final String b = com/baidu/mapapi/map/BaiduMap.getSimpleName();
    MapView a;
    private Projection c;
    private UiSettings d;
    private f e;
    private List f;
    private Overlay.a g;
    private OnMapStatusChangeListener h;
    private OnMapClickListener i;
    private OnMapLoadedCallback j;
    private OnMapDoubleClickListener k;
    private OnMapLongClickListener l;
    private OnMarkerClickListener m;
    private OnMarkerDragListener n;
    private OnMyLocationClickListener o;
    private SnapshotReadyCallback p;
    private OnMapDrawFrameCallback q;
    private HeatMap r;
    private Lock s;
    private InfoWindow t;
    private Marker u;
    private View v;
    private Marker w;
    private MyLocationData x;
    private MyLocationConfiguration y;
    private boolean z;

    BaiduMap(f f1)
    {
        s = new ReentrantLock();
        e = f1;
        d = new UiSettings(e);
        f = new LinkedList();
        g = new com.baidu.mapapi.map.a(this);
        f1 = new com.baidu.mapapi.map.b(this);
        e.a(f1);
        f1 = new c(this);
        e.a(f1);
    }

    static Marker a(BaiduMap baidumap, Marker marker)
    {
        baidumap.w = marker;
        return marker;
    }

    static Projection a(BaiduMap baidumap, Projection projection)
    {
        baidumap.c = projection;
        return projection;
    }

    private z a(MapStatusUpdate mapstatusupdate)
    {
        z z1 = e.o();
        return mapstatusupdate.a(e, getMapStatus()).b(z1);
    }

    static List a(BaiduMap baidumap)
    {
        return baidumap.f;
    }

    private final void a(MyLocationData mylocationdata, MyLocationConfiguration mylocationconfiguration)
    {
        int i1 = 0;
        if (mylocationdata != null && mylocationconfiguration != null && isMyLocationEnabled()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        LatLng latlng;
        b b1;
        jsonobject = new JSONObject();
        obj = new JSONArray();
        jsonobject1 = new JSONObject();
        jsonobject2 = new JSONObject();
        latlng = new LatLng(mylocationdata.latitude, mylocationdata.longitude);
        b1 = com.baidu.mapapi.model.a.a(latlng);
        float f3;
        jsonobject.put("type", 0);
        jsonobject1.put("ptx", b1.b());
        jsonobject1.put("pty", b1.a());
        jsonobject1.put("radius", (float)com.baidu.mapapi.model.a.a(latlng, (int)mylocationdata.accuracy));
        float f1 = mylocationdata.direction;
        if (!mylocationconfiguration.enableDirection)
        {
            break MISSING_BLOCK_LABEL_499;
        }
        f3 = mylocationdata.direction % 360F;
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[MyLocationConfiguration.LocationMode.values().length];
                try
                {
                    a[MyLocationConfiguration.LocationMode.COMPASS.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[MyLocationConfiguration.LocationMode.FOLLOWING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[MyLocationConfiguration.LocationMode.NORMAL.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        float f2;
        if (f3 > 180F)
        {
            f2 = f3 - 360F;
        } else
        {
            f2 = f3;
            if (f3 < -180F)
            {
                f2 = f3 + 360F;
            }
        }
_L3:
        try
        {
            jsonobject1.put("direction", f2);
            jsonobject1.put("iconarrownor", "NormalLocArrow");
            jsonobject1.put("iconarrownorid", 28);
            jsonobject1.put("iconarrowfoc", "FocusLocArrow");
            jsonobject1.put("iconarrowfocid", 29);
            ((JSONArray) (obj)).put(jsonobject1);
            jsonobject.put("data", obj);
            if (mylocationconfiguration.locationMode == MyLocationConfiguration.LocationMode.COMPASS)
            {
                jsonobject2.put("ptx", b1.b());
                jsonobject2.put("pty", b1.a());
                jsonobject2.put("radius", 0);
                jsonobject2.put("direction", 0);
                jsonobject2.put("iconarrownor", "direction_wheel");
                jsonobject2.put("iconarrownorid", 54);
                jsonobject2.put("iconarrowfoc", "direction_wheel");
                jsonobject2.put("iconarrowfocid", 54);
                ((JSONArray) (obj)).put(jsonobject2);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((JSONException) (obj)).printStackTrace();
        }
        if (mylocationconfiguration.customMarker == null)
        {
            obj = null;
        } else
        {
            Object obj1 = new ArrayList();
            ((List) (obj1)).add(mylocationconfiguration.customMarker);
            obj = new Bundle();
            ArrayList arraylist = new ArrayList();
            ParcelItem parcelitem;
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); arraylist.add(parcelitem))
            {
                BitmapDescriptor bitmapdescriptor = (BitmapDescriptor)((Iterator) (obj1)).next();
                parcelitem = new ParcelItem();
                Bundle bundle = new Bundle();
                Bitmap bitmap = bitmapdescriptor.a;
                ByteBuffer bytebuffer = ByteBuffer.allocate(bitmap.getWidth() * bitmap.getHeight() * 4);
                bitmap.copyPixelsToBuffer(bytebuffer);
                bundle.putByteArray("imgdata", bytebuffer.array());
                bundle.putInt("imgindex", bitmapdescriptor.hashCode());
                bundle.putInt("imgH", bitmap.getHeight());
                bundle.putInt("imgW", bitmap.getWidth());
                parcelitem.setBundle(bundle);
            }

            if (arraylist.size() > 0)
            {
                ParcelItem aparcelitem[] = new ParcelItem[arraylist.size()];
                for (; i1 < arraylist.size(); i1++)
                {
                    aparcelitem[i1] = (ParcelItem)arraylist.get(i1);
                }

                ((Bundle) (obj)).putParcelableArray("icondata", aparcelitem);
            }
        }
        e.a(jsonobject.toString(), ((Bundle) (obj)));
        switch (com.baidu.mapapi.map._cls1.a[mylocationconfiguration.locationMode.ordinal()])
        {
        default:
            return;

        case 3: // '\003'
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            animateMapStatus(MapStatusUpdateFactory.newMapStatus((new MapStatus.Builder()).rotate(mylocationdata.direction).overlook(-45F).target(new LatLng(mylocationdata.latitude, mylocationdata.longitude)).targetScreen(getMapStatus().targetScreen).zoom(getMapStatus().zoom).build()));
            return;

        case 2: // '\002'
            animateMapStatus(MapStatusUpdateFactory.newMapStatus((new MapStatus.Builder()).target(new LatLng(mylocationdata.latitude, mylocationdata.longitude)).zoom(getMapStatus().zoom).rotate(getMapStatus().rotate).overlook(getMapStatus().overlook).targetScreen(getMapStatus().targetScreen).build()));
            break;
        }
        break; /* Loop/switch isn't completed */
        f2 = -1F;
          goto _L3
        if (true) goto _L1; else goto _L4
_L4:
    }

    static boolean a(BaiduMap baidumap, boolean flag)
    {
        baidumap.z = flag;
        return flag;
    }

    static f b(BaiduMap baidumap)
    {
        return baidumap.e;
    }

    static View c(BaiduMap baidumap)
    {
        return baidumap.v;
    }

    static OnMapStatusChangeListener d(BaiduMap baidumap)
    {
        return baidumap.h;
    }

    static OnMapClickListener e(BaiduMap baidumap)
    {
        return baidumap.i;
    }

    static OnMapDoubleClickListener f(BaiduMap baidumap)
    {
        return baidumap.k;
    }

    static OnMapLongClickListener g(BaiduMap baidumap)
    {
        return baidumap.l;
    }

    static OnMapLoadedCallback h(BaiduMap baidumap)
    {
        return baidumap.j;
    }

    static SnapshotReadyCallback i(BaiduMap baidumap)
    {
        return baidumap.p;
    }

    static OnMyLocationClickListener j(BaiduMap baidumap)
    {
        return baidumap.o;
    }

    static InfoWindow k(BaiduMap baidumap)
    {
        return baidumap.t;
    }

    static Marker l(BaiduMap baidumap)
    {
        return baidumap.u;
    }

    static OnMarkerClickListener m(BaiduMap baidumap)
    {
        return baidumap.m;
    }

    static Marker n(BaiduMap baidumap)
    {
        return baidumap.w;
    }

    static Projection o(BaiduMap baidumap)
    {
        return baidumap.c;
    }

    static OnMarkerDragListener p(BaiduMap baidumap)
    {
        return baidumap.n;
    }

    static Lock q(BaiduMap baidumap)
    {
        return baidumap.s;
    }

    static HeatMap r(BaiduMap baidumap)
    {
        return baidumap.r;
    }

    static OnMapDrawFrameCallback s(BaiduMap baidumap)
    {
        return baidumap.q;
    }

    void a()
    {
        e.i();
    }

    void a(HeatMap heatmap)
    {
        s.lock();
        if (r != null && heatmap == r)
        {
            r.b();
            r.c();
            r.a = null;
            e.s();
            r = null;
            e.g(false);
        }
        s.unlock();
        return;
        heatmap;
        s.unlock();
        throw heatmap;
    }

    public void addHeatMap(HeatMap heatmap)
    {
        if (heatmap == null)
        {
            return;
        }
        s.lock();
        HeatMap heatmap1 = r;
        if (heatmap == heatmap1)
        {
            s.unlock();
            return;
        }
        if (r != null)
        {
            r.b();
            r.c();
            r.a = null;
            e.s();
        }
        r = heatmap;
        r.a = this;
        e.g(true);
        s.unlock();
        return;
        heatmap;
        s.unlock();
        throw heatmap;
    }

    public final Overlay addOverlay(OverlayOptions overlayoptions)
    {
        overlayoptions = overlayoptions.a();
        overlayoptions.listener = g;
        Bundle bundle = new Bundle();
        overlayoptions.a(bundle);
        e.a(bundle);
        f.add(overlayoptions);
        return overlayoptions;
    }

    public final void animateMapStatus(MapStatusUpdate mapstatusupdate)
    {
        animateMapStatus(mapstatusupdate, 300);
    }

    public final void animateMapStatus(MapStatusUpdate mapstatusupdate, int i1)
    {
        if (mapstatusupdate == null || i1 <= 0)
        {
            return;
        }
        mapstatusupdate = a(mapstatusupdate);
        if (!z)
        {
            e.a(mapstatusupdate);
            return;
        } else
        {
            e.a(mapstatusupdate, i1);
            return;
        }
    }

    public final void clear()
    {
        f.clear();
        e.r();
        hideInfoWindow();
    }

    public final MyLocationConfiguration getLocationConfigeration()
    {
        return y;
    }

    public final MyLocationData getLocationData()
    {
        return x;
    }

    public final MapStatus getMapStatus()
    {
        return com.baidu.mapapi.map.MapStatus.a(e.o());
    }

    public final int getMapType()
    {
        return !e.e() ? 1 : 2;
    }

    public final float getMaxZoomLevel()
    {
        return e.a;
    }

    public final float getMinZoomLevel()
    {
        return e.b;
    }

    public final Projection getProjection()
    {
        return c;
    }

    public final UiSettings getUiSettings()
    {
        return d;
    }

    public void hideInfoWindow()
    {
        if (t != null)
        {
            if (t.b != null)
            {
                a.removeView(v);
                v = null;
            }
            t = null;
            u.remove();
            u = null;
        }
    }

    public final boolean isBaiduHeatMapEnabled()
    {
        return e.c();
    }

    public final boolean isBuildingsEnabled()
    {
        return e.f();
    }

    public final boolean isMyLocationEnabled()
    {
        return e.h();
    }

    public final boolean isSupportBaiduHeatMap()
    {
        return e.d();
    }

    public final boolean isTrafficEnabled()
    {
        return e.b();
    }

    public final void setBaiduHeatMapEnabled(boolean flag)
    {
        e.a(flag);
    }

    public final void setBuildingsEnabled(boolean flag)
    {
        e.d(flag);
    }

    public final void setMapStatus(MapStatusUpdate mapstatusupdate)
    {
        if (mapstatusupdate != null)
        {
            mapstatusupdate = a(mapstatusupdate);
            e.a(mapstatusupdate);
            if (h != null)
            {
                h.onMapStatusChange(getMapStatus());
                return;
            }
        }
    }

    public final void setMapType(int i1)
    {
        if (i1 == 1)
        {
            e.c(false);
        } else
        if (i1 == 2)
        {
            e.c(true);
            return;
        }
    }

    public final void setMaxAndMinZoomLevel(float f1, float f2)
    {
        while (f1 > 19F || f2 < 3F || f1 < f2) 
        {
            return;
        }
        e.a = f1;
        e.b = f2;
    }

    public final void setMyLocationConfigeration(MyLocationConfiguration mylocationconfiguration)
    {
        y = mylocationconfiguration;
        a(x, y);
    }

    public final void setMyLocationData(MyLocationData mylocationdata)
    {
        x = mylocationdata;
        if (y == null)
        {
            y = new MyLocationConfiguration(MyLocationConfiguration.LocationMode.NORMAL, false, null);
        }
        a(mylocationdata, y);
    }

    public final void setMyLocationEnabled(boolean flag)
    {
        e.f(flag);
    }

    public final void setOnMapClickListener(OnMapClickListener onmapclicklistener)
    {
        i = onmapclicklistener;
    }

    public final void setOnMapDoubleClickListener(OnMapDoubleClickListener onmapdoubleclicklistener)
    {
        k = onmapdoubleclicklistener;
    }

    public final void setOnMapDrawFrameCallback(OnMapDrawFrameCallback onmapdrawframecallback)
    {
        q = onmapdrawframecallback;
    }

    public void setOnMapLoadedCallback(OnMapLoadedCallback onmaploadedcallback)
    {
        j = onmaploadedcallback;
    }

    public final void setOnMapLongClickListener(OnMapLongClickListener onmaplongclicklistener)
    {
        l = onmaplongclicklistener;
    }

    public final void setOnMapStatusChangeListener(OnMapStatusChangeListener onmapstatuschangelistener)
    {
        h = onmapstatuschangelistener;
    }

    public final void setOnMarkerClickListener(OnMarkerClickListener onmarkerclicklistener)
    {
        m = onmarkerclicklistener;
    }

    public final void setOnMarkerDragListener(OnMarkerDragListener onmarkerdraglistener)
    {
        n = onmarkerdraglistener;
    }

    public final void setOnMyLocationClickListener(OnMyLocationClickListener onmylocationclicklistener)
    {
        o = onmylocationclicklistener;
    }

    public final void setTrafficEnabled(boolean flag)
    {
        e.b(flag);
    }

    public void showInfoWindow(InfoWindow infowindow)
    {
        if (infowindow != null)
        {
            hideInfoWindow();
            t = infowindow;
            Object obj;
            Bundle bundle;
            if (infowindow.b != null)
            {
                obj = BitmapDescriptorFactory.fromView(infowindow.b);
            } else
            {
                obj = infowindow.a;
            }
            obj = (new MarkerOptions()).perspective(false).icon(((BitmapDescriptor) (obj))).position(infowindow.c).zIndex(0x7fffffff).a(infowindow.e).a();
            obj.listener = g;
            obj.k = e.b;
            bundle = new Bundle();
            ((Overlay) (obj)).a(bundle);
            e.a(bundle);
            f.add(obj);
            u = (Marker)obj;
            if (infowindow.b != null)
            {
                v = infowindow.b;
                v.destroyDrawingCache();
                infowindow = (new MapViewLayoutParams.Builder()).layoutMode(MapViewLayoutParams.ELayoutMode.mapMode).position(infowindow.c).yOffset(infowindow.e).build();
                a.addView(v, infowindow);
            }
        }
    }

    public final void snapshot(SnapshotReadyCallback snapshotreadycallback)
    {
        p = snapshotreadycallback;
        e.a("anything");
    }

}
