// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import com.umeng.socialize.bean.SnsPlatform;
import com.umeng.socialize.view.controller.UserCenterController;
import com.umeng.socialize.view.wigets.SwitchImageView;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.view.abs:
//            aa, ak

class aj extends UserCenterItems.b
{

    final aa a;

    aj(aa aa1, Context context)
    {
        a = aa1;
        super(context);
    }

    static aa a(aj aj1)
    {
        return aj1.a;
    }

    public void a(SnsPlatform snsplatform)
    {
    }

    protected void a(SnsPlatform snsplatform, boolean flag)
    {
        super.a(snsplatform, flag);
        if (aa.i(a).containsKey(snsplatform))
        {
            ((aa.a)aa.i(a).get(snsplatform)).a.a = false;
        }
        if (!flag)
        {
            aa.a a1 = (aa.a)aa.i(a).get(snsplatform);
            aa.a(a, a1.a, snsplatform.mOauth);
        }
    }

    public void b(SnsPlatform snsplatform)
    {
    }

    public void c(SnsPlatform snsplatform)
    {
        aa.a(a).a(snsplatform, new ak(this, snsplatform));
    }
}
