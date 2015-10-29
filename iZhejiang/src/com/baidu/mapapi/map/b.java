// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.view.View;
import com.baidu.mapapi.model.a;
import com.baidu.platform.comapi.map.f;
import com.baidu.platform.comapi.map.h;
import com.baidu.platform.comapi.map.z;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.map:
//            BaiduMap, MapStatus, MapPoi, Marker, 
//            InfoWindow, Overlay, Projection, HeatMap

class b
    implements h
{

    final BaiduMap a;

    b(BaiduMap baidumap)
    {
        a = baidumap;
        super();
    }

    public void a()
    {
    }

    public void a(Bitmap bitmap)
    {
        if (BaiduMap.i(a) != null)
        {
            BaiduMap.i(a).onSnapshotReady(bitmap);
        }
    }

    public void a(com.baidu.platform.comapi.a.b b1)
    {
        if (BaiduMap.e(a) != null)
        {
            b1 = com.baidu.mapapi.model.a.a(b1);
            BaiduMap.e(a).onMapClick(b1);
        }
    }

    public void a(z z1)
    {
        if (BaiduMap.c(a) != null)
        {
            BaiduMap.c(a).setVisibility(4);
        }
        if (BaiduMap.d(a) != null)
        {
            z1 = com.baidu.mapapi.map.MapStatus.a(z1);
            BaiduMap.d(a).onMapStatusChangeStart(z1);
        }
    }

    public void a(String s)
    {
        int i;
        MapPoi mappoi;
        try
        {
            s = (new JSONObject(s)).optJSONArray("dataset").optJSONObject(0);
            i = s.optInt("ty");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        if (i != 17)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        if (BaiduMap.e(a) != null)
        {
            mappoi = new MapPoi();
            mappoi.a(s);
            BaiduMap.e(a).onMapPoiClick(mappoi);
            return;
        }
        break MISSING_BLOCK_LABEL_291;
        if (i != 18)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        if (BaiduMap.j(a) != null)
        {
            BaiduMap.j(a).onMyLocationClick();
            return;
        }
        break MISSING_BLOCK_LABEL_291;
        if (i != 19)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        s = BaiduMap.b(a).o();
        s.c = 0;
        s.b = 0;
        BaiduMap.b(a).a(s, 300);
        return;
        if (i != 0x1631d)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        s = s.optString("marker_id");
        if (BaiduMap.k(a) == null || !s.equals(BaiduMap.l(a).j))
        {
            break MISSING_BLOCK_LABEL_214;
        }
        s = BaiduMap.k(a).d;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        s.onInfoWindowClick();
        return;
        Iterator iterator = com.baidu.mapapi.map.BaiduMap.a(a).iterator();
        Overlay overlay;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_291;
            }
            overlay = (Overlay)iterator.next();
        } while (!(overlay instanceof Marker) || !overlay.j.equals(s) || BaiduMap.m(a) == null);
        BaiduMap.m(a).onMarkerClick((Marker)overlay);
    }

    public void a(GL10 gl10, z z1)
    {
        if (BaiduMap.s(a) != null)
        {
            z1 = com.baidu.mapapi.map.MapStatus.a(z1);
            BaiduMap.s(a).onMapDrawFrame(gl10, z1);
        }
    }

    public void b()
    {
        com.baidu.mapapi.map.BaiduMap.a(a, new Projection(BaiduMap.b(a)));
        com.baidu.mapapi.map.BaiduMap.a(a, true);
        if (com.baidu.mapapi.map.BaiduMap.h(a) != null)
        {
            com.baidu.mapapi.map.BaiduMap.h(a).onMapLoaded();
        }
    }

    public void b(com.baidu.platform.comapi.a.b b1)
    {
        if (com.baidu.mapapi.map.BaiduMap.f(a) != null)
        {
            b1 = com.baidu.mapapi.model.a.a(b1);
            com.baidu.mapapi.map.BaiduMap.f(a).onMapDoubleClick(b1);
        }
    }

    public void b(z z1)
    {
        if (BaiduMap.d(a) != null)
        {
            z1 = com.baidu.mapapi.map.MapStatus.a(z1);
            BaiduMap.d(a).onMapStatusChange(z1);
        }
    }

    public boolean b(String s)
    {
        s = (new JSONObject(s)).optJSONArray("dataset").optJSONObject(0);
        if (s.optInt("ty") != 0x1631d)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        s = s.optString("marker_id");
        if (BaiduMap.l(a) != null && s.equals(BaiduMap.l(a).j))
        {
            break MISSING_BLOCK_LABEL_233;
        }
        Iterator iterator = com.baidu.mapapi.map.BaiduMap.a(a).iterator();
        Overlay overlay;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_233;
            }
            overlay = (Overlay)iterator.next();
        } while (!(overlay instanceof Marker) || !overlay.j.equals(s));
        s = (Marker)overlay;
        if (!((Marker) (s)).f)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        com.baidu.mapapi.map.BaiduMap.a(a, s);
        s = BaiduMap.o(a).toScreenLocation(BaiduMap.n(a).a);
        s = new Point(((Point) (s)).x, ((Point) (s)).y - 60);
        s = BaiduMap.o(a).fromScreenLocation(s);
        BaiduMap.n(a).setPosition(s);
        if (BaiduMap.p(a) != null)
        {
            BaiduMap.p(a).onMarkerDragStart(BaiduMap.n(a));
        }
        return true;
        s;
        s.printStackTrace();
        return false;
    }

    public void c()
    {
        BaiduMap.q(a).lock();
        if (BaiduMap.r(a) != null)
        {
            BaiduMap.r(a).a();
        }
        BaiduMap.q(a).unlock();
        return;
        Exception exception;
        exception;
        BaiduMap.q(a).unlock();
        throw exception;
    }

    public void c(com.baidu.platform.comapi.a.b b1)
    {
        if (BaiduMap.g(a) != null)
        {
            b1 = com.baidu.mapapi.model.a.a(b1);
            BaiduMap.g(a).onMapLongClick(b1);
        }
    }

    public void c(z z1)
    {
        if (BaiduMap.c(a) != null)
        {
            BaiduMap.c(a).setVisibility(0);
        }
        if (BaiduMap.d(a) != null)
        {
            z1 = com.baidu.mapapi.map.MapStatus.a(z1);
            BaiduMap.d(a).onMapStatusChangeFinish(z1);
        }
    }

    public void d()
    {
        BaiduMap.q(a).lock();
        if (BaiduMap.r(a) != null)
        {
            BaiduMap.r(a).a();
            BaiduMap.b(a).s();
        }
        BaiduMap.q(a).unlock();
        return;
        Exception exception;
        exception;
        BaiduMap.q(a).unlock();
        throw exception;
    }

    public void d(com.baidu.platform.comapi.a.b b1)
    {
        if (BaiduMap.n(a) != null && BaiduMap.n(a).f)
        {
            b1 = com.baidu.mapapi.model.a.a(b1);
            b1 = BaiduMap.o(a).toScreenLocation(b1);
            b1 = new Point(((Point) (b1)).x, ((Point) (b1)).y - 60);
            b1 = BaiduMap.o(a).fromScreenLocation(b1);
            BaiduMap.n(a).setPosition(b1);
            if (BaiduMap.p(a) != null && BaiduMap.n(a).f)
            {
                BaiduMap.p(a).onMarkerDrag(BaiduMap.n(a));
            }
        }
    }

    public void e()
    {
        BaiduMap.q(a).lock();
        if (BaiduMap.r(a) != null)
        {
            a.a(BaiduMap.r(a));
        }
        BaiduMap.q(a).unlock();
        return;
        Exception exception;
        exception;
        BaiduMap.q(a).unlock();
        throw exception;
    }

    public void e(com.baidu.platform.comapi.a.b b1)
    {
        if (BaiduMap.n(a) != null && BaiduMap.n(a).f)
        {
            b1 = com.baidu.mapapi.model.a.a(b1);
            b1 = BaiduMap.o(a).toScreenLocation(b1);
            b1 = new Point(((Point) (b1)).x, ((Point) (b1)).y - 60);
            b1 = BaiduMap.o(a).fromScreenLocation(b1);
            BaiduMap.n(a).setPosition(b1);
            if (BaiduMap.p(a) != null && BaiduMap.n(a).f)
            {
                BaiduMap.p(a).onMarkerDragEnd(BaiduMap.n(a));
            }
            com.baidu.mapapi.map.BaiduMap.a(a, null);
        }
    }
}
