// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.protocol.DoLoginAuthInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class DoLoginAuthConn extends HttpUtil
{

    private DoLoginAuthInterface m_iCallback;

    public DoLoginAuthConn(String s, String s1, String s2, String s3, String s4, DoLoginAuthInterface dologinauthinterface)
    {
        m_iCallback = dologinauthinterface;
        dologinauthinterface = new ArrayList();
        dologinauthinterface.add(new DataObject("phone", s1));
        dologinauthinterface.add(new DataObject("data", s2));
        dologinauthinterface.add(new DataObject("dev_type", s3));
        dologinauthinterface.add(new DataObject("dev_id", s4));
        asyncConnect((new StringBuilder("http://")).append(s).append(":2060/").toString(), "api-hichina/auth", "", dologinauthinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (!flag && s != null)
        {
            if (s.contains("ok"))
            {
                m_iCallback.doLoginAuthSucc(s);
                return;
            } else
            {
                m_iCallback.doLoginAuthErr(s);
                return;
            }
        } else
        {
            m_iCallback.doLoginAuthErr(ErrDeal.getConnErr(s, flag));
            return;
        }
    }
}
