// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.f;

import android.app.NotificationManager;
import android.content.Context;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

public final class c extends l
{

    public c()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 == null)
        {
            return null;
        }
        int i;
        try
        {
            h1 = h1.h();
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (h1 == null)
        {
            return null;
        }
        i = b.a(jsonobject, "a", 0);
        ((NotificationManager)h1.getSystemService("notification")).cancel(i);
        h1 = a(0);
        return h1;
    }
}
