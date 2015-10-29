// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.DoSmsAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class DoSmsAuthConn_iWiFi_20 extends HttpUtil
{

    private DoSmsAuthInterface m_iCallback;

    public DoSmsAuthConn_iWiFi_20(String s, String s1, String s2, String s3, DoSmsAuthInterface dosmsauthinterface)
    {
        this(s, s1, "APPMOBILE", s2, s3, dosmsauthinterface);
    }

    public DoSmsAuthConn_iWiFi_20(String s, String s1, String s2, String s3, String s4, DoSmsAuthInterface dosmsauthinterface)
    {
        m_iCallback = dosmsauthinterface;
        dosmsauthinterface = new ArrayList();
        dosmsauthinterface.add(new DataObject("auth_id", s));
        dosmsauthinterface.add(new DataObject("dev_id", s1));
        dosmsauthinterface.add(new DataObject("auth_type", s2));
        dosmsauthinterface.add(new DataObject("ter_mac", s3));
        dosmsauthinterface.add(new DataObject("portal_url", s4));
        asyncConnect(iWiFi20_WIFI_HOST, "platform10/sendcode-p.htm", "", dosmsauthinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        Object obj;
        obj = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
        obj = (new StringBuilder("{\"result\":\"")).append(((CodeResult) (obj)).getResult()).append("\",\"message\":\"").append(((CodeResult) (obj)).getMsg()).append("\"}").toString();
        if (!s.contains("OK"))
        {
            m_iCallback.doSmsAuthErr(((String) (obj)));
            return;
        }
        try
        {
            m_iCallback.doSmsAuthSucc(((String) (obj)));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\"}").toString();
        }
        m_iCallback.doSmsAuthErr(s);
        return;
        s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\"}").toString();
        m_iCallback.doSmsAuthErr(s);
        return;
    }
}
