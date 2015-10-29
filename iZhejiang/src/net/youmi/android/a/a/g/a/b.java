// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a;

import android.content.Context;
import java.io.Serializable;
import net.youmi.android.a.a.g.a.a.c;

public class b
    implements Serializable
{

    private Context a;
    private net.youmi.android.a.a.g.a.b.b b;

    public b(Context context, net.youmi.android.a.a.g.a.b.b b1)
    {
        a = null;
        a = context;
        b = b1;
    }

    public void a()
    {
        c c1;
        c1 = c.a(a);
        if (c1.a(b))
        {
            return;
        }
        boolean flag;
        if (b.g() != 1)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        flag = c1.b(b);
        if (flag)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_46;
        Throwable throwable;
        throwable;
    }
}
