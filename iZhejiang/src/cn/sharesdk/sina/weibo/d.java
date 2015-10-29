// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            SinaWeibo

class d
    implements PlatformActionListener
{

    final SinaWeibo a;

    d(SinaWeibo sinaweibo)
    {
        a = sinaweibo;
        super();
    }

    public void onCancel(Platform platform, int i)
    {
        if (SinaWeibo.c(a) != null)
        {
            SinaWeibo.d(a).onCancel(platform, 1);
        }
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        SinaWeibo.a(a, 1, null);
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        if (SinaWeibo.a(a) != null)
        {
            SinaWeibo.b(a).onError(platform, 1, throwable);
        }
    }
}
