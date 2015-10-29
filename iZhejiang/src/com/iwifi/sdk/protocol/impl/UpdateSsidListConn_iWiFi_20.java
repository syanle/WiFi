// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import com.iwifi.sdk.data.SsidList;
import com.iwifi.sdk.parser.SsidListParser;
import com.iwifi.sdk.protocol.UpdateSsidListInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            SDKCommonMotheds

public class UpdateSsidListConn_iWiFi_20 extends HttpUtil
{

    UpdateSsidListInterface m_iCallback;

    public UpdateSsidListConn_iWiFi_20(String s, String s1, UpdateSsidListInterface updatessidlistinterface)
    {
        s1 = SDKCommonMotheds.getSign((new StringBuilder("mobiletype=android&appkey=")).append(s).append("&secret=").append(s1).toString());
        m_iCallback = updatessidlistinterface;
        updatessidlistinterface = new ArrayList();
        updatessidlistinterface.add(new DataObject("mobiletype", "android"));
        updatessidlistinterface.add(new DataObject("appkey", s));
        updatessidlistinterface.add(new DataObject("sign", s1));
        asyncConnect(iWiFi20_WIFI_HOST, "ssidlists.html", "", updatessidlistinterface);
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        if (!s.contains("OK"))
        {
            m_iCallback.updateSsidErr(s);
            return;
        }
        try
        {
            s = ((String) (SsidListParser.SsidList(s, "result", "message", "data", "code", "version")));
            m_iCallback.updateSsidListSucc((SsidList)s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(s.getMessage()).append("\"}").toString();
        }
        m_iCallback.updateSsidErr(s);
        return;
        s = (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\"}").toString();
        m_iCallback.updateSsidErr(s);
        return;
    }
}
