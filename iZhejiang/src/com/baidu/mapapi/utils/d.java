// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import android.content.Context;
import android.os.Environment;
import java.io.File;

public final class d
{

    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;

    d(Context context)
    {
        a = Environment.getExternalStorageDirectory().getAbsolutePath();
        b = (new StringBuilder()).append(a).append(File.separator).append("BaiduMapSDK").toString();
        c = context.getCacheDir().getAbsolutePath();
        d = "";
        e = "";
    }

    d(String s, String s1, Context context)
    {
        a = s;
        b = (new StringBuilder()).append(a).append(File.separator).append("BaiduMapSDK").toString();
        c = (new StringBuilder()).append(b).append(File.separator).append("cache").toString();
        d = context.getCacheDir().getAbsolutePath();
        e = s1;
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return (new StringBuilder()).append(a).append(File.separator).append("BaiduMapSDK").toString();
    }

    public String c()
    {
        return c;
    }

    public String d()
    {
        return d;
    }

    public boolean equals(Object obj)
    {
        if (obj == null || !com/baidu/mapapi/utils/d.isInstance(obj))
        {
            return false;
        } else
        {
            obj = (d)obj;
            return a.equals(((d) (obj)).a);
        }
    }
}
