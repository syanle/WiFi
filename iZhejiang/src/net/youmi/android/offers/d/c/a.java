// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.c;

import android.content.Context;

// Referenced classes of package net.youmi.android.offers.d.c:
//            b

public class a
{

    private static b a;

    public static void a()
    {
        a = null;
    }

    public static void a(Context context)
    {
        try
        {
            context = context.getApplicationContext();
            if (a == null)
            {
                a = new b(context);
            }
            a.a();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }
}
