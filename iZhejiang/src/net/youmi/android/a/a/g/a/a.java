// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a;

import android.content.Context;
import android.text.format.Time;
import net.youmi.android.a.b.c.f;
import net.youmi.android.a.b.d.g;

public class a
{

    public static boolean a(Context context, String s)
    {
        boolean flag;
        try
        {
            Object obj = new Time();
            ((Time) (obj)).setToNow();
            obj = ((Time) (obj)).format("%Y-%m-%d");
            flag = f.a(context, g.a((new StringBuilder()).append(((String) (obj))).append(s).append(4).toString()), false);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return flag;
    }

    public static boolean b(Context context, String s)
    {
        boolean flag;
        try
        {
            Object obj = new Time();
            ((Time) (obj)).setToNow();
            obj = ((Time) (obj)).format("%Y-%m-%d");
            flag = f.a(context, g.a((new StringBuilder()).append(((String) (obj))).append(s).append(4).toString()), true, 0x5265c00L);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return flag;
    }
}
