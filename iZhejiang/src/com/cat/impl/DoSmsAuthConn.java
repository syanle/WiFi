// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoSmsAuthInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoSmsAuthConn extends WifiAsyncHttpClient
{

    private DoSmsAuthInterface m_iCallback;

    public DoSmsAuthConn(String s, String s1, String s2, DoSmsAuthInterface dosmsauthinterface, Context context)
    {
        m_iCallback = dosmsauthinterface;
        dosmsauthinterface = new ArrayList();
        dosmsauthinterface.add(new DataObject("mobile", s));
        dosmsauthinterface.add(new DataObject("countrycode", s1));
        dosmsauthinterface.add(new DataObject("type", s2));
        s = (new StringBuilder("mobile=")).append(s).append("&countrycode=").append(s1).append("&type=").append(s2).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("sendsms.html").toString(), dosmsauthinterface, (new StringBuilder(String.valueOf(s))).append(";").append("sendsms.html").toString(), new AsyncHttpResponseHandler() {

            final DoSmsAuthConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doSmsAuthErr(DoSmsAuthConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s3)
            {
                super.onSuccess(s3);
                (new TARequest()).setData(s3);
                m_iCallback.doSmsAuthSucc(s3);
            }

            
            {
                this$0 = DoSmsAuthConn.this;
                super();
            }
        });
    }

}
