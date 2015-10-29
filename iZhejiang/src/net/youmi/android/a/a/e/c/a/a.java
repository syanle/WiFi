// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import android.content.pm.PackageInfo;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.k.j;
import org.json.JSONObject;

public final class a extends l
{

    public a()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
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
        String s = b.a(jsonobject, "a", null);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        return a(2);
        PackageInfo packageinfo;
        f = a(0);
        jsonobject = new JSONObject();
        jsonobject.put("a", s);
        packageinfo = j.c(h1, s);
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        jsonobject.put("b", packageinfo.versionCode);
        jsonobject.put("c", packageinfo.versionName);
        jsonobject.put("d", 1);
_L1:
        h1 = net.youmi.android.a.a.g.a.a.a.a(h1).a(g.a(s));
        jsonobject.put("e", h1.e());
        jsonobject.put("f", h1.d());
        f.put("d", jsonobject);
        return f;
        try
        {
            jsonobject.put("d", 0);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
          goto _L1
    }
}
