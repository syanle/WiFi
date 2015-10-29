// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoCheckNetWorkInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import java.util.ArrayList;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoCheckNetWorkConn extends WifiAsyncHttpClient
{

    private DoCheckNetWorkInterface m_iCallback;

    public DoCheckNetWorkConn(DoCheckNetWorkInterface dochecknetworkinterface, Context context)
    {
        m_iCallback = dochecknetworkinterface;
        dochecknetworkinterface = new ArrayList();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_TOTAL))).append("/test/1").toString(), dochecknetworkinterface, null, new AsyncHttpResponseHandler() {

            final DoCheckNetWorkConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doCheckNetWorkErr(DoCheckNetWorkConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s)
            {
                super.onSuccess(s);
                (new TARequest()).setData(s);
                m_iCallback.doCheckNetWorkSucc(s);
            }

            
            {
                this$0 = DoCheckNetWorkConn.this;
                super();
            }
        });
    }

}
