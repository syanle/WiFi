// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Vector;

// Referenced classes of package com.umeng.analytics:
//            j

public class k
{

    private static final int b = 4;
    private Vector a;
    private String c;

    public k(String s)
    {
        a = new Vector(4);
        c = s;
    }

    public k(String s, int i)
    {
        c = s;
        if (i < 0)
        {
            a = new Vector(4);
            return;
        } else
        {
            a = new Vector(i);
            return;
        }
    }

    public static k a(Context context, String s)
    {
        return a(s, j.e(context).getString(s, null));
    }

    public static k a(String s, String s1)
    {
        s = new k(s);
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        int i;
        int l;
        s1 = s1.split(",");
        l = s1.length;
        i = 0;
_L6:
        if (i >= l) goto _L1; else goto _L3
_L3:
        String s2 = s1[i].trim();
        if (!TextUtils.isEmpty(s2)) goto _L5; else goto _L4
_L4:
        i++;
          goto _L6
_L5:
        long l1 = Long.parseLong(s2);
        s.a(Long.valueOf(l1));
          goto _L4
        Exception exception;
        exception;
          goto _L4
    }

    public Long a()
    {
        int i = a.size();
        if (i <= 0)
        {
            return Long.valueOf(-1L);
        } else
        {
            return (Long)a.remove(i - 1);
        }
    }

    public void a(Context context)
    {
        String s = toString();
        context = j.e(context).edit();
        if (TextUtils.isEmpty(s))
        {
            context.remove(c).commit();
            return;
        } else
        {
            context.putString(c, s).commit();
            return;
        }
    }

    public void a(Long long1)
    {
        for (; a.size() >= 4; a.remove(0)) { }
        a.add(long1);
    }

    public int b()
    {
        return a.size();
    }

    public String toString()
    {
        int l = a.size();
        if (l <= 0)
        {
            return null;
        }
        StringBuffer stringbuffer = new StringBuffer(4);
        for (int i = 0; i < l; i++)
        {
            stringbuffer.append(a.get(i));
            if (i != l - 1)
            {
                stringbuffer.append(",");
            }
        }

        a.clear();
        return stringbuffer.toString();
    }
}
