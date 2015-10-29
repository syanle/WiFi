// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.sina.sso.RemoteSSO;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.sso:
//            SinaSsoHandler

class a
    implements ServiceConnection
{

    final SinaSsoHandler a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener b;

    a(SinaSsoHandler sinassohandler, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        a = sinassohandler;
        b = umauthlistener;
        super();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        componentname = com.sina.sso.RemoteSSO.Stub.asInterface(ibinder);
        try
        {
            SinaSsoHandler.access$1(componentname.getPackageName());
            SinaSsoHandler.access$2(componentname.getActivityName());
            if (!SinaSsoHandler.access$4(a, SinaSsoHandler.access$3(a), a.getToken(), new String[0], 5668) && b != null)
            {
                b.onError(new SocializeException("can`t start singel sign on. "), SinaSsoHandler.access$0(a));
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ComponentName componentname)
        {
            componentname.printStackTrace();
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        if (b != null)
        {
            b.onError(new SocializeException("\u65E0\u6CD5\u8FDE\u63A5\u65B0\u6D6A\u5BA2\u6237\u7AEF"), SinaSsoHandler.access$0(a));
        }
    }
}
