// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.mob.tools.utils.Hashon;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            YixinResp

public class d
{

    private Platform a;
    private cn.sharesdk.framework.Platform.ShareParams b;
    private PlatformActionListener c;

    public d(Platform platform)
    {
        a = platform;
    }

    public Platform a()
    {
        return a;
    }

    public void a(cn.sharesdk.framework.Platform.ShareParams shareparams, PlatformActionListener platformactionlistener)
    {
        b = shareparams;
        c = platformactionlistener;
    }

    public void a(YixinResp yixinresp)
    {
        yixinresp.a;
        JVM INSTR tableswitch -3 0: default 36
    //                   -3 252
    //                   -2 204
    //                   -1 36
    //                   0 137;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        HashMap hashmap = new HashMap();
        hashmap.put("req", yixinresp.getClass().getSimpleName());
        hashmap.put("errCode", Integer.valueOf(yixinresp.a));
        hashmap.put("errStr", yixinresp.b);
        hashmap.put("transaction", yixinresp.c);
        yixinresp = new Throwable((new Hashon()).fromHashMap(hashmap));
        if (c != null)
        {
            c.onError(a, 9, yixinresp);
        }
_L6:
        return;
_L4:
        switch (yixinresp.a())
        {
        default:
            return;

        case 1: // '\001'
            break;
        }
        if (c != null)
        {
            yixinresp = new HashMap();
            yixinresp.put("ShareParams", b);
            c.onComplete(a, 9, yixinresp);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        switch (yixinresp.a())
        {
        default:
            return;

        case 1: // '\001'
            break;
        }
        if (c != null)
        {
            c.onCancel(a, 9);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        Object obj = new HashMap();
        ((HashMap) (obj)).put("errCode", Integer.valueOf(yixinresp.a));
        ((HashMap) (obj)).put("errStr", yixinresp.b);
        ((HashMap) (obj)).put("transaction", yixinresp.c);
        obj = new Throwable((new Hashon()).fromHashMap(((HashMap) (obj))));
        switch (yixinresp.a())
        {
        default:
            return;

        case 1: // '\001'
            break;
        }
        if (c != null)
        {
            c.onError(a, 9, ((Throwable) (obj)));
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public cn.sharesdk.framework.Platform.ShareParams b()
    {
        return b;
    }

    public PlatformActionListener c()
    {
        return c;
    }
}
