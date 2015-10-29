// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.d;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.k;
import net.youmi.android.a.b.k.n;
import org.json.JSONObject;

public final class a extends k
{

    public a()
    {
    }

    protected JSONObject a(h h1, f f)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        f = h1.h();
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        return a(3);
        JSONObject jsonobject;
        long l;
        long l1;
        boolean flag;
        boolean flag1;
        h1 = n.c();
        l = n.b();
        l1 = n.b(f);
        flag = n.a();
        flag1 = n.a(f);
        f = a(0);
        jsonobject = new JSONObject();
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        jsonobject.put("a", h1);
        jsonobject.put("b", l);
        jsonobject.put("c", l1);
        jsonobject.put("d", flag);
        jsonobject.put("e", flag1);
        f.put("d", jsonobject);
        return f;
        h1;
        return null;
    }
}
