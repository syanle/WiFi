// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b;

import java.util.HashMap;

// Referenced classes of package net.youmi.android.b:
//            b, e, k

class f extends b
{

    f()
    {
        c();
    }

    e a(k k)
    {
        k = super.a(k);
        k.b(1);
        return k;
    }

    public f a(long l)
    {
        a.put("ft", Long.toString(l / 1000L));
        return this;
    }

    public f b(long l)
    {
        a.put("ts", Long.toString(l / 1000L));
        return this;
    }

    public f d()
    {
        a.put("osv", android.os.Build.VERSION.RELEASE);
        return this;
    }
}
