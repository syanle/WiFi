// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.c.d;

import android.content.Context;
import net.youmi.android.a.b.i.b;
import net.youmi.android.a.b.i.c;
import org.json.JSONObject;

public class a extends net.youmi.android.a.b.i.a.a
{

    public a(Context context, c c, b b, net.youmi.android.a.b.i.a a1, net.youmi.android.a.b.i.a.b b1)
    {
        super(context, c, b, a1, b1);
        try
        {
            super.a.put("pcv", "2");
            super.a.put("appid", net.youmi.android.a.c.c.a.a(context));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
