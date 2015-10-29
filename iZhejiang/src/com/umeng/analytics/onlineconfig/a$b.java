// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.h;
import u.aly.bq;
import u.aly.br;
import u.aly.bw;

// Referenced classes of package com.umeng.analytics.onlineconfig:
//            a, b, c

public class nContext extends bw
    implements Runnable
{

    Context a;
    final a b;

    private void b()
    {
        b b1 = (b)a(new <init>(b, a), com/umeng/analytics/onlineconfig/b);
        if (b1 == null)
        {
            com.umeng.analytics.onlineconfig.a.a(b, null);
            return;
        }
        if (b1.b)
        {
            if (com.umeng.analytics.onlineconfig.a.a(b) != null)
            {
                com.umeng.analytics.onlineconfig.a.a(b).a(b1.c, b1.d);
            }
            com.umeng.analytics.onlineconfig.a.a(b, a, b1);
            com.umeng.analytics.onlineconfig.a.b(b, a, b1);
            com.umeng.analytics.onlineconfig.a.a(b, b1.a);
            return;
        } else
        {
            com.umeng.analytics.onlineconfig.a.a(b, null);
            return;
        }
    }

    private boolean c()
    {
        boolean flag2 = true;
        if (!TextUtils.isEmpty(AnalyticsConfig.getAppkey(a))) goto _L2; else goto _L1
_L1:
        br.b("MobclickAgent", "Appkey is missing ,Please check AndroidManifest.xml");
_L4:
        return false;
_L2:
        boolean flag1;
        Object obj;
        SharedPreferences sharedpreferences;
        android.content.edPreferences.Editor editor;
        boolean flag;
        long l;
        long l1;
        if (br.a && bq.w(a))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = h.a(a).j();
        l = ((SharedPreferences) (obj)).getLong("last_test_t", 0L);
        l1 = System.currentTimeMillis();
        if (l1 - l <= ((SharedPreferences) (obj)).getLong("oc_req_i", 0x927c0L))
        {
            break; /* Loop/switch isn't completed */
        }
        ((SharedPreferences) (obj)).edit().putLong("last_test_t", l1).commit();
        flag1 = true;
_L5:
        if (flag || flag1)
        {
            obj = (commit)a(new <init>(b, a), com/umeng/analytics/onlineconfig/a$d);
            if (obj != null)
            {
                sharedpreferences = h.a(a).j();
                if (((a) (obj)).a <= sharedpreferences.getLong("oc_mdf_t", 0L))
                {
                    flag2 = false;
                }
                editor = sharedpreferences.edit();
                if (((t) (obj)).b >= 0L)
                {
                    editor.putLong("oc_req_i", ((putLong) (obj)).b);
                }
                if (((b) (obj)).a >= 0L)
                {
                    editor.putLong("oc_mdf_told", sharedpreferences.getLong("oc_mdf_t", 0L));
                    editor.putLong("oc_mdf_t", ((putLong) (obj)).a);
                }
                editor.commit();
                return flag2;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        flag1 = false;
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public boolean a()
    {
        return true;
    }

    public void run()
    {
        try
        {
            if (c())
            {
                b();
            }
            return;
        }
        catch (Exception exception)
        {
            com.umeng.analytics.onlineconfig.a.a(b, null);
            br.c("MobclickAgent", "request online config error", exception);
            return;
        }
    }

    public tor(a a1, Context context)
    {
        b = a1;
        super();
        a = context.getApplicationContext();
    }
}
