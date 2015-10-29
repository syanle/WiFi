// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoCTPassResultInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoCTPassResultConn extends WifiAsyncHttpClient
{

    private DoCTPassResultInterface m_iCallback;

    public DoCTPassResultConn(String s, String s1, String s2, String s3, String s4, String s5, DoCTPassResultInterface doctpassresultinterface, 
            Context context)
    {
        m_iCallback = doctpassresultinterface;
        doctpassresultinterface = new ArrayList();
        doctpassresultinterface.add(new DataObject("appid", s));
        doctpassresultinterface.add(new DataObject("seqid", s1));
        doctpassresultinterface.add(new DataObject("random", s2));
        doctpassresultinterface.add(new DataObject("pcflag", s3));
        doctpassresultinterface.add(new DataObject("timestamp", s4));
        doctpassresultinterface.add(new DataObject("s", s5));
        s = (new StringBuilder("appid=")).append(s).append("&seqid=").append(s1).append("&random=").append(s2).append("&pcflag=").append(s3).append("&timestamp=").append(s4).append("&s=").append(s5).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTNFC))).append("authctpasstoken.html").toString(), doctpassresultinterface, (new StringBuilder(String.valueOf(s))).append(";").append("authctpasstoken.html").toString(), new AsyncHttpResponseHandler() {

            final DoCTPassResultConn this$0;

            public void onFailure(Throwable throwable, String s6)
            {
                super.onFailure(throwable);
                m_iCallback.doCTPassResultErr(s6);
            }

            public void onSuccess(String s6)
            {
                super.onSuccess(s6);
                (new TARequest()).setData(s6);
                m_iCallback.doCTPassResultSucc(s6);
            }

            
            {
                this$0 = DoCTPassResultConn.this;
                super();
            }
        });
    }

}
