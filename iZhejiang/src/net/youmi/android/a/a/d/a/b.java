// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.d.a;

import android.content.Context;

// Referenced classes of package net.youmi.android.a.a.d.a:
//            a

public final class b
{

    private static a a;
    private static a b;
    private static a c;
    private static a d;
    private static a e;

    public static a a(Context context)
    {
        if (d == null)
        {
            try
            {
                d = new a(context.getFilesDir(), -1L, -1L);
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        return d;
    }

    public static a a(Context context, int i)
    {
        if (c == null)
        {
            try
            {
                c = new a(net.youmi.android.a.a.d.a.a.a(".C2655DBDD5C7328BA5EF149B2A8261A0"), 0x6400000L, 0x9a7ec800L);
            }
            catch (Throwable throwable) { }
        }
        return net.youmi.android.a.a.d.a.a.a(context, c, b(context), i, 0xa00000L);
    }

    public static a b(Context context)
    {
        if (e == null)
        {
            try
            {
                e = new a(context.getCacheDir(), -1L, -1L);
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        return e;
    }

    public static a b(Context context, int i)
    {
        if (a == null)
        {
            try
            {
                a = new a(net.youmi.android.a.a.d.a.a.a(".ECDF5D7F3EB26A54256D1994F72EEB4D"), 0x12c00000L, 0x4d3f6400L);
            }
            catch (Throwable throwable) { }
        }
        return net.youmi.android.a.a.d.a.a.a(context, a, b(context), i, 0x6400000L);
    }

    public static a c(Context context, int i)
    {
        if (b == null)
        {
            try
            {
                b = new a(net.youmi.android.a.a.d.a.a.a(".CCFFFA1D25C44B08BC24C3C6D8D6666F"), 0x12c00000L, 0x19bfcc00L);
            }
            catch (Throwable throwable) { }
        }
        return net.youmi.android.a.a.d.a.a.a(context, b, a(context), i, 0x6400000L);
    }
}
