// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.a;

import java.util.List;

// Referenced classes of package net.youmi.android.a.a.j.a:
//            a, b

class e
    implements Runnable
{

    final List a;
    final int b;
    final b c;

    e(b b1, List list, int i)
    {
        c = b1;
        a = list;
        b = i;
        super();
    }

    public void run()
    {
        int i = 0;
        while (i < a.size()) 
        {
            try
            {
                ((a)a.get(i)).b(b);
            }
            catch (Throwable throwable) { }
            i++;
        }
    }
}
