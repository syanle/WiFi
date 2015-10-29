// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import com.mob.tools.utils.Ln;

// Referenced classes of package cn.sharesdk.framework:
//            f, Platform

class h extends Thread
{

    final String a[];
    final f b;

    h(f f1, String as[])
    {
        b = f1;
        a = as;
        super();
    }

    public void run()
    {
        try
        {
            f.a(b);
            f.b(b).doAuthorize(a);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
    }
}
