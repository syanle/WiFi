// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.DialogInterface;

class aq
    implements android.content.DialogInterface.OnCancelListener
{

    final UserCenterItems.b a;

    aq(UserCenterItems.b b)
    {
        a = b;
        super();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        a.a(UserCenterItems.b.b(a), UserCenterItems.b.c(a));
    }
}
