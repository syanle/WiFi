// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;


// Referenced classes of package com.tencent.plus:
//            j, ImageActivity

class l
    implements Runnable
{

    final j a;

    l(j j1)
    {
        a = j1;
        super();
    }

    public void run()
    {
        ImageActivity.g(a.a);
    }
}
