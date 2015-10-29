// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.CheckCodeAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class CheckCodeAuthConn_iWiFi_20 extends HttpUtil
{

    private CheckCodeAuthInterface m_iCallback;

    public CheckCodeAuthConn_iWiFi_20(String s, String s1, String s2, String s3, String s4, CheckCodeAuthInterface checkcodeauthinterface)
    {
        this(s, s1, "APPMOBILE", s2, s3, s4, checkcodeauthinterface);
    }

    public CheckCodeAuthConn_iWiFi_20(String s, String s1, String s2, String s3, String s4, String s5, CheckCodeAuthInterface checkcodeauthinterface)
    {
        m_iCallback = checkcodeauthinterface;
        checkcodeauthinterface = new ArrayList();
        checkcodeauthinterface.add(new DataObject("auth_id", s));
        checkcodeauthinterface.add(new DataObject("auth_code", s1));
        checkcodeauthinterface.add(new DataObject("auth_type", s2));
        checkcodeauthinterface.add(new DataObject("terminal_type", s3));
        checkcodeauthinterface.add(new DataObject("ter_mac", s4));
        checkcodeauthinterface.add(new DataObject("dev_id", s5));
        asyncConnect(iWiFi20_WIFI_HOST, "platform10/login-p.htm", "", checkcodeauthinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        CodeResult coderesult;
        coderesult = GetCodeResultParser.GetCodeResultList(s, "result", null, null);
        if (!s.contains("OK"))
        {
            s = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
            s = (new StringBuilder("{\"result\":\"")).append(s.getResult()).append("\",\"message\":\"").append(s.getMsg()).append("\"}").toString();
            m_iCallback.checkCodeAuthErr(s);
            return;
        }
        try
        {
            s = (new StringBuilder("{\"result\":\"")).append(coderesult.getResult()).append("\"}").toString();
            m_iCallback.checkCodeAuthSucc(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\"}").toString();
        }
        m_iCallback.checkCodeAuthErr(s);
        return;
        s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\"}").toString();
        m_iCallback.checkCodeAuthErr(s);
        return;
    }
}
