// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.authorize.AuthorizeListener;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            a

class b
    implements AuthorizeListener
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void onCancel()
    {
        if (cn.sharesdk.sina.weibo.a.a(a) != null)
        {
            cn.sharesdk.sina.weibo.a.a(a).onCancel(cn.sharesdk.sina.weibo.a.b(a), 1);
        }
        a.finish();
    }

    public void onComplete(Bundle bundle)
    {
        String s = bundle.getString("access_token");
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        cn.sharesdk.sina.weibo.a.b(a).getDb().putToken(s);
        cn.sharesdk.sina.weibo.a.b(a).getDb().putUserId(bundle.getString("uid"));
        cn.sharesdk.sina.weibo.a.b(a).getDb().putExpiresIn(bundle.getLong("expires_in", 0L));
        cn.sharesdk.sina.weibo.a.b(a).getDb().put("refresh_token", bundle.getString("refresh_token"));
        cn.sharesdk.sina.weibo.a.b(a).getDb().put("nickname", bundle.getString("userName"));
        cn.sharesdk.sina.weibo.a.b(a).getDb().put("remind_in", bundle.getString("remind_in"));
        if (cn.sharesdk.sina.weibo.a.a(a) != null)
        {
            cn.sharesdk.sina.weibo.a.a(a).onComplete(cn.sharesdk.sina.weibo.a.b(a), 1, null);
        }
_L4:
        a.finish();
        return;
_L2:
        bundle = bundle.getString("code");
        if (cn.sharesdk.sina.weibo.a.a(a) != null)
        {
            cn.sharesdk.sina.weibo.a.a(a).onError(cn.sharesdk.sina.weibo.a.b(a), 1, new Throwable((new StringBuilder()).append("Error. Obtained the code: ").append(bundle).toString()));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onError(Throwable throwable)
    {
        if (cn.sharesdk.sina.weibo.a.a(a) != null)
        {
            cn.sharesdk.sina.weibo.a.a(a).onError(cn.sharesdk.sina.weibo.a.b(a), 1, throwable);
        }
        a.finish();
    }
}
