// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.iwifi.sdk.chinanet.wispr:
//            WlanRoamingAuthProtocol, IWlanAuthenRequestCallback

class this._cls0 extends Handler
{

    final WlanRoamingAuthProtocol this$0;

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        sultInfos sultinfos = (sultInfos)message.obj;
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            WlanRoamingAuthProtocol.access$0(WlanRoamingAuthProtocol.this).onAuthenticationSuccuess(sultinfos);
            return;

        case 1: // '\001'
            WlanRoamingAuthProtocol.access$0(WlanRoamingAuthProtocol.this).onAuthenticationFailed(sultinfos);
            return;

        case 2: // '\002'
            WlanRoamingAuthProtocol.access$0(WlanRoamingAuthProtocol.this).onLogoffSuccess(sultinfos);
            return;

        case 3: // '\003'
            WlanRoamingAuthProtocol.access$0(WlanRoamingAuthProtocol.this).onLogoffFailed(sultinfos);
            break;
        }
    }

    ()
    {
        this$0 = WlanRoamingAuthProtocol.this;
        super();
    }
}
