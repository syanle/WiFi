// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.a;

import java.util.List;
import net.youmi.android.a.b.j.a;

// Referenced classes of package net.youmi.android.a.a.g.a:
//            e

public class f extends a
{

    private static f a;

    public f()
    {
    }

    public static f a()
    {
        net/youmi/android/a/a/g/a/f;
        JVM INSTR monitorenter ;
        f f1;
        if (a == null)
        {
            a = new f();
        }
        f1 = a;
        net/youmi/android/a/a/g/a/f;
        JVM INSTR monitorexit ;
        return f1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, int i, int j)
    {
        List list = g();
        if (list != null && list.size() > 0)
        {
            int k = 0;
            while (k < list.size()) 
            {
                try
                {
                    ((e)list.get(k)).a(s, i, j);
                }
                catch (Throwable throwable) { }
                k++;
            }
        }
    }
}
