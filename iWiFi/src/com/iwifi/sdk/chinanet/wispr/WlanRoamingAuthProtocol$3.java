// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;


// Referenced classes of package com.iwifi.sdk.chinanet.wispr:
//            WlanRoamingAuthProtocol

class val.request_url extends Thread
{

    final WlanRoamingAuthProtocol this$0;
    private final String val$btn_identify;
    private final String val$fname;
    private final String val$login_lat_service;
    private final String val$org_server;
    private final String val$password;
    private final String val$request_url;
    private final String val$username;

    public void run()
    {
        super.run();
        sultInfos sultinfos = new sultInfos(WlanRoamingAuthProtocol.this);
        sultinfos.userName = val$username;
        try
        {
            WlanRoamingAuthProtocol.access$2(WlanRoamingAuthProtocol.this, 1);
            Object obj = WlanRoamingAuthProtocol.access$3(WlanRoamingAuthProtocol.this, val$username, val$password, val$btn_identify, val$fname, val$org_server, val$login_lat_service);
            obj = HandleHttpRequest(val$request_url, ((org.apache.http.HttpEntity) (obj)), .GET);
            WlanRoamingAuthProtocol.access$2(WlanRoamingAuthProtocol.this, 0);
            WlanRoamingAuthProtocol.access$4(WlanRoamingAuthProtocol.this, 0, sultinfos, ((tInfos) (obj)), null);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            WlanRoamingAuthProtocol.access$2(WlanRoamingAuthProtocol.this, 0);
            WlanRoamingAuthProtocol.access$4(WlanRoamingAuthProtocol.this, 0, sultinfos, null, exception);
            return;
        }
    }

    ()
    {
        this$0 = final_wlanroamingauthprotocol;
        val$username = s;
        val$password = s1;
        val$btn_identify = s2;
        val$fname = s3;
        val$org_server = s4;
        val$login_lat_service = s5;
        val$request_url = String.this;
        super();
    }
}
