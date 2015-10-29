// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.protocol.CheckCodeAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            SDKCommonMotheds

public class CheckCodeAuthConn_iWiFi_20 extends HttpUtil
{

    private CheckCodeAuthInterface m_iCallback;

    public CheckCodeAuthConn_iWiFi_20(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            CheckCodeAuthInterface checkcodeauthinterface)
    {
        this(s, s1, "APPMOBILE", s2, s3, s4, s5, s6, checkcodeauthinterface);
    }

    public CheckCodeAuthConn_iWiFi_20(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, CheckCodeAuthInterface checkcodeauthinterface)
    {
        s7 = SDKCommonMotheds.getSign((new StringBuilder("auth_id=")).append(s).append("&auth_code=").append(s1).append("&auth_type=").append(s2).append("&terminal_type=").append(s3).append("&ter_mac=").append(s4).append("&dev_id=").append(s5).append("&appkey=").append(s6).append("&secret=").append(s7).toString());
        m_iCallback = checkcodeauthinterface;
        checkcodeauthinterface = new ArrayList();
        checkcodeauthinterface.add(new DataObject("auth_id", s));
        checkcodeauthinterface.add(new DataObject("auth_code", s1));
        checkcodeauthinterface.add(new DataObject("auth_type", s2));
        checkcodeauthinterface.add(new DataObject("terminal_type", s3));
        checkcodeauthinterface.add(new DataObject("ter_mac", s4));
        checkcodeauthinterface.add(new DataObject("dev_id", s5));
        checkcodeauthinterface.add(new DataObject("appkey", s6));
        checkcodeauthinterface.add(new DataObject("sign", s7));
        asyncConnect(iWiFi20_WIFI_HOST, "checkcode.html", "", checkcodeauthinterface);
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
            m_iCallback.checkCodeAuthErr(s);
            return;
        }
        try
        {
            m_iCallback.checkCodeAuthSucc(s);
            return;
        }
        catch (Exception exception)
        {
            (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(exception.getMessage()).append("\"}").toString();
        }
        m_iCallback.checkCodeAuthErr(s);
        return;
        (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\"}").toString();
        m_iCallback.checkCodeAuthErr(s);
        return;
    }
}
