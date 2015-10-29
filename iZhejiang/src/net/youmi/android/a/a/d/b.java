// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.d;

import android.content.Context;
import net.youmi.android.a.b.g.c.a;

public class b extends net.youmi.android.a.b.g.b
{

    private static b a;

    private b(Context context, a a1)
    {
        super(context, a1);
    }

    public static b a(Context context)
    {
        try
        {
            if (a == null)
            {
                context = context.getApplicationContext();
                a = new b(context, net.youmi.android.a.a.d.a.b.a(context, 1));
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        return a;
    }
}
