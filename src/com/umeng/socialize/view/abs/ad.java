// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.view.controller.UserCenterController;
import com.umeng.socialize.view.wigets.SwitchImageView;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aa, ae

class ad
    implements com.umeng.socialize.view.wigets.SwitchImageView.OnCheckedChangeListener
{

    final aa a;
    private final SwitchImageView b;
    private final SnsPlatform c;

    ad(aa aa1, SwitchImageView switchimageview, SnsPlatform snsplatform)
    {
        a = aa1;
        b = switchimageview;
        c = snsplatform;
        super();
    }

    static aa a(ad ad1)
    {
        return ad1.a;
    }

    private void a(SnsPlatform snsplatform, SwitchImageView switchimageview, boolean flag)
    {
        if (flag)
        {
            switchimageview.a = true;
            aa.a(a).b(snsplatform, new ae(this, switchimageview, snsplatform));
            return;
        } else
        {
            switchimageview.a = true;
            aa.j(a).a(snsplatform, 3);
            return;
        }
    }

    public void a(boolean flag)
    {
        if (!b.a)
        {
            a(c, b, flag);
        }
    }
}
