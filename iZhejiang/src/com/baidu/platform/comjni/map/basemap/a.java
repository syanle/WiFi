// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.basemap;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.baidu.platform.comjni.map.basemap:
//            JNIBaseMap

public class a
{

    private static final String a = com/baidu/platform/comjni/map/basemap/a.getSimpleName();
    private static List d = new ArrayList();
    private int b;
    private JNIBaseMap c;

    public a()
    {
        b = 0;
        c = null;
        c = new JNIBaseMap();
    }

    public static int b(int i1, int j1, int k1, int l1)
    {
        return JNIBaseMap.MapProc(i1, j1, k1, l1);
    }

    public int a(int i1)
    {
        return c.SetMapControlMode(b, i1);
    }

    public int a(int i1, int j1, String s)
    {
        return c.AddLayer(b, i1, j1, s);
    }

    public String a(int i1, int j1)
    {
        return c.ScrPtToGeoPoint(b, i1, j1);
    }

    public String a(int i1, int j1, int k1, int l1)
    {
        return c.GetNearlyObjID(b, i1, j1, k1, l1);
    }

    public void a(int i1, boolean flag)
    {
        c.ShowLayers(b, i1, flag);
    }

    public void a(Bundle bundle)
    {
        c.SetMapStatus(b, bundle);
    }

    public void a(String s)
    {
        c.SaveScreenToLocal(b, s);
    }

    public void a(boolean flag)
    {
        c.ShowSatelliteMap(b, flag);
    }

    public boolean a()
    {
        if (d.size() == 0)
        {
            b = c.Create();
        } else
        {
            b = c.CreateDuplicate(((JNIBaseMap)d.get(0)).a);
        }
        c.a = b;
        d.add(c);
        c.SetCallback(b, null);
        return true;
    }

    public boolean a(int i1, boolean flag, int j1)
    {
        return c.OnRecordStart(b, i1, flag, j1);
    }

    public boolean a(String s, String s1, String s2, String s3, String s4, String s5, int i1, 
            int j1, int k1, int l1, int i2, int j2, int k2)
    {
        return c.Init(b, s, s1, s2, s3, s4, s5, i1, j1, k1, l1, i2, j2, k2);
    }

    public boolean a(boolean flag, boolean flag1)
    {
        return c.OnRecordImport(b, flag, flag1);
    }

    public int[] a(int ai[])
    {
        return c.GetScreenBuf(b, ai);
    }

    public float b(Bundle bundle)
    {
        return c.GetZoomToBound(b, bundle);
    }

    public String b(int i1, int j1)
    {
        return c.GeoPtToScrPoint(b, i1, j1);
    }

    public String b(String s)
    {
        return c.OnSchcityGet(b, s);
    }

    public void b(int i1)
    {
        c.UpdateLayers(b, i1);
    }

    public void b(boolean flag)
    {
        c.ShowHotMap(b, flag);
    }

    public boolean b()
    {
        c.Release(b);
        d.remove(c);
        return true;
    }

    public boolean b(int i1, boolean flag)
    {
        return c.OnRecordRemove(b, i1, flag);
    }

    public boolean b(int i1, boolean flag, int j1)
    {
        return c.OnRecordSuspend(b, i1, flag, j1);
    }

    public int c()
    {
        return b;
    }

    public void c(int i1)
    {
        c.ClearLayer(b, i1);
    }

    public void c(Bundle bundle)
    {
        c.addOneOverlayItem(b, bundle);
    }

    public void c(boolean flag)
    {
        c.ShowTrafficMap(b, flag);
    }

    public void d()
    {
        c.OnPause(b);
    }

    public void d(Bundle bundle)
    {
        c.updateOneOverlayItem(b, bundle);
    }

    public void d(boolean flag)
    {
        c.enableDrawHouseHeight(b, flag);
    }

    public boolean d(int i1)
    {
        return c.OnRecordAdd(b, i1);
    }

    public String e(int i1)
    {
        return c.OnRecordGetAt(b, i1);
    }

    public void e()
    {
        c.OnResume(b);
    }

    public void e(Bundle bundle)
    {
        c.removeOneOverlayItem(b, bundle);
    }

    public void f()
    {
        c.ResetImageRes(b);
    }

    public Bundle g()
    {
        return c.GetMapStatus(b);
    }

    public Bundle h()
    {
        return c.getDrawingMapStatus(b);
    }

    public boolean i()
    {
        return c.GetBaiduHotMapCityInfo(b);
    }

    public String j()
    {
        return c.OnRecordGetAll(b);
    }

    public String k()
    {
        return c.OnHotcityGet(b);
    }

    public void l()
    {
        c.PostStatInfo(b);
    }

    public boolean m()
    {
        return c.isDrawHouseHeightEnable(b);
    }

    public void n()
    {
        c.clearHeatMapLayerCache(b);
    }

}
