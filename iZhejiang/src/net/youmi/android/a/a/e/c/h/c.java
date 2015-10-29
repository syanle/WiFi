// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.h;

import android.content.Context;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.h.e;
import net.youmi.android.a.c.c.b;
import org.json.JSONArray;
import org.json.JSONObject;

public final class c extends l
{

    public c()
    {
    }

    String a(Context context, b b1, String s)
    {
        if (s == null)
        {
            return "";
        }
        if ("a".equals(s))
        {
            return b1.d();
        }
        if ("b".equals(s))
        {
            return b1.c();
        }
        if ("c".equals(s))
        {
            return b1.b();
        }
        if ("d".equals(s))
        {
            return b1.a();
        }
        if ("e".equals(s))
        {
            return e.f(context);
        }
        if (!"f".equals(s))
        {
            break MISSING_BLOCK_LABEL_94;
        }
        context = e.a(context);
        return context;
        context;
        return null;
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        int i;
        i = 0;
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        return a(3);
        f = h1.h();
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        return a(3);
        b b1;
        b1 = new b(f);
        h1 = new JSONObject();
        jsonobject = net.youmi.android.a.b.b.b.a(jsonobject, "a", null);
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
_L1:
        String s;
        String s1;
        int j;
        try
        {
            j = jsonobject.length();
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        s = net.youmi.android.a.b.b.e.b(jsonobject.getString(i));
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        s1 = a(((Context) (f)), b1, s);
        if (s1 != null)
        {
            try
            {
                h1.put(s, s1);
            }
            catch (Throwable throwable) { }
        }
        i++;
          goto _L1
        f = a(0);
        f.put("d", h1);
        return f;
    }
}
