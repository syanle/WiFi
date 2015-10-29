// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.parser.GetCodeResultParser;
import com.iwifi.sdk.protocol.CheckCodeAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class CheckCodeAuthConn extends HttpUtil
{

    private CheckCodeAuthInterface m_iCallback;

    public CheckCodeAuthConn(String s, String s1, String s2, String s3, CheckCodeAuthInterface checkcodeauthinterface)
    {
        m_iCallback = checkcodeauthinterface;
        checkcodeauthinterface = new ArrayList();
        checkcodeauthinterface.add(new DataObject("phone", s));
        checkcodeauthinterface.add(new DataObject("code", s1));
        checkcodeauthinterface.add(new DataObject("dev_type", s2));
        checkcodeauthinterface.add(new DataObject("dev_id", s3));
        asyncConnect("http://www.hichinawifi.com/wifiapp/", "checkcode", "", checkcodeauthinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        GetCodeResultParser.GetCodeResultList(s);
        if (!s.contains("ok"))
        {
            m_iCallback.checkCodeAuthErr(s);
            return;
        }
        try
        {
            m_iCallback.checkCodeAuthSucc(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            m_iCallback.checkCodeAuthErr("");
        }
        return;
        m_iCallback.checkCodeAuthErr(ErrDeal.getConnErr(s, flag));
        return;
    }
}
