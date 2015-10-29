// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.widget.Toast;
import com.umeng.socialize.common.ResContainer;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aa

class ag
    implements com.umeng.socialize.view.controller.UserCenterController.ASYNCListener
{

    final aa a;

    ag(aa aa1)
    {
        a = aa1;
        super();
    }

    public void a()
    {
    }

    public void a(com.umeng.socom.net.o.a a1)
    {
        if (a1 == com.umeng.socom.net.o.a.a)
        {
            a.a();
            return;
        } else
        {
            Toast.makeText(a.getContext(), ResContainer.getResourceId(aa.k(a), com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_login_fail"), 0).show();
            return;
        }
    }
}
