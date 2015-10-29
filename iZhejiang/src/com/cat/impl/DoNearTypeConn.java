// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoNearTypeInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoNearTypeConn extends WifiAsyncHttpClient
{

    private DoNearTypeInterface m_iCallback;

    public DoNearTypeConn(String s, DoNearTypeInterface doneartypeinterface, Context context)
    {
        m_iCallback = doneartypeinterface;
        doneartypeinterface = new ArrayList();
        doneartypeinterface.add(new DataObject("type", s));
        s = (new StringBuilder("type=")).append(s).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTNEAR))).append("getneartype.html").toString(), doneartypeinterface, (new StringBuilder(String.valueOf(s))).append(";").append("getneartype.html").toString(), new AsyncHttpResponseHandler() {

            final DoNearTypeConn this$0;

            public void onFailure(Throwable throwable, String s1)
            {
                super.onFailure(throwable);
                m_iCallback.doNearTypeErr(s1);
            }

            public void onSuccess(String s1)
            {
                super.onSuccess(s1);
                (new TARequest()).setData(s1);
                m_iCallback.doNearTypeSucc(s1);
            }

            
            {
                this$0 = DoNearTypeConn.this;
                super();
            }
        });
    }

}
