// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j.a;

import java.util.List;

// Referenced classes of package net.youmi.android.a.a.j.a:
//            a, b

class c
    implements Runnable
{

    final List a;
    final CharSequence b;
    final b c;

    c(b b1, List list, CharSequence charsequence)
    {
        c = b1;
        a = list;
        b = charsequence;
        super();
    }

    public void run()
    {
        int i = 0;
        while (i < a.size()) 
        {
            try
            {
                ((a)a.get(i)).a(b);
            }
            catch (Throwable throwable) { }
            i++;
        }
    }
}
