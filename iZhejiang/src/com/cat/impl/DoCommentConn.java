// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.impl;

import android.content.Context;
import com.cat.protocol.DoCommentInterface;
import com.cat.tools.HttpConf;
import com.ta.mvc.common.TARequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.DataObject;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.cat.impl:
//            WifiAsyncHttpClient

public class DoCommentConn extends WifiAsyncHttpClient
{

    private DoCommentInterface m_iCallback;

    public DoCommentConn(String s, String s1, String s2, String s3, DoCommentInterface docommentinterface, Context context)
    {
        m_iCallback = docommentinterface;
        docommentinterface = new ArrayList();
        docommentinterface.add(new DataObject("mac", s));
        docommentinterface.add(new DataObject("authid", s1));
        docommentinterface.add(new DataObject("info", s2));
        docommentinterface.add(new DataObject("type", s3));
        s = (new StringBuilder("mac=")).append(s).append("&authid=").append(s1).append("&info=").append(s2).append("&type=").append(s3).toString();
        postTest(context, (new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_HOSTAP))).append("comment.html").toString(), docommentinterface, (new StringBuilder(String.valueOf(s))).append(";").append("comment.html").toString(), new AsyncHttpResponseHandler() {

            final DoCommentConn this$0;

            public void onFailure(Throwable throwable, String s4)
            {
                super.onFailure(throwable);
                m_iCallback.doCommentErr(s4);
            }

            public void onSuccess(String s4)
            {
                super.onSuccess(s4);
                (new TARequest()).setData(s4);
                m_iCallback.doCommentSucc(s4);
            }

            
            {
                this$0 = DoCommentConn.this;
                super();
            }
        });
    }

}
