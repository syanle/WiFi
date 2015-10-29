// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.view.View;
import android.widget.ImageView;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.view.wigets.SwitchImageView;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.view.abs:
//            ad, aa

class ae
    implements com.umeng.socialize.view.controller.UserCenterController.ASYNCListener
{

    final ad a;
    private final SwitchImageView b;
    private final SnsPlatform c;

    ae(ad ad1, SwitchImageView switchimageview, SnsPlatform snsplatform)
    {
        a = ad1;
        b = switchimageview;
        c = snsplatform;
        super();
    }

    public void a()
    {
        ad.a(a).a.setVisibility(0);
    }

    public void a(com.umeng.socom.net.o.a a1)
    {
        ad.a(a).a.setVisibility(8);
        b.a = false;
        if (a1 == com.umeng.socom.net.o.a.a)
        {
            ((aa.a)aa.i(ad.a(a)).get(c)).c.setImageResource(c.mIcon);
            ad.a(a).a();
            return;
        } else
        {
            aa.a(ad.a(a), b, false);
            return;
        }
    }
}
