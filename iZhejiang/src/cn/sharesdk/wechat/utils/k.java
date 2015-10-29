// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.utils.Hashon;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            WechatResp, g

public class k
{

    private Platform a;
    private cn.sharesdk.framework.Platform.ShareParams b;
    private PlatformActionListener c;
    private AuthorizeListener d;
    private g e;

    public k(Platform platform)
    {
        a = platform;
    }

    public cn.sharesdk.framework.Platform.ShareParams a()
    {
        return b;
    }

    public void a(cn.sharesdk.framework.Platform.ShareParams shareparams, PlatformActionListener platformactionlistener)
    {
        b = shareparams;
        c = platformactionlistener;
    }

    public void a(AuthorizeListener authorizelistener)
    {
        d = authorizelistener;
    }

    public void a(WechatResp wechatresp)
    {
        wechatresp.f;
        JVM INSTR tableswitch -4 0: default 40
    //                   -4 427
    //                   -3 293
    //                   -2 225
    //                   -1 40
    //                   0 120;
           goto _L1 _L2 _L3 _L4 _L1 _L5
_L1:
        HashMap hashmap = new HashMap();
        hashmap.put("req", wechatresp.getClass().getSimpleName());
        hashmap.put("errCode", Integer.valueOf(wechatresp.f));
        hashmap.put("errStr", wechatresp.g);
        hashmap.put("transaction", wechatresp.h);
        (new Throwable((new Hashon()).fromHashMap(hashmap))).printStackTrace();
_L7:
        return;
_L5:
        switch (wechatresp.a())
        {
        default:
            return;

        case 2: // '\002'
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            if (d != null)
            {
                Bundle bundle = new Bundle();
                wechatresp.b(bundle);
                e.a(bundle, d);
                return;
            }
            break;
        }
        continue; /* Loop/switch isn't completed */
        if (c == null) goto _L7; else goto _L6
_L6:
        wechatresp = new HashMap();
        wechatresp.put("ShareParams", b);
        c.onComplete(a, 9, wechatresp);
        return;
_L4:
        switch (wechatresp.a())
        {
        default:
            return;

        case 2: // '\002'
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            if (d != null)
            {
                d.onCancel();
                return;
            }
            break;
        }
        continue; /* Loop/switch isn't completed */
        if (c == null) goto _L7; else goto _L8
_L8:
        c.onCancel(a, 9);
        return;
_L3:
        Object obj;
        obj = new HashMap();
        ((HashMap) (obj)).put("errCode", Integer.valueOf(wechatresp.f));
        ((HashMap) (obj)).put("errStr", wechatresp.g);
        ((HashMap) (obj)).put("transaction", wechatresp.h);
        obj = new Throwable((new Hashon()).fromHashMap(((HashMap) (obj))));
        switch (wechatresp.a())
        {
        default:
            return;

        case 2: // '\002'
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            if (d != null)
            {
                d.onError(((Throwable) (obj)));
                return;
            }
            break;
        }
        continue; /* Loop/switch isn't completed */
        if (c == null) goto _L7; else goto _L9
_L9:
        c.onError(a, 9, ((Throwable) (obj)));
        return;
_L2:
        Object obj1 = new HashMap();
        ((HashMap) (obj1)).put("errCode", Integer.valueOf(wechatresp.f));
        ((HashMap) (obj1)).put("errStr", wechatresp.g);
        ((HashMap) (obj1)).put("transaction", wechatresp.h);
        obj1 = new Throwable((new Hashon()).fromHashMap(((HashMap) (obj1))));
        switch (wechatresp.a())
        {
        default:
            return;

        case 1: // '\001'
            break;
        }
        if (d != null)
        {
            d.onError(((Throwable) (obj1)));
            return;
        }
        if (true) goto _L7; else goto _L10
_L10:
    }

    public void a(g g1)
    {
        e = g1;
    }

    public Platform b()
    {
        return a;
    }

    public PlatformActionListener c()
    {
        return c;
    }
}
