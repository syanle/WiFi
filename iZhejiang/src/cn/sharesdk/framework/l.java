// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import com.mob.tools.utils.Ln;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            k

class l extends Thread
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public void run()
    {
        try
        {
            HashMap hashmap = new HashMap();
            if (!a.f() && a.a(hashmap))
            {
                a.b(hashmap);
            }
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
    }
}
