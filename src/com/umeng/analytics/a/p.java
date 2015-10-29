// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import com.umeng.analytics.j;
import com.umeng.common.Log;
import java.lang.reflect.Method;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            g

public class p
    implements g
{

    private static final String c = "uptr";
    private static final String d = "dntr";
    public long a;
    public long b;

    public p()
    {
        a = 0L;
        b = 0L;
    }

    public static p a(Context context)
    {
        p p1;
        long al[];
        long l;
        long l1;
        try
        {
            p1 = new p();
            al = b(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("MobclickAgent", "sdk less than 2.2 has get no traffic");
            return null;
        }
        if (al[0] > 0L && al[1] > 0L) goto _L2; else goto _L1
_L2:
        context = j.e(context);
        l = context.getLong("uptr", -1L);
        l1 = context.getLong("dntr", -1L);
        context.edit().putLong("uptr", al[1]).putLong("dntr", al[0]).commit();
        break MISSING_BLOCK_LABEL_94;
_L4:
        p1.b = al[0];
        p1.a = al[1];
        return p1;
_L1:
        return null;
        if (l <= 0L || l1 <= 0L)
        {
            return null;
        }
        al[0] = al[0] - l1;
        al[1] = al[1] - l;
        if (al[0] <= 0L || al[1] <= 0L)
        {
            return null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static long[] b(Context context)
        throws Exception
    {
        Object obj = Class.forName("android.net.TrafficStats");
        Method method = ((Class) (obj)).getMethod("getUidRxBytes", new Class[] {
            Integer.TYPE
        });
        obj = ((Class) (obj)).getMethod("getUidTxBytes", new Class[] {
            Integer.TYPE
        });
        int i = context.getApplicationInfo().uid;
        if (i == -1)
        {
            return null;
        } else
        {
            return (new long[] {
                ((Long)method.invoke(null, new Object[] {
                    Integer.valueOf(i)
                })).longValue(), ((Long)((Method) (obj)).invoke(null, new Object[] {
                    Integer.valueOf(i)
                })).longValue()
            });
        }
    }

    public void a(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject != null)
        {
            if (jsonobject.has("uptr"))
            {
                a = jsonobject.getLong("uptr");
            }
            if (jsonobject.has("dntr"))
            {
                b = jsonobject.getLong("dntr");
                return;
            }
        }
    }

    public boolean a()
    {
        return a > 0L && b > 0L;
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        if (a > 0L)
        {
            jsonobject.put("uptr", a);
        }
        if (b > 0L)
        {
            jsonobject.put("dntr", b);
        }
    }
}
