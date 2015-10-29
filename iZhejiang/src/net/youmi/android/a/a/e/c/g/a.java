// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.g;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.k;
import org.json.JSONObject;

public final class a extends k
{

    public a()
    {
    }

    protected JSONObject a(h h1, f f)
    {
        try
        {
            f = a(0);
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("a", 0x780d0a35);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("a", h1.l());
            jsonobject1.put("b", h1.k());
            jsonobject.put("b", jsonobject1);
            jsonobject.put("c", h1.m());
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
