// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a;

import net.youmi.android.a.b.b.e;

public class a
{

    private static String a;

    public static final String a()
    {
        return a(a, "417e606d53634d5101080a517928555d");
    }

    protected static String a(String s, String s1)
    {
        return a(s, s1, "android");
    }

    protected static String a(String s, String s1, String s2)
    {
        return a(s, s1, s2, "");
    }

    protected static String a(String s, String s1, String s2, String s3)
    {
        boolean flag;
        try
        {
            if (e.a(s))
            {
                s = net.youmi.android.a.c.a.a.b(s1, s2);
            }
            flag = e.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return s3;
        }
        if (!flag)
        {
            s3 = s;
        }
        return s3;
    }
}
