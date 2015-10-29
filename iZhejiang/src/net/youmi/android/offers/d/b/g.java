// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.content.Context;
import net.youmi.android.a.a.j.c.b;

public class g
    implements Runnable
{

    private Context a;
    private String b;
    private int c;
    private int d;

    public g(Context context, String s, int i, int j)
    {
        a = context;
        b = s;
        c = i;
        d = j;
    }

    public void run()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        if (b == null)
        {
            return;
        }
        try
        {
            (new b(a)).b(b, 0);
            return;
        }
        catch (Throwable throwable) { }
    }
}
