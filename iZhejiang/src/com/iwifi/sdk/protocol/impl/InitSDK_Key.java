// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.iwifi.sdk.data.SdkKeyResult;
import com.iwifi.sdk.parser.GetSdkKeyResultParser;
import com.iwifi.sdk.protocol.DoInitSdkInterface;
import com.iwifi.sdk.tools.DataObject;
import com.iwifi.sdk.tools.ErrDeal;
import com.iwifi.sdk.tools.HttpConf;
import com.iwifi.sdk.tools.HttpUtil;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            SDKCommonMotheds

public class InitSDK_Key extends HttpUtil
{

    private DoInitSdkInterface m_iCallback;

    public InitSDK_Key(String s, String s1, DoInitSdkInterface doinitsdkinterface, Context context)
    {
        String s2;
        Object obj;
        obj = context.getPackageManager();
        s2 = null;
        obj = ((PackageManager) (obj)).getPackageInfo(context.getPackageName(), 1).versionName;
        s2 = ((String) (obj));
_L2:
        HttpConf.setUserAgent((new StringBuilder(String.valueOf(context.getPackageName()))).append("+").append(s2).append("+").append(Build.MODEL).append("+").append(android.os.Build.VERSION.RELEASE).toString());
        s1 = SDKCommonMotheds.getSign((new StringBuilder("appkey=")).append(s).append("&secret=").append(s1).toString());
        m_iCallback = doinitsdkinterface;
        doinitsdkinterface = new ArrayList();
        doinitsdkinterface.add(new DataObject("appkey", s));
        doinitsdkinterface.add(new DataObject("sign", s1));
        asyncConnect(iWiFi20_WIFI_HOST, "checkapp.html", "", doinitsdkinterface);
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void taskexecute(String s, boolean flag)
        throws Exception
    {
        if (flag || s == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        SdkKeyResult sdkkeyresult = GetSdkKeyResultParser.GetSdkKeyResultList(s);
        (new StringBuilder("{\"result\":\"")).append(sdkkeyresult.getResult()).append("\",\"message\":\"").append(sdkkeyresult.getMessage()).append("\"}").toString();
        if (!s.contains("OK"))
        {
            m_iCallback.doInitSdkErr(s);
            return;
        }
        try
        {
            m_iCallback.doInitSdkSucc(s);
            return;
        }
        catch (Exception exception)
        {
            (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"Json error :")).append(exception.getMessage()).append("\"}").toString();
        }
        m_iCallback.doInitSdkErr(s);
        return;
        (new StringBuilder("{\"result\":\"FAIL\",\"message\":\"")).append(ErrDeal.getConnErr(s, flag)).append("\"}").toString();
        m_iCallback.doInitSdkErr(s);
        return;
    }
}
