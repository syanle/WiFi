// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            PlatformActionListener, a, Platform, PlatformDb

class b
    implements PlatformActionListener
{

    final PlatformActionListener a;
    final int b;
    final HashMap c;
    final a d;

    b(a a1, PlatformActionListener platformactionlistener, int i, HashMap hashmap)
    {
        d = a1;
        a = platformactionlistener;
        b = i;
        c = hashmap;
        super();
    }

    public void onCancel(Platform platform, int i)
    {
        cn.sharesdk.framework.a.a(d, a);
        if (cn.sharesdk.framework.a.a(d) != null)
        {
            cn.sharesdk.framework.a.a(d).onComplete(platform, b, c);
        }
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        cn.sharesdk.framework.a.a(d, a);
        if (cn.sharesdk.framework.a.a(d) != null)
        {
            cn.sharesdk.framework.a.a(d).onComplete(platform, b, c);
        }
        cn.sharesdk.framework.statistics.b.b b1 = new cn.sharesdk.framework.statistics.b.b();
        b1.a = platform.getPlatformId();
        String s;
        if ("TencentWeibo".equals(platform.getName()))
        {
            s = platform.getDb().get("name");
        } else
        {
            s = platform.getDb().getUserId();
        }
        b1.b = s;
        b1.c = (new Hashon()).fromHashMap(hashmap);
        b1.d = cn.sharesdk.framework.a.a(d, platform);
        cn.sharesdk.framework.statistics.b.a(platform.getContext()).a(b1);
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        Ln.e(throwable);
        cn.sharesdk.framework.a.a(d, a);
        if (cn.sharesdk.framework.a.a(d) != null)
        {
            cn.sharesdk.framework.a.a(d).onComplete(platform, b, c);
        }
    }
}
