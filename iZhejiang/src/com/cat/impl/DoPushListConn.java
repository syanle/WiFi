// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoPushListInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoPushListConn extends WifiAsyncHttpClient
{

    private DoPushListInterface m_iCallback;

    public DoPushListConn(String s, String s1, DoPushListInterface dopushlistinterface, Context context)
    {
        m_iCallback = dopushlistinterface;
        dopushlistinterface = new ArrayList();
        dopushlistinterface.add(new DataObject("authid", s));
        dopushlistinterface.add(new DataObject("countrycode", s1));
        s = (new StringBuilder("authid=")).append(s).append("&countrycode=").append(s1).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("getpushlist.html").toString(), dopushlistinterface, (new StringBuilder(String.valueOf(s))).append(";").append("getpushlist.html").toString(), new AsyncHttpResponseHandler() {

            final DoPushListConn this$0;

            public void onFailure(Throwable throwable, String s2)
            {
                super.onFailure(throwable);
                m_iCallback.doPushListErr(s2);
            }

            public void onSuccess(String s2)
            {
                super.onSuccess(s2);
                (new TARequest()).setData(s2);
                m_iCallback.doPushListSucc(s2);
            }

            
            {
                this$0 = DoPushListConn.this;
                super();
            }
        });
    }

}
