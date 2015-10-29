// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            a

class c
    implements AuthorizeListener
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public void onCancel()
    {
        if (cn.sharesdk.sina.weibo.a.a(a) != null)
        {
            cn.sharesdk.sina.weibo.a.a(a).onCancel(cn.sharesdk.sina.weibo.a.b(a), 9);
        }
        a.finish();
    }

    public void onComplete(Bundle bundle)
    {
        if (cn.sharesdk.sina.weibo.a.a(a) != null)
        {
            bundle = new HashMap();
            bundle.put("ShareParams", cn.sharesdk.sina.weibo.a.c(a));
            cn.sharesdk.sina.weibo.a.a(a).onComplete(cn.sharesdk.sina.weibo.a.b(a), 9, bundle);
        }
        a.finish();
    }

    public void onError(Throwable throwable)
    {
        if (cn.sharesdk.sina.weibo.a.a(a) != null)
        {
            cn.sharesdk.sina.weibo.a.a(a).onError(cn.sharesdk.sina.weibo.a.b(a), 9, throwable);
        }
        a.finish();
    }
}
