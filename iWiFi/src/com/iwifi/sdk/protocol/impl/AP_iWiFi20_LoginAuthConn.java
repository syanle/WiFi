// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.DoLoginAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class AP_iWiFi20_LoginAuthConn extends HttpUtil
{

    private DoLoginAuthInterface m_iCallback;

    public AP_iWiFi20_LoginAuthConn(String s, String s1, String s2, String s3, String s4, String s5, DoLoginAuthInterface dologinauthinterface)
    {
        m_iCallback = dologinauthinterface;
        dologinauthinterface = new ArrayList();
        dologinauthinterface.add(new DataObject("phone", s1));
        dologinauthinterface.add(new DataObject("token", s2));
        dologinauthinterface.add(new DataObject("dev_type", s3));
        dologinauthinterface.add(new DataObject("dev_id", s4));
        dologinauthinterface.add(new DataObject("url", s5));
        asyncConnect((new StringBuilder("http://")).append(s).append(":2060/").toString(), "smartwifi/auth", "", dologinauthinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        s = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
        if (s.getMsg() == null || !s.getMsg().contains(iWiFi20_AUTHEN_STR))
        {
            m_iCallback.doLoginAuthErr("{\"result\":\"FAIL\",\"message\":\"\u8BA4\u8BC1\u5931\u8D25\"}");
            return;
        }
        try
        {
            m_iCallback.doLoginAuthSucc("{\"result\":\"OK\",\"message\":\"\u8BA4\u8BC1\u6210\u529F\"}");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\"}").toString();
        }
        m_iCallback.doLoginAuthErr(s);
        return;
        s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\"}").toString();
        m_iCallback.doLoginAuthErr(s);
        return;
    }
}
