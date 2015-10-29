// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;


class at
    implements SocializeAlertDialog.SwitchListener
{

    final UserCenterItems.b a;

    at(UserCenterItems.b b1)
    {
        a = b1;
        super();
    }

    public void a()
    {
        a.d(UserCenterItems.b.b(a));
    }

    public void b()
    {
        a.a(UserCenterItems.b.b(a), UserCenterItems.b.c(a));
    }
}
