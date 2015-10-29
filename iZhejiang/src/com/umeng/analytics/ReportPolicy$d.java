// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import u.aly.aa;

// Referenced classes of package com.umeng.analytics:
//            ReportPolicy

public static class b extends b
{

    private long a;
    private long b;
    private aa c;

    public boolean a(boolean flag)
    {
        return System.currentTimeMillis() - c.c >= b;
    }

    public long b()
    {
        return b;
    }

    public (aa aa1, long l)
    {
        a = 0x15f90L;
        c = aa1;
        long l1 = l;
        if (l < a)
        {
            l1 = a;
        }
        b = l1;
    }
}
