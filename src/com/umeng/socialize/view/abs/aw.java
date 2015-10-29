// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.view.View;
import com.umeng.socialize.common.SocializeUtils;

class aw
    implements android.view.View.OnClickListener
{

    final UserCenterItems.c a;

    aw(UserCenterItems.c c)
    {
        a = c;
        super();
    }

    public void onClick(View view)
    {
        if (a.a.isShowing())
        {
            SocializeUtils.safeDismissDialog(a.a);
        }
    }
}
