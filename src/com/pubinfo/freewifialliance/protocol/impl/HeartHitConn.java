// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.protocol.impl;

import com.pubinfo.freewifialliance.parser.HeartHitParser;
import com.pubinfo.freewifialliance.protocol.HeartHitInterface;
import com.pubinfo.wifi_core.core.data.DataObject;
import com.pubinfo.wifi_core.core.net.HttpUtil;
import java.util.ArrayList;
import java.util.List;

public class HeartHitConn extends HttpUtil
{

    private HeartHitInterface m_iCallback;

    public HeartHitConn(String s, String s1, String s2, int i, String s3, String s4, HeartHitInterface hearthitinterface)
    {
        m_iCallback = hearthitinterface;
        hearthitinterface = new ArrayList();
        hearthitinterface.add(new DataObject("phone", s));
        hearthitinterface.add(new DataObject("data", s1));
        hearthitinterface.add(new DataObject("mac", s2));
        hearthitinterface.add(new DataObject("devtype", (new StringBuilder(String.valueOf(i))).toString()));
        hearthitinterface.add(new DataObject("devId", s3));
        hearthitinterface.add(new DataObject("ssid", s4));
        asyncConnect("http://115.239.134.129/wifiapp/", "chinanetheartbeat", "", hearthitinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        HeartHitParser.HeartHit(s);
        if (!s.contains("ok"))
        {
            m_iCallback.HeartHitErr();
            return;
        }
        try
        {
            m_iCallback.HeartHitSucc();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            m_iCallback.HeartHitErr();
        }
        return;
        m_iCallback.HeartHitErr();
        return;
    }
}
