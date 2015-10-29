// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;

class av
    implements android.view.View.OnClickListener
{

    final UserCenterItems.c a;

    av(UserCenterItems.c c)
    {
        a = c;
        super();
    }

    public void onClick(View view)
    {
        a.a(null);
    }
}
