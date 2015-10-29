// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;
import android.widget.Toast;
import com.umeng.socialize.bean.CustomPlatform;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.view.controller.c;
import com.umeng.socom.DeviceConfig;

// Referenced classes of package com.umeng.socialize.view:
//            cf, ce

class ch
    implements android.view.View.OnClickListener
{

    final cf a;
    private final SnsPlatform b;
    private final c c;
    private final com.umeng.socialize.controller.listener.SocializeListeners.DirectShareListener d;

    ch(cf cf1, SnsPlatform snsplatform, c c1, com.umeng.socialize.controller.listener.SocializeListeners.DirectShareListener directsharelistener)
    {
        a = cf1;
        b = snsplatform;
        c = c1;
        d = directsharelistener;
        super();
    }

    public void onClick(View view)
    {
        cf.a(a).dismiss();
        view = SHARE_MEDIA.convertToEmun(b.mKeyword);
        if (!DeviceConfig.isNetworkAvailable(ce.a(cf.a(a))) && view != SHARE_MEDIA.SMS)
        {
            Toast.makeText(ce.a(cf.a(a)), "\u60A8\u7684\u7F51\u7EDC\u4E0D\u53EF\u7528,\u8BF7\u68C0\u67E5\u7F51\u7EDC\u8FDE\u63A5...", 0).show();
            return;
        }
        SocializeConfig.setSelectedPlatfrom(view);
        if (b instanceof CustomPlatform)
        {
            c.a(b, null);
            return;
        } else
        {
            c.a(b, d);
            return;
        }
    }
}
