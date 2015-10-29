// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import android.content.Context;
import java.io.File;

// Referenced classes of package com.baidu.mapapi.utils:
//            e, d

public class b
{

    static String a;
    static String b;
    static String c;
    static int d;
    static int e;
    static int f;
    private static e g = null;

    public static String a()
    {
        String s = a;
        s = (new StringBuilder()).append(s).append("/BaiduMapSDK").toString();
        if (s.length() != 0)
        {
            File file = new File(s);
            if (!file.exists())
            {
                file.mkdirs();
            }
        }
        return s;
    }

    public static void a(Context context)
    {
        if (g == null)
        {
            g = com.baidu.mapapi.utils.e.a();
            g.a(context);
        }
        if (a != null && a.length() > 0)
        {
            b = (new StringBuilder()).append(a).append(File.separator).append("BaiduMapSDK").append(File.separator).append("cache").toString();
        } else
        {
            a = g.b().a();
            b = g.b().c();
        }
        c = g.b().d();
        d = 0x1400000;
        e = 0x3200000;
        f = 0x500000;
    }

    public static void a(String s)
    {
        a = s;
    }

    public static String b()
    {
        return b;
    }

    public static String c()
    {
        return c;
    }

    public static int d()
    {
        return d;
    }

    public static int e()
    {
        return e;
    }

    public static int f()
    {
        return f;
    }

}
