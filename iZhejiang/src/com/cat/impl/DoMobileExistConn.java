// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoMobileExistInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoMobileExistConn extends WifiAsyncHttpClient
{

    private DoMobileExistInterface m_iCallback;

    public DoMobileExistConn(String s, String s1, String s2, DoMobileExistInterface domobileexistinterface, Context context)
    {
        m_iCallback = domobileexistinterface;
        domobileexistinterface = new ArrayList();
        domobileexistinterface.add(new DataObject("info", s));
        domobileexistinterface.add(new DataObject("info2", s1));
        domobileexistinterface.add(new DataObject("type", s2));
        s = (new StringBuilder("info=")).append(s).append("&info2=").append(s1).append("&type=").append(s2).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("checkinfo.html").toString(), domobileexistinterface, (new StringBuilder(String.valueOf(s))).append(";").append("checkinfo.html").toString(), new AsyncHttpResponseHandler() {

            final DoMobileExistConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doMobileExistErr(DoMobileExistConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s3)
            {
                super.onSuccess(s3);
                (new TARequest()).setData(s3);
                m_iCallback.doMobileExistSucc(s3);
            }

            
            {
                this$0 = DoMobileExistConn.this;
                super();
            }
        });
    }

}
