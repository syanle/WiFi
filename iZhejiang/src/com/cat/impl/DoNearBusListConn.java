// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoNearBusListInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoNearBusListConn extends WifiAsyncHttpClient
{

    private DoNearBusListInterface m_iCallback;

    public DoNearBusListConn(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, DoNearBusListInterface donearbuslistinterface, Context context)
    {
        m_iCallback = donearbuslistinterface;
        donearbuslistinterface = new ArrayList();
        donearbuslistinterface.add(new DataObject("city", s));
        donearbuslistinterface.add(new DataObject("lng", s1));
        donearbuslistinterface.add(new DataObject("lat", s2));
        donearbuslistinterface.add(new DataObject("radius", s3));
        donearbuslistinterface.add(new DataObject("cate", s4));
        donearbuslistinterface.add(new DataObject("sort", s5));
        donearbuslistinterface.add(new DataObject("authid", s6));
        donearbuslistinterface.add(new DataObject("bussid", s7));
        donearbuslistinterface.add(new DataObject("ssid", URLEncoder.encode(s8)));
        donearbuslistinterface.add(new DataObject("page", s9));
        s = (new StringBuilder("city=")).append(s).append("&lng=").append(s1).append("&lat=").append(s2).append("&radius=").append(s3).append("&cate=").append(s4).append("&sort=").append(s5).append("&authid=").append(s6).append("&bussid=").append(s7).append("&ssid=").append(URLEncoder.encode(s8)).append("&page=").append(s9).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTNEAR))).append("getnearbuslist.html").toString(), donearbuslistinterface, (new StringBuilder(String.valueOf(s))).append(";").append("getnearbuslist.html").toString(), new AsyncHttpResponseHandler() {

            final DoNearBusListConn this$0;

            public void onFailure(Throwable throwable, String s10)
            {
                super.onFailure(throwable);
                m_iCallback.doNearBusListErr(s10);
            }

            public void onSuccess(String s10)
            {
                super.onSuccess(s10);
                (new TARequest()).setData(s10);
                m_iCallback.doNearBusListSucc(s10);
            }

            
            {
                this$0 = DoNearBusListConn.this;
                super();
            }
        });
    }

}
