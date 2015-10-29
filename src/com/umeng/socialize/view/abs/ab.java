// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.view.controller.UserCenterController;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aa

class ab
    implements com.umeng.socialize.view.controller.UserCenterController.OBListener
{

    final aa a;

    ab(aa aa1)
    {
        a = aa1;
        super();
    }

    public void a(com.umeng.socialize.view.controller.UserCenterController.a a1)
    {
        if (a1 == com.umeng.socialize.view.controller.UserCenterController.a.a)
        {
            a.a.setVisibility(0);
            return;
        }
        a1 = aa.a(a).b();
        if (a1 != null)
        {
            a.a(a1);
            a.b();
            aa.b(a).setDisplayedChild(1);
        } else
        {
            if (!TextUtils.isEmpty(SocializeConstants.GUIDENAME))
            {
                aa.c(a).setText(SocializeConstants.GUIDENAME);
                aa.d(a).setText(aa.e(a));
            }
            a.b();
            aa.b(a).setDisplayedChild(0);
        }
        a.a.setVisibility(8);
    }
}
