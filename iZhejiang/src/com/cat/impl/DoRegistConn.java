// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoRegistInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoRegistConn extends WifiAsyncHttpClient
{

    private DoRegistInterface m_iCallback;

    public DoRegistConn(String s, String s1, String s2, DoRegistInterface doregistinterface, Context context)
    {
        m_iCallback = doregistinterface;
        doregistinterface = new ArrayList();
        doregistinterface.add(new DataObject("mobile", s));
        doregistinterface.add(new DataObject("code", s1));
        doregistinterface.add(new DataObject("type", s2));
        s = (new StringBuilder("mobile=")).append(s).append("&code=").append(s1).append("&type=").append(s2).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("checksms.html").toString(), doregistinterface, (new StringBuilder(String.valueOf(s))).append(";").append("checksms.html").toString(), new AsyncHttpResponseHandler() {

            final DoRegistConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doRegistErr(DoRegistConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s3)
            {
                super.onSuccess(s3);
                (new TARequest()).setData(s3);
                m_iCallback.doRegistSucc(s3);
            }

            
            {
                this$0 = DoRegistConn.this;
                super();
            }
        });
    }

}
