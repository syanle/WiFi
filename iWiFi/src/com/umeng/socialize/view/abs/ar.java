// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Dialog;
import android.view.View;
import com.umeng.socialize.common.SocializeUtils;

class ar
    implements android.view.View.OnClickListener
{

    final UserCenterItems.b a;

    ar(UserCenterItems.b b)
    {
        a = b;
        super();
    }

    public void onClick(View view)
    {
        UserCenterItems.b.a(a, false);
        if (UserCenterItems.b.d(a).isShowing())
        {
            SocializeUtils.safeDismissDialog(UserCenterItems.b.d(a));
        }
    }
}
