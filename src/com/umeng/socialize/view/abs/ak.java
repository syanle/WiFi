// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.widget.ImageView;
import com.umeng.socialize.bean.SnsPlatform;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aj, aa

class ak
    implements com.umeng.socialize.view.controller.UserCenterController.ASYNCListener
{

    final aj a;
    private final SnsPlatform b;

    ak(aj aj1, SnsPlatform snsplatform)
    {
        a = aj1;
        b = snsplatform;
        super();
    }

    public void a()
    {
    }

    public void a(com.umeng.socom.net.o.a a1)
    {
        aa.a a2;
label0:
        {
            a2 = (aa.a)aa.i(aj.a(a)).get(b);
            if (a2 != null)
            {
                if (a1 != com.umeng.socom.net.o.a.a)
                {
                    break label0;
                }
                a2.c.setImageResource(b.mGrayIcon);
            }
            return;
        }
        aa.a(aj.a(a), a2.a, true);
    }
}
