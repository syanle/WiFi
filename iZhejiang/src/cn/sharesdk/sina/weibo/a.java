// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.FakeActivity;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            SinaActivity, b, c

public class a extends FakeActivity
{

    private String a;
    private String b;
    private int c;
    private boolean d;
    private String e[];
    private PlatformActionListener f;
    private Platform g;
    private cn.sharesdk.framework.Platform.ShareParams h;

    public a(Platform platform, String s, String s1)
    {
        a = s;
        g = platform;
        b = s1;
    }

    static PlatformActionListener a(a a1)
    {
        return a1.f;
    }

    private void a()
    {
        String s1 = null;
        String s = s1;
        if (e != null)
        {
            s = s1;
            if (e.length != 0)
            {
                s1 = e[0];
                int i = 1;
                do
                {
                    s = s1;
                    if (i >= e.length)
                    {
                        break;
                    }
                    s1 = (new StringBuilder()).append(s1).append(",").append(e[i]).toString();
                    i++;
                } while (true);
            }
        }
        Intent intent;
        if (d)
        {
            ShareSDK.logApiEvent("com.sina.weibo.sdk.auth.sso.SsoHandler.authorize", c);
        } else
        {
            ShareSDK.logApiEvent("com.sina.weibo.sdk.auth.sso.SsoHandler.authorizeWeb", c);
        }
        intent = new Intent(activity, cn/sharesdk/sina/weibo/SinaActivity);
        intent.putExtra("action", 1);
        intent.putExtra("appkey", a);
        intent.putExtra("isUserClient", d);
        intent.putExtra("redirectUrl", b);
        s1 = s;
        if (s == null)
        {
            s1 = "";
        }
        intent.putExtra("permissions", s1);
        SinaActivity.a(new b(this));
        activity.startActivity(intent);
    }

    static Platform b(a a1)
    {
        return a1.g;
    }

    private void b()
    {
        ShareSDK.logApiEvent("com.sina.weibo.sdk.api.share.IWeiboShareAPI.sendRequest", c);
        Intent intent = new Intent(activity, cn/sharesdk/sina/weibo/SinaActivity);
        intent.putExtra("action", 2);
        intent.putExtra("token", g.getDb().getToken());
        intent.putExtra("appkey", a);
        intent.putExtra("redirectUrl", b);
        intent.putExtra("isUserClient", d);
        c c1 = new c(this);
        SinaActivity.a(h);
        SinaActivity.a(c1);
        activity.startActivity(intent);
    }

    static cn.sharesdk.framework.Platform.ShareParams c(a a1)
    {
        return a1.h;
    }

    public void a(PlatformActionListener platformactionlistener, cn.sharesdk.framework.Platform.ShareParams shareparams, boolean flag)
    {
        d = true;
        h = shareparams;
        f = platformactionlistener;
    }

    public void a(PlatformActionListener platformactionlistener, String as[], boolean flag)
    {
        if (!flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
        e = as;
        f = platformactionlistener;
    }

    public void onCreate()
    {
        super.onCreate();
        Bundle bundle = activity.getIntent().getExtras();
        int i = bundle.getInt("action");
        c = bundle.getInt("platformID");
        if (1 == i)
        {
            a();
            return;
        } else
        {
            b();
            return;
        }
    }
}
