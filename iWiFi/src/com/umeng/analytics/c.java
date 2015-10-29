// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.util.Log;
import com.umeng.analytics.a.a;
import com.umeng.analytics.a.d;
import com.umeng.analytics.a.e;
import com.umeng.analytics.a.h;
import com.umeng.analytics.a.i;
import com.umeng.analytics.a.m;
import com.umeng.common.b;
import java.util.HashMap;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics:
//            j, k

public class c
{

    private i a;
    private HashMap b;
    private HashMap c;
    private int d;

    public c()
    {
        a = new i();
        b = new HashMap();
        c = new HashMap();
        d = 10;
    }

    public int a()
    {
        return a.b();
    }

    public void a(int l)
    {
        d = l;
    }

    public void a(Context context)
    {
        String s;
        i l;
        if (a() <= 0)
        {
            return;
        }
        s = com.umeng.common.b.d(context);
        JSONObject jsonobject = com.umeng.analytics.j.a(context, s);
        l = new i();
        if (jsonobject != null)
        {
            l.a(jsonobject);
        }
        this;
        JVM INSTR monitorenter ;
        l.a(a);
        a.c();
        this;
        JVM INSTR monitorexit ;
        com.umeng.analytics.j.a(context, l, s);
        return;
        context;
        this;
        JVM INSTR monitorexit ;
        throw context;
    }

    public void a(d d1)
    {
        this;
        JVM INSTR monitorenter ;
        a.a(d1);
        this;
        JVM INSTR monitorexit ;
        return;
        d1;
        throw d1;
    }

    public void a(h h)
    {
        this;
        JVM INSTR monitorenter ;
        a.a(h);
        this;
        JVM INSTR monitorexit ;
        return;
        h;
        throw h;
    }

    public void a(m m)
    {
        this;
        JVM INSTR monitorenter ;
        a.a(m);
        this;
        JVM INSTR monitorexit ;
        return;
        m;
        throw m;
    }

    public void a(String s)
    {
        if (b.containsKey(s))
        {
            ((k)b.get(s)).a(Long.valueOf(System.currentTimeMillis()));
            return;
        } else
        {
            k k1 = new k(s);
            k1.a(Long.valueOf(System.currentTimeMillis()));
            b.put(s, k1);
            return;
        }
    }

    public void a(String s, String s1, String s2, long l, int i1)
    {
        this;
        JVM INSTR monitorenter ;
        a.a(new e(s, s1, s2, i1, l));
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void a(String s, String s1, HashMap hashmap, long l)
    {
        this;
        JVM INSTR monitorenter ;
        a.a(s, new a(s1, hashmap, l));
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public void a(String s, HashMap hashmap)
    {
        if (!c.containsKey(s))
        {
            c.put(s, hashmap);
        }
    }

    public long b(String s)
    {
        if (b.containsKey(s))
        {
            return ((k)b.get(s)).a().longValue();
        } else
        {
            return -1L;
        }
    }

    public void b(Context context)
    {
        i l;
        context = com.umeng.analytics.j.a(context, com.umeng.common.b.d(context));
        if (context == null || context.length() == 0)
        {
            return;
        }
        l = new i();
        l.a(context);
        this;
        JVM INSTR monitorenter ;
        a.a(l);
        this;
        JVM INSTR monitorexit ;
        return;
        context;
        this;
        JVM INSTR monitorexit ;
        throw context;
    }

    public boolean b()
    {
        return a.b() > d;
    }

    public HashMap c(String s)
    {
        if (b.containsKey(s) && ((k)b.get(s)).b() > 0)
        {
            return (HashMap)c.get(s);
        } else
        {
            return (HashMap)c.remove(s);
        }
    }

    public boolean c()
    {
        return a.a();
    }

    public JSONObject d()
    {
        this;
        JVM INSTR monitorenter ;
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        a.b(jsonobject);
_L2:
        this;
        JVM INSTR monitorexit ;
        return jsonobject;
        Object obj;
        obj;
        Log.d("MobclickAgent", "", ((Throwable) (obj)));
        obj = null;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        throw obj;
    }

    public void e()
    {
        this;
        JVM INSTR monitorenter ;
        a.c();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
