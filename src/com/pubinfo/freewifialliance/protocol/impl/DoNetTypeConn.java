// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.protocol.impl;

import com.pubinfo.freewifialliance.protocol.DoNetTypeInterface;
import com.pubinfo.wifi_core.core.net.HttpUtil;
import com.pubinfo.wifi_core.core.util.ErrDeal;
import java.util.ArrayList;

public class DoNetTypeConn extends HttpUtil
{

    private DoNetTypeInterface m_iCallback;

    public DoNetTypeConn(String s, DoNetTypeInterface donettypeinterface)
    {
        m_iCallback = donettypeinterface;
        donettypeinterface = new ArrayList();
        asyncConnect((new StringBuilder("http://")).append(s).append(":2060/").toString(), "api-hichina/info", "", donettypeinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (!flag && s != null)
        {
            m_iCallback.doNetTypeSucc();
            return;
        } else
        {
            m_iCallback.doNetTypeErr(ErrDeal.getConnErr(s, flag));
            return;
        }
    }
}
