// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.content.Context;
import android.view.View;
import net.youmi.android.a.a.e.a.a.a;
import net.youmi.android.a.a.e.a.a.b;
import net.youmi.android.a.a.i.a.a.c;
import net.youmi.android.a.a.j.b.f;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            g

public class i extends f
{

    public i(Context context, c c1, b b1)
    {
        this(context, c1, b1, null);
    }

    public i(Context context, c c1, b b1, a a1)
    {
        super(context, new Object[] {
            c1, b1, a1
        });
    }

    protected transient g a(Context context, Object aobj[])
    {
        a a1 = null;
        int k = aobj.length;
        int j = 0;
        b b1 = null;
        c c1 = null;
        for (; j < k; j++)
        {
            Object obj = aobj[j];
            if (obj instanceof c)
            {
                c1 = (c)obj;
            }
            if (obj instanceof b)
            {
                b1 = (b)obj;
            }
            if (obj instanceof a)
            {
                a1 = (a)obj;
            }
        }

        return new g(context, c1, b1, a1);
    }

    protected boolean a()
    {
        return ((g)a).getScrollY() == 0;
    }

    protected View b(Context context, Object aobj[])
    {
        return a(context, aobj);
    }
}
