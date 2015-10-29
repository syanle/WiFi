// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.GetPortalUrlCallback;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;

public class GetPortalURL extends HttpUtil
{

    private GetPortalUrlCallback m_iCallback;

    public GetPortalURL(GetPortalUrlCallback getportalurlcallback)
    {
        m_iCallback = getportalurlcallback;
        asyncConnect("http://www.baidu.com", "getPortalUrl", "", null);
    }

    public String generateJson(String s, String s1, String s2)
    {
        String s3 = s;
        if (s == null)
        {
            s3 = "";
        }
        s = s1;
        if (s1 == null)
        {
            s = "";
        }
        s1 = s2;
        if (s2 == null)
        {
            s1 = "";
        }
        return (new StringBuilder("{\"result\":\"")).append(s3).append("\",\"message\":\"").append(s).append("\",\"portal_url\":\"").append(s1).append("\"}").toString();
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        s = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
        if (!s.getResult().equals("OK"))
        {
            break MISSING_BLOCK_LABEL_54;
        }
        s = generateJson("OK", "SUCCESS", s.getMsg());
_L1:
        m_iCallback.getPortalUrlCallback(s);
        return;
        try
        {
            s = generateJson("FAIL", s.getMsg(), "");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = generateJson("FAIL", (new StringBuilder("Json error :")).append(s.getMessage()).toString(), "");
            m_iCallback.getPortalUrlCallback(s);
            return;
        }
          goto _L1
        s = generateJson("FAIL", ErrDeal.getConnErr(s, flag), "");
        m_iCallback.getPortalUrlCallback(s);
        return;
    }
}
