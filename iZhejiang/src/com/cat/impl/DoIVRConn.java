// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoIVRInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoIVRConn extends WifiAsyncHttpClient
{

    private DoIVRInterface m_iCallback;

    public DoIVRConn(String s, DoIVRInterface doivrinterface, Context context)
    {
        m_iCallback = doivrinterface;
        doivrinterface = new ArrayList();
        doivrinterface.add(new DataObject("authid", s));
        s = (new StringBuilder("authid=")).append(s).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("checkivr.html").toString(), doivrinterface, (new StringBuilder(String.valueOf(s))).append(";").append("checkivr.html").toString(), new AsyncHttpResponseHandler() {

            final DoIVRConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doIVRErr(DoIVRConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s1)
            {
                super.onSuccess(s1);
                (new TARequest()).setData(s1);
                m_iCallback.doIVRSucc(s1);
            }

            
            {
                this$0 = DoIVRConn.this;
                super();
            }
        });
    }

}
