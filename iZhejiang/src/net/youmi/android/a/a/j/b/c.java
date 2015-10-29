// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.b;


public final class c extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    public static final c d;
    private static final c e[];

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(net/youmi/android/a/a/j/b/c, s);
    }

    public static c[] values()
    {
        return (c[])e.clone();
    }

    static 
    {
        a = new c("RESET", 0);
        b = new c("PULL_TO_REFRESH", 1);
        c = new c("RELEASE_TO_REFRESH", 2);
        d = new c("REFRESHING", 3);
        e = (new c[] {
            a, b, c, d
        });
    }
}
