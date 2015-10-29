// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.moments;

import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;

// Referenced classes of package cn.sharesdk.wechat.moments:
//            WechatMoments

class a
    implements AuthorizeListener
{

    final WechatMoments a;

    a(WechatMoments wechatmoments)
    {
        a = wechatmoments;
        super();
    }

    public void onCancel()
    {
        if (WechatMoments.c(a) != null)
        {
            WechatMoments.d(a).onCancel(a, 1);
        }
    }

    public void onComplete(Bundle bundle)
    {
        WechatMoments.a(a, 1, null);
    }

    public void onError(Throwable throwable)
    {
        if (WechatMoments.a(a) != null)
        {
            WechatMoments.b(a).onError(a, 1, throwable);
        }
    }
}
