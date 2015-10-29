// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import android.content.Context;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.k;
import net.youmi.android.a.b.k.j;
import net.youmi.android.a.c.c.a;
import org.json.JSONObject;

public class n extends k
{

    public n()
    {
    }

    protected JSONObject a(h h1, f f)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        h1 = h1.h();
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        return a(3);
        JSONObject jsonobject;
        JSONObject jsonobject1;
        f = a(0);
        jsonobject = new JSONObject();
        jsonobject1 = new JSONObject();
        jsonobject1.put("pn", h1.getPackageName());
        jsonobject1.put("vc", net.youmi.android.a.c.c.a.f(h1));
        jsonobject1.put("vn", net.youmi.android.a.c.c.a.e(h1));
        net.youmi.android.a.b.k.a a1 = j.b(h1, h1.getPackageName());
        if (a1 != null)
        {
            try
            {
                jsonobject1.put("an", a1.a());
            }
            catch (Throwable throwable) { }
        }
        try
        {
            jsonobject.put("a", jsonobject1);
            jsonobject1 = new JSONObject();
            jsonobject1.put("aid", net.youmi.android.a.c.c.a.a(h1));
            jsonobject1.put("chn", net.youmi.android.a.c.c.a.g(h1));
            jsonobject.put("b", jsonobject1);
            f.put("d", jsonobject);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        return f;
    }
}
