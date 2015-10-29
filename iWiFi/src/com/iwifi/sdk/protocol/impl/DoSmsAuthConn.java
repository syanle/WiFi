// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.protocol.DoSmsAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class DoSmsAuthConn extends HttpUtil
{

    private DoSmsAuthInterface m_iCallback;

    public DoSmsAuthConn(String s, DoSmsAuthInterface dosmsauthinterface)
    {
        m_iCallback = dosmsauthinterface;
        dosmsauthinterface = new ArrayList();
        dosmsauthinterface.add(new DataObject("phone", s));
        asyncConnect("http://www.hichinawifi.com/wifiapp/", "sms", "", dosmsauthinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (!flag && s != null)
        {
            if (s.contains("ok"))
            {
                m_iCallback.doSmsAuthSucc(s);
                return;
            } else
            {
                m_iCallback.doSmsAuthErr(s);
                return;
            }
        } else
        {
            m_iCallback.doSmsAuthErr(ErrDeal.getConnErr(s, flag));
            return;
        }
    }
}
