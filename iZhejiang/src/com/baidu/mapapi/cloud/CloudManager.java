// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import android.os.Bundle;
import android.os.Handler;
import com.baidu.platform.comjni.map.cloud.a;

// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseCloudSearchInfo, DetailSearchInfo, a, CloudListener, 
//            BoundSearchInfo, LocalSearchInfo, NearbySearchInfo

public class CloudManager
{

    private static final String a = com/baidu/mapapi/cloud/CloudManager.getSimpleName();
    private static CloudManager c;
    private Bundle b;
    private a d;
    private Handler e;
    private CloudListener f;

    public CloudManager()
    {
        b = null;
    }

    static a a(CloudManager cloudmanager)
    {
        return cloudmanager.d;
    }

    private String a(int i)
    {
        String s1 = d.a(i);
        String s = s1;
        if (s1 != null)
        {
            s = s1;
            if (s1.trim().length() <= 0)
            {
                s = null;
            }
        }
        return s;
    }

    static String a(CloudManager cloudmanager, int i)
    {
        return cloudmanager.a(i);
    }

    private boolean a(BaseCloudSearchInfo basecloudsearchinfo)
    {
        if (basecloudsearchinfo != null)
        {
            if ((basecloudsearchinfo = basecloudsearchinfo.a()) != null && !basecloudsearchinfo.equals(""))
            {
                b.putString("url", basecloudsearchinfo);
                d.a(b);
                return true;
            }
        }
        return false;
    }

    static CloudListener b(CloudManager cloudmanager)
    {
        return cloudmanager.f;
    }

    public static CloudManager getInstance()
    {
        if (c == null)
        {
            c = new CloudManager();
        }
        return c;
    }

    public boolean boundSearch(BoundSearchInfo boundsearchinfo)
    {
        return a(boundsearchinfo);
    }

    public void destroy()
    {
        if (d != null)
        {
            com.baidu.platform.comjni.engine.a.b(0x20000, e);
            d.b();
            d = null;
            com.baidu.mapapi.a.a().c();
        }
    }

    public boolean detailSearch(DetailSearchInfo detailsearchinfo)
    {
        if (detailsearchinfo != null)
        {
            if ((detailsearchinfo = detailsearchinfo.a()) != null && !detailsearchinfo.equals(""))
            {
                b.putString("url", detailsearchinfo);
                d.b(b);
                return true;
            }
        }
        return false;
    }

    public void init(CloudListener cloudlistener)
    {
label0:
        {
            f = cloudlistener;
            if (d == null)
            {
                com.baidu.mapapi.a.a().b();
                d = new a();
                if (d.a() != 0)
                {
                    break label0;
                }
                d = null;
            }
            return;
        }
        b = new Bundle();
        e = new com.baidu.mapapi.cloud.a(this);
        com.baidu.platform.comjni.engine.a.a(0x20000, e);
    }

    public boolean localSearch(LocalSearchInfo localsearchinfo)
    {
        return a(localsearchinfo);
    }

    public boolean nearbySearch(NearbySearchInfo nearbysearchinfo)
    {
        return a(nearbysearchinfo);
    }

}
