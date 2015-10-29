// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.framework:
//            f, Platform

class g extends Thread
{

    final int a;
    final Object b;
    final f c;

    g(f f1, int i, Object obj)
    {
        c = f1;
        a = i;
        b = obj;
        super();
    }

    public void run()
    {
        try
        {
            f.a(c);
            if (f.b(c).checkAuthorize(a, b))
            {
                c.b(a, b);
            }
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
    }
}
