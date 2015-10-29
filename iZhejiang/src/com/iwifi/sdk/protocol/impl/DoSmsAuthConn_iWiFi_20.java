// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.protocol.DoSmsAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            SDKCommonMotheds

public class DoSmsAuthConn_iWiFi_20 extends HttpUtil
{

    private DoSmsAuthInterface m_iCallback;

    public DoSmsAuthConn_iWiFi_20(String s, String s1, String s2, String s3, String s4, String s5, DoSmsAuthInterface dosmsauthinterface)
    {
        this(s, s1, "APPMOBILE", s2, s3, s4, s5, dosmsauthinterface);
    }

    public DoSmsAuthConn_iWiFi_20(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            DoSmsAuthInterface dosmsauthinterface)
    {
        s6 = SDKCommonMotheds.getSign((new StringBuilder("auth_id=")).append(s).append("&dev_id=").append(s1).append("&auth_type=").append(s2).append("&ter_mac=").append(s3).append("&portal_url=").append(s4).append("&appkey=").append(s5).append("&secret=").append(s6).toString());
        m_iCallback = dosmsauthinterface;
        dosmsauthinterface = new ArrayList();
        dosmsauthinterface.add(new DataObject("auth_id", s));
        dosmsauthinterface.add(new DataObject("dev_id", s1));
        dosmsauthinterface.add(new DataObject("auth_type", s2));
        dosmsauthinterface.add(new DataObject("ter_mac", s3));
        dosmsauthinterface.add(new DataObject("portal_url", URLEncoder.encode(s4)));
        dosmsauthinterface.add(new DataObject("appkey", s5));
        dosmsauthinterface.add(new DataObject("sign", s6));
        asyncConnect(iWiFi20_WIFI_HOST, "sendcode.html", "", dosmsauthinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        if (!s.contains("OK"))
        {
            m_iCallback.doSmsAuthErr(s);
            return;
        }
        try
        {
            m_iCallback.doSmsAuthSucc(s);
            return;
        }
        catch (Exception exception)
        {
            (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(exception.getMessage()).append("\"}").toString();
        }
        m_iCallback.doSmsAuthErr(s);
        return;
        (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\"}").toString();
        m_iCallback.doSmsAuthErr(s);
        return;
    }
}
