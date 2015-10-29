// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.view.View;
import com.umeng.socialize.view.ce;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class w
    implements android.view.View.OnClickListener
{

    final c a;

    w(c c1)
    {
        a = c1;
        super();
    }

    public void onClick(View view)
    {
        c.d(a).dismiss();
    }
}
