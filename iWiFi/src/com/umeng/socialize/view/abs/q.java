// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view.abs:
//            p, g

class q
    implements Runnable
{

    final p a;

    q(p p1)
    {
        a = p1;
        super();
    }

    public void run()
    {
        g.h(p.a(a)).setClickable(true);
    }
}
