// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view:
//            ci

class cj
    implements android.view.View.OnClickListener
{

    final ci a;

    cj(ci ci1)
    {
        a = ci1;
        super();
    }

    public void onClick(View view)
    {
        if (ci.a.c == ci.a(a))
        {
            a.a();
        } else
        if (ci.a.d == ci.a(a))
        {
            a.b();
            return;
        }
    }
}
