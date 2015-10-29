// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoRegistNewInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoRegistNewConn extends WifiAsyncHttpClient
{

    private DoRegistNewInterface m_iCallback;

    public DoRegistNewConn(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, DoRegistNewInterface doregistnewinterface, Context context)
    {
        m_iCallback = doregistnewinterface;
        doregistnewinterface = new ArrayList();
        doregistnewinterface.add(new DataObject("mobile", s));
        doregistnewinterface.add(new DataObject("code", s1));
        doregistnewinterface.add(new DataObject("nick", s2));
        doregistnewinterface.add(new DataObject("psw", s3));
        doregistnewinterface.add(new DataObject("email", s4));
        doregistnewinterface.add(new DataObject("type", s5));
        doregistnewinterface.add(new DataObject("countrycode", s6));
        doregistnewinterface.add(new DataObject("checktype", s7));
        s = (new StringBuilder("mobile=")).append(s).append("&code=").append(s1).append("&nick=").append(s2).append("&psw=").append(s3).append("&email=").append(s4).append("&type=").append(s5).append("&countrycode=").append(s6).append("&checktype=").append(s7).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("reg.html").toString(), doregistnewinterface, (new StringBuilder(String.valueOf(s))).append(";").append("reg.html").toString(), new AsyncHttpResponseHandler() {

            final DoRegistNewConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doRegistNewErr(DoRegistNewConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s8)
            {
                super.onSuccess(s8);
                (new TARequest()).setData(s8);
                m_iCallback.doRegistNewSucc(s8);
            }

            
            {
                this$0 = DoRegistNewConn.this;
                super();
            }
        });
    }

}
