// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.onlineconfig.UmengOnlineConfigureListener;
import com.umeng.analytics.onlineconfig.a;
import java.util.HashMap;
import java.util.Map;
import u.aly.ad;
import u.aly.ag;
import u.aly.br;
import u.aly.l;
import u.aly.n;
import u.aly.o;
import u.aly.v;
import u.aly.x;
import u.aly.z;

// Referenced classes of package com.umeng.analytics:
//            c, AnalyticsConfig, f, g

public class d
    implements v
{

    private final a a = new a();
    private Context b;
    private c c;
    private n d;
    private ad e;
    private z f;
    private o g;
    private l h;
    private boolean i;

    d()
    {
        b = null;
        d = new n();
        e = new ad();
        f = new z();
        i = false;
        d.a(this);
    }

    static o a(d d1)
    {
        return d1.g;
    }

    static void a(d d1, Context context)
    {
        d1.g(context);
    }

    static void b(d d1, Context context)
    {
        d1.h(context);
    }

    private void f(Context context)
    {
        if (!i)
        {
            b = context.getApplicationContext();
            g = new o(b);
            h = l.a(b);
            i = true;
        }
    }

    private void g(Context context)
    {
        f.c(context);
        if (c != null)
        {
            c.a();
        }
    }

    private void h(Context context)
    {
        f.d(context);
        e.a(context);
        if (c != null)
        {
            c.b();
        }
        h.b();
    }

    public z a()
    {
        return f;
    }

    public void a(int j)
    {
        AnalyticsConfig.mVerticalType = j;
    }

    void a(Context context)
    {
        if (context == null)
        {
            br.b("MobclickAgent", "unexpected null context in onResume");
            return;
        }
        a.a(context);
        try
        {
            l.a(context).a(a);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    void a(Context context, String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        if (context == null)
        {
            br.b("MobclickAgent", "unexpected null context in reportError");
            return;
        }
        try
        {
            if (!i)
            {
                f(context);
            }
            h.a((new ag(s)).a(false));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    void a(Context context, String s, String s1)
    {
        try
        {
            if (!i)
            {
                f(context);
            }
            com.umeng.analytics.f.a(new g(s, s1) {

                final String a;
                final String b;
                final d c;

                public void a()
                {
                    com.umeng.analytics.d.a(c).a(a, b);
                }

            
            {
                c = d.this;
                a = s;
                b = s1;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    public void a(Context context, String s, String s1, long l1, int j)
    {
        try
        {
            if (!i)
            {
                f(context);
            }
            g.a(s, s1, l1, j);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    public void a(Context context, String s, HashMap hashmap)
    {
        try
        {
            if (!i)
            {
                f(context);
            }
            g.a(s, hashmap);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    void a(Context context, String s, HashMap hashmap, String s1)
    {
        try
        {
            if (!i)
            {
                f(context);
            }
            com.umeng.analytics.f.a(new g(s, hashmap, s1) {

                final String a;
                final HashMap b;
                final String c;
                final d d;

                public void a()
                {
                    com.umeng.analytics.d.a(d).a(a, b, c);
                }

            
            {
                d = d.this;
                a = s;
                b = hashmap;
                c = s1;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    void a(Context context, String s, Map map, long l1)
    {
        try
        {
            if (!i)
            {
                f(context);
            }
            g.a(s, map, l1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    void a(Context context, Throwable throwable)
    {
        if (context == null || throwable == null)
        {
            return;
        }
        try
        {
            if (!i)
            {
                f(context);
            }
            h.a((new ag(throwable)).a(false));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    public void a(c c1)
    {
        c = c1;
    }

    void a(UmengOnlineConfigureListener umengonlineconfigurelistener)
    {
        a.a(umengonlineconfigurelistener);
    }

    void a(String s)
    {
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        e.a(s);
        return;
        s;
        s.printStackTrace();
        return;
    }

    public void a(String s, String s1)
    {
        AnalyticsConfig.mWrapperType = s;
        AnalyticsConfig.mWrapperVersion = s1;
    }

    public void a(Throwable throwable)
    {
        try
        {
            e.a();
            if (b == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            br.a("MobclickAgent", "Exception in onAppCrash", throwable);
            return;
        }
        if (throwable == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        if (h != null)
        {
            h.b(new ag(throwable));
        }
        h(b);
        x.a(b).edit().commit();
        com.umeng.analytics.f.a();
        return;
    }

    void b(Context context)
    {
        if (context == null)
        {
            br.b("MobclickAgent", "unexpected null context in onResume");
            return;
        }
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN)
        {
            e.a(context.getClass().getName());
        }
        try
        {
            if (!i)
            {
                f(context);
            }
            com.umeng.analytics.f.a(new g(context) {

                final Context a;
                final d b;

                public void a()
                {
                    com.umeng.analytics.d.a(b, a.getApplicationContext());
                }

            
            {
                b = d.this;
                a = context;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "Exception occurred in Mobclick.onResume(). ", context);
        }
    }

    void b(Context context, String s, String s1)
    {
        try
        {
            com.umeng.analytics.f.a(new g(s, s1) {

                final String a;
                final String b;
                final d c;

                public void a()
                {
                    com.umeng.analytics.d.a(c).b(a, b);
                }

            
            {
                c = d.this;
                a = s;
                b = s1;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    void b(String s)
    {
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        e.b(s);
        return;
        s;
        s.printStackTrace();
        return;
    }

    void c(Context context)
    {
        if (context == null)
        {
            br.b("MobclickAgent", "unexpected null context in onPause");
            return;
        }
        if (AnalyticsConfig.ACTIVITY_DURATION_OPEN)
        {
            e.b(context.getClass().getName());
        }
        try
        {
            if (!i)
            {
                f(context);
            }
            com.umeng.analytics.f.a(new g(context) {

                final Context a;
                final d b;

                public void a()
                {
                    d.b(b, a.getApplicationContext());
                }

            
            {
                b = d.this;
                a = context;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "Exception occurred in Mobclick.onRause(). ", context);
        }
    }

    void c(Context context, String s, String s1)
    {
        try
        {
            com.umeng.analytics.f.a(new g(s, s1) {

                final String a;
                final String b;
                final d c;

                public void a()
                {
                    com.umeng.analytics.d.a(c).c(a, b);
                }

            
            {
                c = d.this;
                a = s;
                b = s1;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    void d(Context context)
    {
        try
        {
            if (!i)
            {
                f(context);
            }
            h.a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "", context);
        }
    }

    void e(Context context)
    {
        try
        {
            e.a();
            h(context);
            x.a(context).edit().commit();
            com.umeng.analytics.f.a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }
}
