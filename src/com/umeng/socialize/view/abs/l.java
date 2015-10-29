// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view.abs:
//            k, g

class l
    implements Runnable
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public void run()
    {
        g.d(k.a(a)).setClickable(true);
    }
}
