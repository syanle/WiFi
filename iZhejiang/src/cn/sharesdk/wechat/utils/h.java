// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.text.TextUtils;
import cn.sharesdk.framework.a.a;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.network.KVPair;
import com.mob.tools.utils.Ln;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            g

class h extends Thread
{

    final String a;
    final AuthorizeListener b;
    final g c;

    h(g g1, String s, AuthorizeListener authorizelistener)
    {
        c = g1;
        a = s;
        b = authorizelistener;
        super();
    }

    public void run()
    {
        Object obj;
        obj = new ArrayList();
        ((ArrayList) (obj)).add(new KVPair("appid", g.d(c)));
        ((ArrayList) (obj)).add(new KVPair("secret", g.e(c)));
        ((ArrayList) (obj)).add(new KVPair("code", a));
        ((ArrayList) (obj)).add(new KVPair("grant_type", "authorization_code"));
        try
        {
            obj = g.c(c).a("https://api.weixin.qq.com/sns/oauth2/access_token", ((ArrayList) (obj)), "/sns/oauth2/access_token", g.b(c));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            try
            {
                b.onError(((Throwable) (obj)));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Ln.e(((Throwable) (obj)));
            }
            return;
        }
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            b.onError(new Throwable("Authorize token is empty"));
            return;
        }
        if (((String) (obj)).contains("errcode"))
        {
            if (b != null)
            {
                b.onError(new Throwable(((String) (obj))));
                return;
            }
            break MISSING_BLOCK_LABEL_204;
        }
        cn.sharesdk.wechat.utils.g.a(c, ((String) (obj)));
        b.onComplete(null);
    }
}
