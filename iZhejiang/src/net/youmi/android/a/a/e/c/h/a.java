// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.h;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import org.json.JSONArray;
import org.json.JSONObject;

public final class a extends l
{

    public a()
    {
    }

    protected JSONObject a(h h, f f, JSONObject jsonobject)
    {
        int i = 0;
        int j;
        try
        {
            h = new JSONObject();
            f = b.a(jsonobject, "a", null);
        }
        // Misplaced declaration of an exception variable
        catch (h h)
        {
            return null;
        }
        if (f == null) goto _L2; else goto _L1
_L1:
        j = f.length();
        if (i >= j) goto _L2; else goto _L3
_L3:
        jsonobject = f.getString(i);
        if (jsonobject != null)
        {
            try
            {
                h.put(jsonobject, null);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject) { }
        }
        i++;
        if (true) goto _L1; else goto _L2
_L2:
        f = a(0);
        f.put("d", h);
        return f;
    }
}
