// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.d;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.k;
import net.youmi.android.a.b.k.d;
import org.json.JSONObject;

public final class b extends k
{

    public b()
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
        long l;
        long l1;
        h1 = h1.getCacheDir().getAbsolutePath();
        l = d.a();
        l1 = d.b();
        f = a(0);
        jsonobject = new JSONObject();
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        jsonobject.put("a", h1);
        jsonobject.put("b", l);
        jsonobject.put("c", l1);
        f.put("d", jsonobject);
        return f;
        h1;
        return null;
    }
}
