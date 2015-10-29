// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b;

import android.net.Uri;
import android.os.Build;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package net.youmi.android.b:
//            f, a, e, k

public class b
{

    protected HashMap a;

    public b()
    {
        a = new HashMap();
    }

    public static f a()
    {
        return new f();
    }

    public static a b()
    {
        return new a();
    }

    e a(k k1)
    {
        e e1 = new e();
        e1.a(System.currentTimeMillis());
        Iterator iterator = a.entrySet().iterator();
        StringBuilder stringbuilder = new StringBuilder();
        java.util.Map.Entry entry;
        for (; iterator.hasNext(); stringbuilder.append((String)entry.getKey()).append("=").append(Uri.encode((String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append('&');
            }
        }

        e1.b(stringbuilder.toString());
        e1.a(k1.a());
        return e1;
    }

    protected b c()
    {
        a.put("dv", Build.MODEL);
        return this;
    }

    b c(String s)
    {
        a.put("pt", s);
        return this;
    }

    b d(String s)
    {
        a.put("appid", s);
        return this;
    }

    b e(String s)
    {
        a.put("ver", s);
        return this;
    }

    b f(String s)
    {
        a.put("cid", s);
        return this;
    }
}
