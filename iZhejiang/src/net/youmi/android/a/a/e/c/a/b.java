// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.k.k;
import org.json.JSONArray;
import org.json.JSONObject;

public class b extends l
{

    public b()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        int i = 0;
        if (h1 != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        String s;
        JSONObject jsonobject1;
        try
        {
            f = h1.h();
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (f == null) goto _L1; else goto _L3
_L3:
        jsonobject = net.youmi.android.a.b.b.b.a(jsonobject, "a", null);
        if (jsonobject != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        return a(2);
        h1 = new JSONArray();
_L7:
        if (i >= jsonobject.length()) goto _L5; else goto _L4
_L4:
        s = net.youmi.android.a.b.b.b.a(jsonobject, i, null);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        jsonobject1 = new JSONObject();
        jsonobject1.put("a", s);
        if (!k.a(f, s))
        {
            break MISSING_BLOCK_LABEL_115;
        }
        jsonobject1.put("b", 1);
_L6:
        h1.put(jsonobject1);
        break MISSING_BLOCK_LABEL_158;
        jsonobject1.put("b", 0);
          goto _L6
_L5:
        f = a(0);
        jsonobject = new JSONObject();
        jsonobject.put("a", h1);
        f.put("d", jsonobject);
        return f;
        i++;
          goto _L7
    }
}
