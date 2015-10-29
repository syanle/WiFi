// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d.a;

import android.content.Context;
import net.youmi.android.a.a.e.g.b;

// Referenced classes of package net.youmi.android.a.a.g.d.a:
//            h, d

public class f
    implements Runnable
{

    private h a;

    public f(Context context, b b, int i)
    {
        this(context, b, i, 0x1499700L);
    }

    public f(Context context, b b, int i, long l)
    {
        this(context, b, new int[] {
            i
        }, new long[] {
            l
        }, null, null);
    }

    public f(Context context, b b, int ai[])
    {
        this(context, b, ai, null, null, null);
    }

    public f(Context context, b b, int ai[], long al[], String as[], long al1[])
    {
        a = new h(context, b, ai, al, as, al1);
    }

    public f(Context context, d d)
    {
        a = new h(context, d);
    }

    public void run()
    {
        a.a();
    }
}
