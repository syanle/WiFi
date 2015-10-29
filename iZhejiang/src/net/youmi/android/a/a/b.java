// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a;

import android.content.Context;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.g;

public class b
{

    private static Context a;
    private static String b;

    public static final String a(Context context)
    {
        return a(context, b, "android", "userdata");
    }

    protected static String a(Context context, String s, String s1, String s2)
    {
        boolean flag;
        try
        {
            s1 = a;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s2;
        }
        if (s1 == null)
        {
            try
            {
                a = context.getApplicationContext();
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        if (a == null)
        {
            return s2;
        }
        if (!e.a(s))
        {
            break MISSING_BLOCK_LABEL_82;
        }
        context = g.a((new StringBuilder()).append("android").append(a.getPackageName()).append(s2).toString());
_L1:
        flag = e.a(context);
        if (!flag)
        {
            return context;
        } else
        {
            return s2;
        }
        context = s;
          goto _L1
    }
}
