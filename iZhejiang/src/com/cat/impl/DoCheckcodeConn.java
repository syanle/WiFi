// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoCheckCodeInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoCheckcodeConn extends WifiAsyncHttpClient
{

    private DoCheckCodeInterface m_iCallback;

    public DoCheckcodeConn(String s, String s1, String s2, DoCheckCodeInterface docheckcodeinterface, Context context)
    {
        m_iCallback = docheckcodeinterface;
        docheckcodeinterface = new ArrayList();
        docheckcodeinterface.add(new DataObject("mobile", s));
        docheckcodeinterface.add(new DataObject("code", s1));
        docheckcodeinterface.add(new DataObject("type", s2));
        s = (new StringBuilder("mobile=")).append(s).append("&code=").append(s1).append("&type=").append(s2).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("checksms.html").toString(), docheckcodeinterface, (new StringBuilder(String.valueOf(s))).append(";").append("checksms.html").toString(), new AsyncHttpResponseHandler() {

            final DoCheckcodeConn this$0;

            public void onFailure(Throwable throwable)
            {
                super.onFailure(throwable);
                m_iCallback.doCheckcodeErr(DoCheckcodeConn.FormatStackTrace(throwable));
            }

            public void onSuccess(String s3)
            {
                super.onSuccess(s3);
                (new TARequest()).setData(s3);
                m_iCallback.doCheckcodeSucc(s3);
            }

            
            {
                this$0 = DoCheckcodeConn.this;
                super();
            }
        });
    }

}
