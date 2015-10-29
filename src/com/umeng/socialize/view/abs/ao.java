// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.DialogInterface;

class ao
    implements android.content.DialogInterface.OnClickListener
{

    final UserCenterItems.b a;

    ao(UserCenterItems.b b)
    {
        a = b;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        UserCenterItems.b.a(a, true);
        dialoginterface.cancel();
        switch (UserCenterItems.b.a(a))
        {
        default:
            return;

        case 1: // '\001'
            a.a(UserCenterItems.b.b(a));
            return;

        case 2: // '\002'
            a.b(UserCenterItems.b.b(a));
            return;

        case 3: // '\003'
            a.c(UserCenterItems.b.b(a));
            break;
        }
    }
}
