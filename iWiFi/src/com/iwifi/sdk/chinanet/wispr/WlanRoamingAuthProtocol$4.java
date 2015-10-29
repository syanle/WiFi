// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;


// Referenced classes of package com.iwifi.sdk.chinanet.wispr:
//            WlanRoamingAuthProtocol

class val.logoff_url extends Thread
{

    final WlanRoamingAuthProtocol this$0;
    private final String val$logoff_url;
    private final String val$username;

    public void run()
    {
        super.run();
        sultInfos sultinfos = new sultInfos(WlanRoamingAuthProtocol.this);
        sultinfos.userName = val$username;
        try
        {
            WlanRoamingAuthProtocol.access$2(WlanRoamingAuthProtocol.this, 100);
            tInfos tinfos = HandleHttpRequest(val$logoff_url, null, .GET);
            WlanRoamingAuthProtocol.access$2(WlanRoamingAuthProtocol.this, 0);
            WlanRoamingAuthProtocol.access$4(WlanRoamingAuthProtocol.this, 1, sultinfos, tinfos, null);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            WlanRoamingAuthProtocol.access$2(WlanRoamingAuthProtocol.this, 0);
            WlanRoamingAuthProtocol.access$4(WlanRoamingAuthProtocol.this, 1, sultinfos, null, exception);
            return;
        }
    }

    ()
    {
        this$0 = final_wlanroamingauthprotocol;
        val$username = s;
        val$logoff_url = String.this;
        super();
    }
}
