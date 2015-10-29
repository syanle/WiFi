// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.a.d;
import com.umeng.analytics.a.f;
import com.umeng.analytics.a.m;
import com.umeng.analytics.a.o;
import com.umeng.common.Log;
import com.umeng.common.util.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.umeng.analytics:
//            d, g, c, k, 
//            j, f

class b extends com.umeng.analytics.d
{
    private final class a
        implements Runnable
    {

        final b a;
        private final Object b = new Object();
        private Context c;
        private int d;

        public void run()
        {
            Object obj = b;
            obj;
            JVM INSTR monitorenter ;
            d;
            JVM INSTR tableswitch 0 1: default 78
        //                       0 35
        //                       1 64;
               goto _L1 _L2 _L3
_L1:
            break; /* Loop/switch isn't completed */
_L3:
            break MISSING_BLOCK_LABEL_64;
_L4:
            return;
_L2:
            b.a(a, c);
              goto _L4
            Exception exception1;
            exception1;
            obj;
            JVM INSTR monitorexit ;
            try
            {
                throw exception1;
            }
            catch (Exception exception)
            {
                Log.b("MobclickAgent", "Exception occurred in invokehander.", exception);
            }
            return;
            b.b(a, c);
              goto _L4
        }

        a(Context context, int l)
        {
            a = b.this;
            super();
            c = context.getApplicationContext();
            d = l;
        }
    }


    public ExecutorService a;
    String b;
    String c;
    private String m;
    private String n;
    private final int o = 0;
    private final int p = 1;
    private final String q = "start_millis";
    private final String r = "end_millis";
    private final String s = "last_fetch_location_time";
    private final long t = 10000L;
    private final int u = 128;
    private final int v = 256;
    private final Stack w = new Stack();
    private final ArrayList x = new ArrayList();

    b()
    {
        a = Executors.newSingleThreadExecutor();
        b = "";
        c = "";
    }

    private String a(Context context, long l)
    {
        String s1;
        StringBuilder stringbuilder;
        if (this.l == null)
        {
            s1 = com.umeng.common.b.q(context);
        } else
        {
            s1 = this.l;
        }
        stringbuilder = new StringBuilder();
        stringbuilder.append(l).append(s1).append(com.umeng.common.util.h.b(com.umeng.common.b.g(context)));
        return com.umeng.common.util.h.a(stringbuilder.toString());
    }

    private void a(Context context, SharedPreferences sharedpreferences)
    {
        long l = System.currentTimeMillis();
        if (g.i && l - sharedpreferences.getLong("last_fetch_location_time", 0L) >= 10000L)
        {
            if ((context = com.umeng.analytics.a.o.a(context, sharedpreferences)) != null)
            {
                context.putLong("last_fetch_location_time", l);
                context.commit();
                return;
            }
        }
    }

    static void a(b b1, Context context)
    {
        b1.j(context);
    }

    private boolean a(SharedPreferences sharedpreferences)
    {
        long l = sharedpreferences.getLong("end_millis", -1L);
        return System.currentTimeMillis() - l > com.umeng.analytics.g.d;
    }

    private String b(Context context, SharedPreferences sharedpreferences)
    {
        long l = System.currentTimeMillis();
        String s1 = a(context, l);
        com.umeng.analytics.a.h h1 = new com.umeng.analytics.a.h(context, s1);
        m m1 = com.umeng.analytics.a.m.a(context);
        d.a(h1);
        d.a(m1);
        sharedpreferences = sharedpreferences.edit();
        sharedpreferences.putString("session_id", s1);
        sharedpreferences.putLong("start_millis", l);
        sharedpreferences.putLong("end_millis", -1L);
        sharedpreferences.commit();
        getClass();
        a(context, 4);
        return s1;
    }

    static void b(b b1, Context context)
    {
        b1.i(context);
    }

    private String c(Context context, SharedPreferences sharedpreferences)
    {
        long l = System.currentTimeMillis();
        context = sharedpreferences.edit();
        context.putLong("start_millis", Long.valueOf(l).longValue());
        context.putLong("end_millis", -1L);
        context.commit();
        return sharedpreferences.getString("session_id", null);
    }

    private void d(Context context, String s1)
    {
        if (com.umeng.analytics.g.m)
        {
            d.a(s1);
            return;
        }
        try
        {
            s1 = k.a(context, s1);
            s1.a(Long.valueOf(System.currentTimeMillis()));
            s1.a(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.a("MobclickAgent", "exception in save event begin info");
        }
        return;
    }

    private int e(Context context, String s1)
    {
        if (!com.umeng.analytics.g.m) goto _L2; else goto _L1
_L1:
        long l = d.b(s1);
_L4:
        if (l <= 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        return (int)(System.currentTimeMillis() - l);
_L2:
        l = k.a(context, s1).a().longValue();
        if (true) goto _L4; else goto _L3
        context;
        Log.a("MobclickAgent", "exception in get event duration", context);
_L3:
        return -1;
    }

    private void h(Context context)
    {
        if (context == null)
        {
            Log.b("MobclickAgent", "unexpected null context in onResume");
            return;
        } else
        {
            m = context.getClass().getName();
            return;
        }
    }

    private void i(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        SharedPreferences sharedpreferences = com.umeng.analytics.j.e(context);
        if (sharedpreferences != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!a(sharedpreferences))
        {
            break MISSING_BLOCK_LABEL_68;
        }
        n = b(context, sharedpreferences);
        Log.a("MobclickAgent", (new StringBuilder()).append("Start new session: ").append(n).toString());
          goto _L1
        context;
        throw context;
        n = c(context, sharedpreferences);
        Log.a("MobclickAgent", (new StringBuilder()).append("Extend current session: ").append(n).toString());
          goto _L1
    }

    private void j(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        SharedPreferences sharedpreferences = com.umeng.analytics.j.e(context);
        if (sharedpreferences != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        long l = sharedpreferences.getLong("start_millis", -1L);
        if (l != -1L)
        {
            break; /* Loop/switch isn't completed */
        }
        Log.b("MobclickAgent", "onEndSession called before onStartSession");
_L4:
        a(context, sharedpreferences);
        a(context, 5);
        if (true) goto _L1; else goto _L3
        context;
        throw context;
_L3:
        android.content.SharedPreferences.Editor editor;
        long l1;
        l1 = System.currentTimeMillis();
        if (!g.j)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        editor = com.umeng.analytics.a.m.a(sharedpreferences, m, l, l1);
_L5:
        editor.putLong("start_millis", -1L);
        editor.putLong("end_millis", l1);
        editor.commit();
          goto _L4
        editor = com.umeng.analytics.a.m.a(sharedpreferences, x, l, l1);
        x.clear();
          goto _L5
    }

    void a(Context context)
    {
        if (context == null)
        {
            try
            {
                Log.b("MobclickAgent", "unexpected null context in onPause");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.b("MobclickAgent", "Exception occurred in Mobclick.onRause(). ", context);
            }
            break MISSING_BLOCK_LABEL_49;
        }
        if (!context.getClass().getName().equals(m))
        {
            Log.b("MobclickAgent", "onPause() called without context from corresponding onResume()");
            return;
        }
        break MISSING_BLOCK_LABEL_50;
        return;
        a.execute(new a(context, 0));
        return;
    }

    void a(Context context, String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            return;
        }
        if (context == null)
        {
            Log.b("MobclickAgent", "unexpected null context in reportError");
            return;
        } else
        {
            d.a(new d(s1));
            e(context);
            return;
        }
    }

    void a(Context context, String s1, String s2)
    {
        if (context == null || !a(s1, 128) || !a(s2, 256))
        {
            Log.b("MobclickAgent", "invalid params in onEventBegin");
            return;
        } else
        {
            d(context, (new StringBuilder()).append("_tl").append(s1).append(s2).toString());
            return;
        }
    }

    void a(Context context, String s1, String s2, long l, int i1)
    {
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        if (a(s1, 128) && i1 > 0)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        try
        {
            Log.b("MobclickAgent", "invalid params in onEvent");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", context);
        }
        break MISSING_BLOCK_LABEL_55;
        if (n == null)
        {
            Log.e("MobclickAgent", "can't call onEvent before session is initialized");
            return;
        }
        break MISSING_BLOCK_LABEL_56;
        return;
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        if (!a(s2, 256))
        {
            Log.b("MobclickAgent", "invalid label in onEvent");
            return;
        }
        d.a(n, s1, s2, l, i1);
        e(context);
        return;
    }

    void a(Context context, String s1, HashMap hashmap, long l)
    {
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_11;
        }
        if (!TextUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_20;
        }
        Log.b("MobclickAgent", "invalid params in onKVEventEnd");
        return;
        try
        {
            if (!a(((Map) (hashmap))))
            {
                break MISSING_BLOCK_LABEL_75;
            }
            if (n == null)
            {
                Log.e("MobclickAgent", "can't call onEvent before session is initialized");
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", context);
            return;
        }
        d.a(n, s1, hashmap, l);
        e(context);
    }

    void a(Context context, String s1, HashMap hashmap, String s2)
    {
        if (context == null || TextUtils.isEmpty(s1) || TextUtils.isEmpty(s2))
        {
            Log.b("MobclickAgent", "invalid params in onKVEventBegin");
        } else
        if (a(((Map) (hashmap))))
        {
            try
            {
                context = (new StringBuilder()).append(s1).append(s2).toString();
                d.a(context, hashmap);
                d.a(context);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("MobclickAgent", "exception in save k-v event begin inof", context);
            }
            return;
        }
    }

    void a(Context context, Throwable throwable)
    {
        if (context == null || throwable == null)
        {
            return;
        } else
        {
            d.a(new d(throwable));
            e(context);
            return;
        }
    }

    void a(String s1)
    {
        try
        {
            w.push(new com.umeng.analytics.f(s1, System.currentTimeMillis()));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
        }
    }

    void a(String s1, String s2)
    {
        e.E = s1;
        e.F = s2;
    }

    boolean a(String s1, int l)
    {
        int i1;
        if (s1 != null)
        {
            if ((i1 = s1.getBytes().length) != 0 && i1 <= l)
            {
                return true;
            }
        }
        return false;
    }

    boolean a(Map map)
    {
        if (map == null || map.isEmpty())
        {
            Log.b("MobclickAgent", "map is null or empty in onEvent");
            return false;
        }
        for (map = map.entrySet().iterator(); map.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
            if (!a((String)entry.getKey(), 128) || !a((String)entry.getValue(), 256))
            {
                Log.b("MobclickAgent", String.format("invalid key-<%s> or value-<%s> ", new Object[] {
                    entry.getKey(), entry.getValue()
                }));
                return false;
            }
        }

        return true;
    }

    void b(Context context)
    {
        try
        {
            h(context);
            ExecutorService executorservice = a;
            getClass();
            executorservice.execute(new a(context, 1));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b("MobclickAgent", "Exception occurred in Mobclick.onResume(). ", context);
        }
    }

    void b(Context context, String s1)
    {
        if (context == null || !a(s1, 128))
        {
            Log.b("MobclickAgent", "invalid params in onEventBegin");
            return;
        } else
        {
            d(context, (new StringBuilder()).append("_t").append(s1).toString());
            return;
        }
    }

    void b(Context context, String s1, String s2)
    {
        if (context == null || TextUtils.isEmpty(s2))
        {
            Log.b("MobclickAgent", "invalid params in onEventEnd");
            return;
        }
        int l = e(context, (new StringBuilder()).append("_tl").append(s1).append(s2).toString());
        if (l < 0)
        {
            Log.b("MobclickAgent", "event duration less than 0 in onEvnetEnd");
            return;
        } else
        {
            a(context, s1, s2, l, 1);
            return;
        }
    }

    public void b(Context context, Throwable throwable)
    {
        try
        {
            d.a(new d(throwable));
            if (!w.isEmpty())
            {
                b(((com.umeng.analytics.f)w.peek()).a);
            }
            j(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.a("MobclickAgent", "Exception in onAppCrash", context);
        }
    }

    void b(String s1)
    {
        if (!w.isEmpty() && ((com.umeng.analytics.f)w.peek()).a.equals(s1))
        {
            s1 = (com.umeng.analytics.f)w.pop();
            s1.b = System.currentTimeMillis() - ((com.umeng.analytics.f) (s1)).b;
            x.add(s1);
            return;
        }
        try
        {
            Log.e("MobclickAgent", "onPageEnd called without 'PageName' from corresponding onPageStart");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
        }
        return;
    }

    void c(Context context)
    {
        try
        {
            getClass();
            a(context, 2);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b("MobclickAgent", "Exception occurred in Mobclick.flush(). ", context);
        }
    }

    void c(Context context, String s1)
    {
        if (context == null || TextUtils.isEmpty(s1))
        {
            Log.a("MobclickAgent", "input Context is null or event_id is empty");
            return;
        }
        int l = e(context, (new StringBuilder()).append("_t").append(s1).toString());
        if (l < 0)
        {
            Log.b("MobclickAgent", "event duration less than 0 in onEventEnd");
            return;
        } else
        {
            a(context, s1, null, l, 1);
            return;
        }
    }

    void c(Context context, String s1, String s2)
    {
        if (context == null || TextUtils.isEmpty(s1) || TextUtils.isEmpty(s2))
        {
            Log.b("MobclickAgent", "invalid params in onKVEventEnd");
            return;
        }
        s2 = (new StringBuilder()).append(s1).append(s2).toString();
        int l = e(context, s2);
        if (l < 0)
        {
            Log.b("MobclickAgent", "event duration less than 0 in onEvnetEnd");
            return;
        } else
        {
            a(context, s1, d.c(s2), l);
            return;
        }
    }

    void d(Context context)
    {
        try
        {
            if (!w.isEmpty())
            {
                b(((com.umeng.analytics.f)w.peek()).a);
            }
            j(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }
}
