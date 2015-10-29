// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.yixin.utils;

import android.os.Message;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.UIHandler;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.yixin.utils:
//            YixinImpl

class e
    implements android.os.Handler.Callback
{

    int a;
    final DeviceHelper b;
    final String c;
    final PlatformActionListener d;
    final Platform e;
    final HashMap f;
    final YixinImpl g;

    e(YixinImpl yixinimpl, DeviceHelper devicehelper, String s, PlatformActionListener platformactionlistener, Platform platform, HashMap hashmap)
    {
        g = yixinimpl;
        b = devicehelper;
        c = s;
        d = platformactionlistener;
        e = platform;
        f = hashmap;
        super();
        a = 0;
    }

    public boolean handleMessage(Message message)
    {
        message = b.getTopTaskPackageName();
        if (c.equals(message)) goto _L2; else goto _L1
_L1:
        if (d != null)
        {
            d.onComplete(e, 9, f);
        }
_L4:
        return true;
_L2:
        if (a < 5)
        {
            a = a + 1;
            UIHandler.sendEmptyMessageDelayed(0, 500L, this);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
