// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.CodeResult;
import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.GetPlatformTokenCallback;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class GetPlatformToken extends HttpUtil
{

    private GetPlatformTokenCallback mCallback;

    public GetPlatformToken(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, GetPlatformTokenCallback getplatformtokencallback)
    {
        mCallback = getplatformtokencallback;
        getplatformtokencallback = new ArrayList();
        getplatformtokencallback.add(new DataObject("auth_id", s));
        getplatformtokencallback.add(new DataObject("auth_unqid", s1));
        getplatformtokencallback.add(new DataObject("auth_type", s2));
        getplatformtokencallback.add(new DataObject("ter_mac", s3));
        getplatformtokencallback.add(new DataObject("ter_ip", s4));
        getplatformtokencallback.add(new DataObject("terminal_type", s5));
        getplatformtokencallback.add(new DataObject("imei", s6));
        getplatformtokencallback.add(new DataObject("dev_id", s7));
        getplatformtokencallback.add(new DataObject("platform_code", s8));
        getplatformtokencallback.add(new DataObject("portal_url", s9));
        asyncConnect(iWiFi20_WIFI_HOST, "platform10/token.htm", "", getplatformtokencallback);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        CodeResult coderesult;
        coderesult = GetCodeResultParser.GetCodeResultList(s, "result", "message", null);
        if (!coderesult.getResult().contains("OK"))
        {
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(coderesult.getMsg()).append("\",\"token\":\"").append("\"\"").append("\",\"appauth_type\":\"").append("\"\"").append("\"}").toString();
            mCallback.getTokenCallback(s);
            return;
        }
        try
        {
            s = GetCodeResultParser.GetCodeResultList(s, "result", "message", "token", "appauth_type");
            s = (new StringBuilder("{\"result\":\"OK\",\"message\":\"")).append(coderesult.getMsg()).append("\",\"token\":\"").append(s.getData()).append("\",\"appauth_type\":\"").append(s.getData1()).append("\"}").toString();
            mCallback.getTokenCallback(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\",\"token\":\"").append("\"\"").append("\",\"appauth_type\":\"").append("\"\"").append("\"}").toString();
        }
        mCallback.getTokenCallback(s);
        return;
        s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\",\"token\":\"").append("\"\"").append("\",\"appauth_type\":\"").append("\"\"").append("\"}").toString();
        mCallback.getTokenCallback(s);
        return;
    }
}
