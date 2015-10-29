// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;


public final class o extends Enum
{

    public static final o a;
    public static final o b;
    public static final o c;
    private static final o e[];
    final int d;

    private o(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static o valueOf(String s)
    {
        return (o)Enum.valueOf(net/youmi/android/c/a/o, s);
    }

    public static o[] values()
    {
        return (o[])e.clone();
    }

    static 
    {
        a = new o("WAIT_FINISH", 0, 0);
        b = new o("SYNC_DECODER", 1, 1);
        c = new o("COVER", 2, 2);
        e = (new o[] {
            a, b, c
        });
    }
}
