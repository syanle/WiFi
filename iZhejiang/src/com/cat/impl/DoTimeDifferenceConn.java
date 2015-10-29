// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import com.cat.protocol.DoTimeDifferenceInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpClient;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

public class DoTimeDifferenceConn extends AsyncHttpClient
{

    private DoTimeDifferenceInterface m_iCallback;

    public DoTimeDifferenceConn(String s, DoTimeDifferenceInterface dotimedifferenceinterface)
    {
        m_iCallback = dotimedifferenceinterface;
        dotimedifferenceinterface = new ArrayList();
        dotimedifferenceinterface.add(new DataObject("timestamp", s));
        postL((new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTGE))).append("gettimedifference.html").toString(), dotimedifferenceinterface, new AsyncHttpResponseHandler() {

            final DoTimeDifferenceConn this$0;

            public void onFailure(Throwable throwable, String s1)
            {
                super.onFailure(throwable);
                m_iCallback.doTimeDifferenceErr(s1);
            }

            public void onSuccess(String s1)
            {
                super.onSuccess(s1);
                (new TARequest()).setData(s1);
                m_iCallback.doTimeDifferenceSucc(s1);
            }

            
            {
                this$0 = DoTimeDifferenceConn.this;
                super();
            }
        });
    }

}
