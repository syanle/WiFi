// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoRePasswordInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoRePasswordConn extends WifiAsyncHttpClient
{

    private DoRePasswordInterface m_iCallback;

    public DoRePasswordConn(String s, String s1, String s2, String s3, String s4, DoRePasswordInterface dorepasswordinterface, Context context)
    {
        m_iCallback = dorepasswordinterface;
        dorepasswordinterface = new ArrayList();
        dorepasswordinterface.add(new DataObject("mobile", s));
        dorepasswordinterface.add(new DataObject("memberid", s1));
        dorepasswordinterface.add(new DataObject("countrycode", s2));
        dorepasswordinterface.add(new DataObject("code", s3));
        dorepasswordinterface.add(new DataObject("password", s4));
        s = (new StringBuilder("mobile=")).append(s).append("&memberid=").append(s1).append("&countrycode=").append(s2).append("&code=").append(s3).append("&password=").append(s4).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("repwd.html").toString(), dorepasswordinterface, (new StringBuilder(String.valueOf(s))).append(";").append("repwd.html").toString(), new AsyncHttpResponseHandler() {

            final DoRePasswordConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doRePasswordErr(DoRePasswordConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s5)
            {
                super.onSuccess(s5);
                (new TARequest()).setData(s5);
                m_iCallback.doRePasswordSucc(s5);
            }

            
            {
                this$0 = DoRePasswordConn.this;
                super();
            }
        });
    }

}
