// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoApInfoInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoApInfoConn extends WifiAsyncHttpClient
{

    private DoApInfoInterface m_iCallback;

    public DoApInfoConn(String s, String s1, DoApInfoInterface doapinfointerface, Context context)
    {
        m_iCallback = doapinfointerface;
        doapinfointerface = new ArrayList();
        doapinfointerface.add(new DataObject("mac", s));
        doapinfointerface.add(new DataObject("authid", s1));
        s = (new StringBuilder("mac=")).append(s).append("&authid=").append(s1).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTAP))).append("apinfo1.html").toString(), doapinfointerface, (new StringBuilder(String.valueOf(s))).append(";").append("apinfo1.html").toString(), new AsyncHttpResponseHandler() {

            final DoApInfoConn this$0;

            public void onFailure(Throwable throwable, String s2)
            {
                super.onFailure(throwable);
                m_iCallback.doApInfoErr(s2);
            }

            public void onSuccess(String s2)
            {
                super.onSuccess(s2);
                (new TARequest()).setData(s2);
                m_iCallback.doApInfoSucc(s2);
            }

            
            {
                this$0 = DoApInfoConn.this;
                super();
            }
        });
    }

}
