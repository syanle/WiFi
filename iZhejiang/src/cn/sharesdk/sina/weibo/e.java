// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.utils.R;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            SinaWeibo, i

class e
    implements AuthorizeListener
{

    final i a;
    final SinaWeibo b;

    e(SinaWeibo sinaweibo, i j)
    {
        b = sinaweibo;
        a = j;
        super();
    }

    public void onCancel()
    {
        if (SinaWeibo.l(b) != null)
        {
            SinaWeibo.m(b).onCancel(b, 1);
        }
    }

    public void onComplete(Bundle bundle)
    {
        String s = bundle.getString("uid");
        String s1 = bundle.getString("access_token");
        String s2 = bundle.getString("expires_in");
        SinaWeibo.e(b).put("nickname", bundle.getString("userName"));
        SinaWeibo.f(b).put("remind_in", bundle.getString("remind_in"));
        SinaWeibo.g(b).putToken(s1);
        long l;
        try
        {
            l = R.parseLong(s2);
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            l = 0L;
        }
        SinaWeibo.h(b).putExpiresIn(l);
        SinaWeibo.i(b).putUserId(s);
        a.b(s1);
        SinaWeibo.b(b, 1, null);
    }

    public void onError(Throwable throwable)
    {
        if (SinaWeibo.j(b) != null)
        {
            SinaWeibo.k(b).onError(b, 1, throwable);
        }
    }
}
