// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import cn.sharesdk.framework.statistics.a;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            k

class m extends Thread
{

    final a a;
    final k b;

    m(k k1, a a1)
    {
        b = k1;
        a = a1;
        super();
    }

    public void run()
    {
        try
        {
            String s = a.g(cn.sharesdk.framework.k.a(b));
            HashMap hashmap = (new Hashon()).fromJson(s);
            HashMap hashmap1 = new HashMap();
            if (cn.sharesdk.framework.k.a(b, a, hashmap, hashmap1))
            {
                b.b(hashmap1);
            }
            a.a(cn.sharesdk.framework.k.a(b), s);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
    }
}
