// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.a.a;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            i, h

public class g
{

    private String a;
    private String b;
    private a c;
    private Platform d;
    private int e;

    public g(Platform platform, int j)
    {
        d = platform;
        e = j;
        c = cn.sharesdk.framework.a.a.a();
    }

    static Platform a(g g1)
    {
        return g1.d;
    }

    static void a(g g1, String s)
    {
        g1.a(s);
    }

    private void a(String s)
    {
        Ln.d((new StringBuilder()).append("wechat getAuthorizeToken ==>>").append(s).toString(), new Object[0]);
        Object obj = (new Hashon()).fromJson(s);
        s = String.valueOf(((HashMap) (obj)).get("access_token"));
        String s1 = String.valueOf(((HashMap) (obj)).get("refresh_token"));
        String s2 = String.valueOf(((HashMap) (obj)).get("expires_in"));
        obj = String.valueOf(((HashMap) (obj)).get("openid"));
        d.getDb().put("openid", ((String) (obj)));
        d.getDb().putExpiresIn(Long.valueOf(s2).longValue());
        d.getDb().putToken(s);
        d.getDb().put("refresh_token", s1);
    }

    static int b(g g1)
    {
        return g1.e;
    }

    static a c(g g1)
    {
        return g1.c;
    }

    static String d(g g1)
    {
        return g1.a;
    }

    static String e(g g1)
    {
        return g1.b;
    }

    public void a(Bundle bundle, AuthorizeListener authorizelistener)
    {
        String s = bundle.getString("_wxapi_sendauth_resp_url");
        if (TextUtils.isEmpty(s))
        {
            if (authorizelistener != null)
            {
                authorizelistener.onError(null);
            }
        } else
        {
            int j = s.indexOf("://oauth?");
            bundle = s;
            if (j >= 0)
            {
                bundle = s.substring(j + 1);
            }
            bundle = R.urlToBundle(bundle).getString("code");
            try
            {
                a(((String) (bundle)), authorizelistener);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Bundle bundle)
            {
                Ln.e(bundle);
            }
            if (authorizelistener != null)
            {
                authorizelistener.onError(bundle);
                return;
            }
        }
    }

    public void a(PlatformActionListener platformactionlistener)
    {
        (new i(this, platformactionlistener)).start();
    }

    public void a(String s, AuthorizeListener authorizelistener)
    {
        Ln.e((new StringBuilder()).append("getAuthorizeToken ==>> ").append(s).toString(), new Object[0]);
        (new h(this, s, authorizelistener)).start();
    }

    public void a(String s, String s1)
    {
        a = s;
        b = s1;
    }
}
