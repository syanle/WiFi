// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;


// Referenced classes of package com.umeng.analytics:
//            ReportPolicy

public static class b extends b
{

    private long a;
    private long b;

    public boolean a()
    {
        return System.currentTimeMillis() - b < a;
    }

    public boolean a(boolean flag)
    {
        return System.currentTimeMillis() - b >= a;
    }

    public (int i)
    {
        b = 0L;
        a = i;
        b = System.currentTimeMillis();
    }
}
