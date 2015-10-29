// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.a.a;
import com.mob.tools.network.KVPair;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            g

class i extends Thread
{

    final PlatformActionListener a;
    final g b;

    i(g g1, PlatformActionListener platformactionlistener)
    {
        b = g1;
        a = platformactionlistener;
        super();
    }

    public void run()
    {
        Object obj;
        obj = new ArrayList();
        ((ArrayList) (obj)).add(new KVPair("access_token", cn.sharesdk.wechat.utils.g.a(b).getDb().getToken()));
        ((ArrayList) (obj)).add(new KVPair("openid", cn.sharesdk.wechat.utils.g.a(b).getDb().get("openid")));
        obj = g.c(b).a("https://api.weixin.qq.com/sns/userinfo", ((ArrayList) (obj)), "/sns/userinfo", g.b(b));
        if (!TextUtils.isEmpty(((CharSequence) (obj)))) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.onError(cn.sharesdk.wechat.utils.g.a(b), 8, new Throwable());
            return;
        }
          goto _L3
_L2:
        Ln.d((new StringBuilder()).append("getUserInfo ==>>").append(((String) (obj))).toString(), new Object[0]);
        obj = (new Hashon()).fromJson(((String) (obj)));
        if (!((HashMap) (obj)).containsKey("errcode") || ((Integer)((HashMap) (obj)).get("errcode")).intValue() == 0) goto _L5; else goto _L4
_L4:
        if (a != null)
        {
            obj = (new Hashon()).fromHashMap(((HashMap) (obj)));
            a.onError(cn.sharesdk.wechat.utils.g.a(b), 8, new Throwable(((String) (obj))));
            return;
        }
          goto _L3
_L5:
        String s;
        String s1;
        try
        {
            s = String.valueOf(((HashMap) (obj)).get("openid"));
            s1 = String.valueOf(((HashMap) (obj)).get("nickname"));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Ln.e(((Throwable) (obj)));
            return;
        }
        int j = R.parseInt(String.valueOf(((HashMap) (obj)).get("sex")));
_L10:
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        s2 = String.valueOf(((HashMap) (obj)).get("province"));
        s3 = String.valueOf(((HashMap) (obj)).get("city"));
        s4 = String.valueOf(((HashMap) (obj)).get("country"));
        s5 = String.valueOf(((HashMap) (obj)).get("headimgurl"));
        s6 = String.valueOf(((HashMap) (obj)).get("unionid"));
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("nickname", s1);
        if (j != 1) goto _L7; else goto _L6
_L6:
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("gender", "0");
_L8:
        cn.sharesdk.wechat.utils.g.a(b).getDb().putUserId(s);
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("icon", s5);
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("province", s2);
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("city", s3);
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("country", s4);
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("openid", s);
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("unionid", s6);
        a.onComplete(cn.sharesdk.wechat.utils.g.a(b), 8, ((HashMap) (obj)));
        return;
        Throwable throwable;
        throwable;
        Ln.e(throwable);
        j = 2;
        continue; /* Loop/switch isn't completed */
_L7:
        if (j != 2)
        {
            break MISSING_BLOCK_LABEL_546;
        }
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("gender", "1");
          goto _L8
        cn.sharesdk.wechat.utils.g.a(b).getDb().put("gender", "2");
          goto _L8
_L3:
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }
}
