// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import android.content.Context;
import java.util.HashMap;
import net.youmi.android.a.a.g.b.a;
import net.youmi.android.a.b.k.k;

// Referenced classes of package net.youmi.android.banner:
//            h

public class BannerManager
{

    public static final String PROTOCOLVERSION = "4";
    protected static HashMap a;
    private static int b = 0;

    public BannerManager()
    {
    }

    protected static int a()
    {
        return b;
    }

    protected static void a(int i)
    {
        b = i;
    }

    public static boolean checkBannerAdConfig(Context context)
    {
        return net.youmi.android.a.a.g.b.a.d(context);
    }

    public static String checkPermissions(Context context)
    {
        String s = "";
        if (!k.b(context))
        {
            s = "Lack of android.permission.INTERNET permission!";
        } else
        {
            if (!k.a(context))
            {
                return "Lack of android.permission.WRITE_EXTERNAL_STORAGE permission!";
            }
            if (!k.d(context))
            {
                return "Lack of android.permission.ACCESS_NETWORK_STATE permission!";
            }
            if (!k.g(context))
            {
                return "Lack of android.permission.ACCESS_WIFI_STATE permission!";
            }
        }
        return s;
    }

    public static h getBannerObject(int i)
    {
        if (a == null)
        {
            a = new HashMap();
            return null;
        } else
        {
            return (h)a.get(Integer.valueOf(i));
        }
    }

    public static void setBannerObject(int i, h h1)
    {
        if (a == null)
        {
            a = new HashMap();
        }
        a.put(Integer.valueOf(i), h1);
    }

}
