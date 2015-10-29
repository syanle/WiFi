// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.os.Message;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.UIHandler;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            g, AuthorizeHelper

class j extends Thread
{

    final g a;

    j(g g1)
    {
        a = g1;
        super();
    }

    public void run()
    {
        Message message;
        message = new Message();
        message.what = 2;
        if ("none".equals(DeviceHelper.getInstance(g.a(a)).getDetailNetworkTypeForStatic()))
        {
            message.arg1 = 1;
            UIHandler.sendMessage(message, a);
            return;
        }
        try
        {
            if (ShareSDK.isRemoveCookieOnAuthorize())
            {
                CookieSyncManager.createInstance(g.b(a));
                CookieManager.getInstance().removeAllCookie();
            }
            message.obj = a.a.getAuthorizeUrl();
            UIHandler.sendMessage(message, a);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.e(throwable);
        }
        return;
    }
}
