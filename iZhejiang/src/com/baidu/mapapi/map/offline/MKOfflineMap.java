// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map.offline;

import com.baidu.mapapi.a;
import com.baidu.mapapi.utils.c;
import com.baidu.platform.comapi.map.p;
import com.baidu.platform.comapi.map.q;
import com.baidu.platform.comapi.map.s;
import com.baidu.platform.comapi.map.t;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.baidu.mapapi.map.offline:
//            a, MKOfflineMapListener, MKOLUpdateElement

public class MKOfflineMap
{

    public static final int TYPE_DOWNLOAD_UPDATE = 0;
    public static final int TYPE_NEW_OFFLINE = 6;
    public static final int TYPE_VER_UPDATE = 4;
    private static final String a = com/baidu/mapapi/map/offline/MKOfflineMap.getSimpleName();
    private q b;
    private MKOfflineMapListener c;

    public MKOfflineMap()
    {
    }

    static q a(MKOfflineMap mkofflinemap)
    {
        return mkofflinemap.b;
    }

    static MKOfflineMapListener b(MKOfflineMap mkofflinemap)
    {
        return mkofflinemap.c;
    }

    public void destroy()
    {
        b.d(0);
        b.b(null);
        b.b();
        com.baidu.mapapi.a.a().c();
    }

    public ArrayList getAllUpdateInfo()
    {
        Object obj = b.e();
        if (obj == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(com.baidu.mapapi.utils.c.a(((t)((Iterator) (obj)).next()).a()))) { }
        return arraylist;
    }

    public ArrayList getHotCityList()
    {
        Object obj = b.c();
        if (obj == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(com.baidu.mapapi.utils.c.a((p)((Iterator) (obj)).next()))) { }
        return arraylist;
    }

    public ArrayList getOfflineCityList()
    {
        Object obj = b.d();
        if (obj == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(com.baidu.mapapi.utils.c.a((p)((Iterator) (obj)).next()))) { }
        return arraylist;
    }

    public MKOLUpdateElement getUpdateInfo(int i)
    {
        t t1 = b.f(i);
        if (t1 == null)
        {
            return null;
        } else
        {
            return com.baidu.mapapi.utils.c.a(t1.a());
        }
    }

    public int importOfflineData()
    {
        return importOfflineData(false);
    }

    public int importOfflineData(boolean flag)
    {
        int i = 0;
        ArrayList arraylist = b.e();
        int j;
        if (arraylist != null)
        {
            i = arraylist.size();
            j = i;
        } else
        {
            j = 0;
        }
        b.a(flag, true);
        arraylist = b.e();
        if (arraylist != null)
        {
            i = arraylist.size();
        }
        return i - j;
    }

    public boolean init(MKOfflineMapListener mkofflinemaplistener)
    {
        com.baidu.mapapi.a.a().b();
        b = q.a();
        if (b == null)
        {
            return false;
        } else
        {
            b.a(new com.baidu.mapapi.map.offline.a(this));
            c = mkofflinemaplistener;
            return true;
        }
    }

    public boolean pause(int i)
    {
        return b.c(i);
    }

    public boolean remove(int i)
    {
        return b.e(i);
    }

    public ArrayList searchCity(String s1)
    {
        Object obj = b.a(s1);
        if (obj == null)
        {
            return null;
        }
        s1 = new ArrayList();
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); s1.add(com.baidu.mapapi.utils.c.a((p)((Iterator) (obj)).next()))) { }
        return s1;
    }

    public boolean start(int i)
    {
label0:
        {
            if (b == null)
            {
                return false;
            }
            if (b.e() == null)
            {
                break label0;
            }
            Iterator iterator = b.e().iterator();
            t t1;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                t1 = (t)iterator.next();
            } while (t1.a.a != i);
            if (t1.a.j || t1.a.l == 2 || t1.a.l == 3 || t1.a.l == 6)
            {
                return b.b(i);
            } else
            {
                return false;
            }
        }
        return b.a(i);
    }

}
