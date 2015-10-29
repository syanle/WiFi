// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoReadPushConn extends WifiAsyncHttpClient
{

    public DoReadPushConn(String s, String s1, String s2, Context context)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new DataObject("authid", s));
        arraylist.add(new DataObject("countrycode", s1));
        arraylist.add(new DataObject("pushid", s2));
        s = (new StringBuilder("authid=")).append(s).append("&countrycode=").append(s1).append("&pushid=").append(s2).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOST))).append("readpush.html").toString(), arraylist, (new StringBuilder(String.valueOf(s))).append(";").append("readpush.html").toString(), new AsyncHttpResponseHandler() {

            final DoReadPushConn this$0;

            public void onFailure(Throwable throwable, String s3)
            {
                super.onFailure(throwable);
            }

            public void onSuccess(String s3)
            {
                super.onSuccess(s3);
                (new TARequest()).setData(s3);
            }

            
            {
                this$0 = DoReadPushConn.this;
                super();
            }
        });
    }
}
