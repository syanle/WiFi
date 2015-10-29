// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            PlatformActionListener, a, Platform

class c
    implements PlatformActionListener
{

    final PlatformActionListener a;
    final int b;
    final Object c;
    final a d;

    c(a a1, PlatformActionListener platformactionlistener, int i, Object obj)
    {
        d = a1;
        a = platformactionlistener;
        b = i;
        c = obj;
        super();
    }

    public void onCancel(Platform platform, int i)
    {
        cn.sharesdk.framework.a.a(d, a);
        if (cn.sharesdk.framework.a.a(d) != null)
        {
            cn.sharesdk.framework.a.a(d).onCancel(platform, b);
        }
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        cn.sharesdk.framework.a.a(d, a);
        platform.afterRegister(b, c);
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        cn.sharesdk.framework.a.a(d, a);
        if (cn.sharesdk.framework.a.a(d) != null)
        {
            cn.sharesdk.framework.a.a(d).onError(platform, i, throwable);
        }
    }
}
