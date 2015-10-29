// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoLoginInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoLoginConn extends WifiAsyncHttpClient
{

    private DoLoginInterface m_iCallback;

    public DoLoginConn(String s, String s1, String s2, DoLoginInterface dologininterface, Context context)
    {
        m_iCallback = dologininterface;
        dologininterface = new ArrayList();
        dologininterface.add(new DataObject("authid", s));
        dologininterface.add(new DataObject("countrycode", s1));
        dologininterface.add(new DataObject("password", s2));
        s = (new StringBuilder("authid=")).append(s).append("&countrycode=").append(s1).append("&password=").append(s2).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("login.html").toString(), dologininterface, (new StringBuilder(String.valueOf(s))).append(";").append("login.html").toString(), new AsyncHttpResponseHandler() {

            final DoLoginConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doLoginErr(DoLoginConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s3)
            {
                super.onSuccess(s3);
                (new TARequest()).setData(s3);
                m_iCallback.doLoginSucc(s3);
            }

            
            {
                this$0 = DoLoginConn.this;
                super();
            }
        });
    }

}
