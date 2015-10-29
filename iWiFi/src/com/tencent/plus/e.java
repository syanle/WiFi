// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;


// Referenced classes of package com.tencent.plus:
//            d, a

class e
    implements Runnable
{

    final a a;

    e(a a1)
    {
        a = a1;
        super();
    }

    public void run()
    {
        try
        {
            Thread.sleep(300L);
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        a.post(new d(this));
        com.tencent.plus.a.a(a, false);
    }
}
