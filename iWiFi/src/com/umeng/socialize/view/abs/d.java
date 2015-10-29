// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;


// Referenced classes of package com.umeng.socialize.view.abs:
//            c, BaseComentActivity

class d
    implements Runnable
{

    final c a;

    d(c c1)
    {
        a = c1;
        super();
    }

    public void run()
    {
        if (BaseComentActivity.b(c.a(a)))
        {
            BaseComentActivity.a(c.a(a), false);
        }
    }
}
