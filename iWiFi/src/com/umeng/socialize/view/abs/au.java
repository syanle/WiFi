// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;
import com.umeng.socialize.bean.SnsPlatform;

class au
    implements android.view.View.OnClickListener
{

    final UserCenterItems.c a;
    private final SnsPlatform b;

    au(UserCenterItems.c c, SnsPlatform snsplatform)
    {
        a = c;
        b = snsplatform;
        super();
    }

    public void onClick(View view)
    {
        a.a(b);
    }
}
