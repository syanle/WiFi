// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.friends;

import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;

// Referenced classes of package cn.sharesdk.wechat.friends:
//            Wechat

class a
    implements AuthorizeListener
{

    final Wechat a;

    a(Wechat wechat)
    {
        a = wechat;
        super();
    }

    public void onCancel()
    {
        if (Wechat.c(a) != null)
        {
            Wechat.d(a).onCancel(a, 1);
        }
    }

    public void onComplete(Bundle bundle)
    {
        Wechat.a(a, 1, null);
    }

    public void onError(Throwable throwable)
    {
        if (Wechat.a(a) != null)
        {
            Wechat.b(a).onError(a, 1, throwable);
        }
    }
}
