// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoSsidInfoInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoSsidInfoConn extends WifiAsyncHttpClient
{

    private DoSsidInfoInterface m_iCallback;

    public DoSsidInfoConn(String s, String s1, String s2, String s3, DoSsidInfoInterface dossidinfointerface, Context context)
    {
        m_iCallback = dossidinfointerface;
        dossidinfointerface = new ArrayList();
        dossidinfointerface.add(new DataObject("authid", s));
        dossidinfointerface.add(new DataObject("macs", s1));
        dossidinfointerface.add(new DataObject("aplist", ""));
        dossidinfointerface.add(new DataObject("province", s2));
        dossidinfointerface.add(new DataObject("city", s3));
        s = (new StringBuilder("authid=")).append(s).append("&macs=").append(s1).append("&aplist=").append("&province=").append(s2).append("&city=").append(s3).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTAP))).append("ssidinfo.html").toString(), dossidinfointerface, (new StringBuilder(String.valueOf(s))).append(";").append("ssidinfo.html").toString(), new AsyncHttpResponseHandler() {

            final DoSsidInfoConn this$0;

            public void onFailure(Throwable throwable, String s4)
            {
                super.onFailure(throwable);
                m_iCallback.doSsidInfoErr(s4);
            }

            public void onSuccess(String s4)
            {
                super.onSuccess(s4);
                (new TARequest()).setData(s4);
                m_iCallback.doSsidInfoSucc(s4);
            }

            
            {
                this$0 = DoSsidInfoConn.this;
                super();
            }
        });
    }

}
