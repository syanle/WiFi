// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.SsidList;
import com.iwifi.sdk.parser.SsidListParser;
import com.iwifi.sdk.protocol.UpdateSsidListInterface;
import com.iwifi.sdk.tools.HttpUtil;

public class UpdateSsidListConn extends HttpUtil
{

    UpdateSsidListInterface m_iCallback;

    public UpdateSsidListConn(UpdateSsidListInterface updatessidlistinterface)
    {
        m_iCallback = updatessidlistinterface;
        asyncConnect("http://www.hichinawifi.com/wifiapp/", "ssidlists", "", null);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        Object obj;
        obj = SsidListParser.SsidList(s);
        if (!s.contains("ok"))
        {
            m_iCallback.updateSsidErr(s);
            return;
        }
        try
        {
            m_iCallback.updateSsidListSucc((SsidList)obj);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            m_iCallback.updateSsidErr(s.toString());
        }
        return;
        m_iCallback.updateSsidErr("");
        return;
    }
}
