// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socom.DeviceConfig;

// Referenced classes of package com.umeng.socialize.view.abs:
//            g, j

class i
    implements android.view.View.OnClickListener
{

    final g a;
    private final Handler b;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener c;

    i(g g1, Handler handler, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener)
    {
        a = g1;
        b = handler;
        c = socializeclientlistener;
        super();
    }

    static g a(i k)
    {
        return k.a;
    }

    public void onClick(View view)
    {
        if (DeviceConfig.checkPermission(a.getContext(), "android.permission.ACCESS_NETWORK_STATE") && !DeviceConfig.isOnline(a.getContext()))
        {
            Toast.makeText(a.getContext(), a.getContext().getResources().getString(ResContainer.getResourceId(a.getContext(), com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_network_break_alert")), 1).show();
            return;
        } else
        {
            b.post(new j(this, c));
            return;
        }
    }
}
