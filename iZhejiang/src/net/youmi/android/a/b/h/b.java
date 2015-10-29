// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.h;

import net.youmi.android.a.b.b.e;

public class b
{

    public static String a(String s)
    {
        return a(s, "UTF-8");
    }

    public static String a(String s, String s1)
    {
        return a(s, null, s1);
    }

    public static String a(String s, String s1, String s2)
    {
        if (e.a(s) || e.a(s2))
        {
            return null;
        }
        if (!e.a(s1))
        {
            s = s.getBytes(s1);
        } else
        {
            s = s.getBytes();
        }
        return a(((byte []) (s)), s2);
    }

    public static String a(byte abyte0[], String s)
    {
        while (abyte0 == null || e.a(s)) 
        {
            return null;
        }
        return new String(abyte0, s);
    }
}
