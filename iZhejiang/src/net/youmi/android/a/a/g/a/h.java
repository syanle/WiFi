// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a;

import net.youmi.android.a.b.d.g;

public class h
{

    private static String a;
    private static String b;

    public static final String a(String s)
    {
        return a(a, "AT3URL", s);
    }

    private static final String a(String s, String s1, String s2)
    {
        String s3 = s;
        if (s == null)
        {
            s3 = g.a((new StringBuilder()).append(s1).append(s2).toString());
        }
        return s3;
    }

    public static final String b(String s)
    {
        return a(b, "agw", s);
    }
}
