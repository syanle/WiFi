// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.DialogInterface;

class ap
    implements android.content.DialogInterface.OnClickListener
{

    final UserCenterItems.b a;

    ap(UserCenterItems.b b)
    {
        a = b;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        UserCenterItems.b.a(a, false);
        dialoginterface.cancel();
    }
}
