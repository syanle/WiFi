// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoCTPassInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import java.util.ArrayList;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoCTPassConn extends WifiAsyncHttpClient
{

    private DoCTPassInterface m_iCallback;

    public DoCTPassConn(DoCTPassInterface doctpassinterface, Context context)
    {
        m_iCallback = doctpassinterface;
        doctpassinterface = new ArrayList();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTNFC))).append("getctpass.html").toString(), doctpassinterface, (new StringBuilder(String.valueOf(""))).append(";").append("getctpass.html").toString(), new AsyncHttpResponseHandler() {

            final DoCTPassConn this$0;

            public void onFailure(Throwable throwable, String s)
            {
                super.onFailure(throwable);
                m_iCallback.doCTPassErr(s);
            }

            public void onSuccess(String s)
            {
                super.onSuccess(s);
                (new TARequest()).setData(s);
                m_iCallback.doCTPassSucc(s);
            }

            
            {
                this$0 = DoCTPassConn.this;
                super();
            }
        });
    }

}
