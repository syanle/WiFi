// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import android.content.Context;
import com.umeng.analytics.g;
import com.umeng.common.Log;
import com.umeng.common.net.r;

// Referenced classes of package com.umeng.analytics.onlineconfig:
//            a, b, c

public class nContext extends r
    implements Runnable
{

    Context a;
    final a b;

    private void b()
    {
        Object obj = com.umeng.analytics.onlineconfig.a.a(b, a);
        nContext ncontext = new <init>(b, ((org.json.JSONObject) (obj)));
        String as[] = g.s;
        int i = 0;
        obj = null;
label0:
        do
        {
label1:
            {
                if (i < as.length)
                {
                    ncontext.a(as[i]);
                    obj = (b)a(ncontext, com/umeng/analytics/onlineconfig/b);
                    if (obj == null)
                    {
                        break label1;
                    }
                }
                if (obj == null)
                {
                    com.umeng.analytics.onlineconfig.a.a(b, null);
                    return;
                }
                break label0;
            }
            i++;
        } while (true);
        Log.a("MobclickAgent", (new StringBuilder()).append("response : ").append(((b) (obj)).b).toString());
        if (((b) (obj)).b)
        {
            if (com.umeng.analytics.onlineconfig.a.a(b) != null)
            {
                com.umeng.analytics.onlineconfig.a.a(b).a(((b) (obj)).c, ((b) (obj)).d);
            }
            com.umeng.analytics.onlineconfig.a.a(b, a, ((b) (obj)));
            com.umeng.analytics.onlineconfig.a.b(b, a, ((b) (obj)));
            com.umeng.analytics.onlineconfig.a.a(b, ((b) (obj)).a);
            return;
        } else
        {
            com.umeng.analytics.onlineconfig.a.a(b, null);
            return;
        }
    }

    public boolean a()
    {
        return false;
    }

    public void run()
    {
        try
        {
            b();
            return;
        }
        catch (Exception exception)
        {
            com.umeng.analytics.onlineconfig.a.a(b, null);
            Log.c("MobclickAgent", "reques update error", exception);
            return;
        }
    }

    public (a a1, Context context)
    {
        b = a1;
        super();
        a = context.getApplicationContext();
    }
}
