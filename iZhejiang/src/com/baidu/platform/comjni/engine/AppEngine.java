// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.engine;

import android.content.Context;
import android.os.Bundle;

// Referenced classes of package com.baidu.platform.comjni.engine:
//            JNIEngine, a

public class AppEngine
{

    public AppEngine()
    {
    }

    public static void InitClass()
    {
        JNIEngine.initClass(new Bundle(), 0);
    }

    public static boolean InitEngine(Context context, Bundle bundle)
    {
        return JNIEngine.InitEngine(context, bundle);
    }

    public static void SetProxyInfo(String s, int i)
    {
        JNIEngine.SetProxyInfo(s, i);
    }

    public static boolean StartSocketProc()
    {
        return JNIEngine.StartSocketProc();
    }

    public static boolean UnInitEngine()
    {
        return JNIEngine.UnInitEngine();
    }

    public static void despatchMessage(int i, int j, int k, int l)
    {
        a.a(i, j, k, l);
    }
}
