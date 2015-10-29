// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.social;

import android.util.Log;

// Referenced classes of package com.umeng.analytics.social:
//            e

public class b
{

    public b()
    {
    }

    public static void a(String s, String s1)
    {
        if (e.v)
        {
            Log.i(s, s1);
        }
    }

    public static void a(String s, String s1, Exception exception)
    {
        if (e.v)
        {
            Log.i(s, (new StringBuilder()).append(exception.toString()).append(":  [").append(s1).append("]").toString());
        }
    }

    public static void b(String s, String s1)
    {
        if (e.v)
        {
            Log.e(s, s1);
        }
    }

    public static void b(String s, String s1, Exception exception)
    {
        if (e.v)
        {
            Log.e(s, (new StringBuilder()).append(exception.toString()).append(":  [").append(s1).append("]").toString());
            s1 = exception.getStackTrace();
            int j = s1.length;
            for (int i = 0; i < j; i++)
            {
                exception = s1[i];
                Log.e(s, (new StringBuilder()).append("        at\t ").append(exception.toString()).toString());
            }

        }
    }

    public static void c(String s, String s1)
    {
        if (e.v)
        {
            Log.d(s, s1);
        }
    }

    public static void c(String s, String s1, Exception exception)
    {
        if (e.v)
        {
            Log.d(s, (new StringBuilder()).append(exception.toString()).append(":  [").append(s1).append("]").toString());
        }
    }

    public static void d(String s, String s1)
    {
        if (e.v)
        {
            Log.v(s, s1);
        }
    }

    public static void d(String s, String s1, Exception exception)
    {
        if (e.v)
        {
            Log.v(s, (new StringBuilder()).append(exception.toString()).append(":  [").append(s1).append("]").toString());
        }
    }

    public static void e(String s, String s1)
    {
        if (e.v)
        {
            Log.w(s, s1);
        }
    }

    public static void e(String s, String s1, Exception exception)
    {
        if (e.v)
        {
            Log.w(s, (new StringBuilder()).append(exception.toString()).append(":  [").append(s1).append("]").toString());
            s1 = exception.getStackTrace();
            int j = s1.length;
            for (int i = 0; i < j; i++)
            {
                exception = s1[i];
                Log.w(s, (new StringBuilder()).append("        at\t ").append(exception.toString()).toString());
            }

        }
    }
}
