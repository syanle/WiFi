// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import net.youmi.android.a.a.a.b.b;
import net.youmi.android.a.a.a.b.c;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            k

public class l extends b
{

    private static l a;

    public l()
    {
    }

    public static l b()
    {
        net/youmi/android/a/a/g/c/l;
        JVM INSTR monitorenter ;
        l l1;
        Exception exception;
        try
        {
            if (a == null)
            {
                a = new l();
            }
        }
        catch (Throwable throwable) { }
        l1 = a;
        net/youmi/android/a/a/g/c/l;
        JVM INSTR monitorexit ;
        return l1;
        exception;
        throw exception;
    }

    protected c a()
    {
        return new k();
    }
}
