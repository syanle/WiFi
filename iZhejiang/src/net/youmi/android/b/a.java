// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b;

import java.util.HashMap;

// Referenced classes of package net.youmi.android.b:
//            b, e, k

public class a extends b
{

    public a()
    {
    }

    public a a(long l)
    {
        a.put("val", Long.toString(l));
        return this;
    }

    public a a(String s)
    {
        a.put("ac", s);
        return this;
    }

    e a(k k)
    {
        k = super.a(k);
        k.b(2);
        return k;
    }

    public a b(String s)
    {
        a.put("lb", s);
        return this;
    }
}
