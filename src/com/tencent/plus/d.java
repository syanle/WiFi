// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;


// Referenced classes of package com.tencent.plus:
//            e, a

class d
    implements Runnable
{

    final e a;

    d(e e1)
    {
        a = e1;
        super();
    }

    public void run()
    {
        a.a.clearAnimation();
        com.tencent.plus.a.a(a.a);
    }
}
