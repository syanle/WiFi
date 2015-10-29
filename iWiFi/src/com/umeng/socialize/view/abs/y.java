// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socom.Log;

// Referenced classes of package com.umeng.socialize.view.abs:
//            SocializeBaseView

class y
    implements SocializeBaseView.SocializeInitListener
{

    final SocializeBaseView a;

    y(SocializeBaseView socializebaseview)
    {
        a = socializebaseview;
        super();
    }

    public void a(Context context, UMSocialService umsocialservice)
    {
        a.onViewLoad(a.b);
    }

    public void a(SocializeException socializeexception)
    {
        Log.e("com.umeng.view.SocialView", "Error initializing Socialize", socializeexception);
        a.onViewLoad(null);
    }
}
