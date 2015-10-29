// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.c;

import android.content.Context;

// Referenced classes of package net.youmi.android.a.b.c:
//            i, g

public class f
{

    private static i a;

    public static String a(Context context)
    {
        return (new StringBuilder()).append("/data/data/").append(context.getPackageName()).append("/databases/").append("jqIqJYOT3JpT").toString();
    }

    public static String a(Context context, String s, String s1)
    {
        try
        {
            b(context);
            context = a.a(s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return s1;
        }
        return context;
    }

    public static boolean a(Context context, String s, String s1, long l)
    {
        boolean flag;
        try
        {
            b(context);
            flag = a.a(s, s1, l);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        return flag;
    }

    public static boolean a(Context context, String s, boolean flag)
    {
        boolean flag1;
        try
        {
            b(context);
            context = a.a(s, null);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return flag;
        }
        if (context == null)
        {
            return flag;
        }
        if ("1".equals(context))
        {
            return true;
        }
        flag1 = "0".equals(context);
label0:
        {
            if (flag1)
            {
                return false;
            }
            break label0;
        }
    }

    public static boolean a(Context context, String s, boolean flag, long l)
    {
        try
        {
            b(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if (flag)
        {
            context = "1";
        } else
        {
            context = "0";
        }
        return a.a(s, context, l);
    }

    private static void b(Context context)
    {
        net/youmi/android/a/b/c/f;
        JVM INSTR monitorenter ;
        try
        {
            if (a == null)
            {
                a = new i("R42ga7hZ", g.f(context));
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        finally
        {
            net/youmi/android/a/b/c/f;
        }
        return;
        throw context;
    }
}
