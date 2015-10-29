// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.content.Context;
import android.util.Log;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMToken;
import com.umeng.socialize.controller.impl.UMAsyncTask;
import com.umeng.socialize.controller.impl.b;

// Referenced classes of package com.umeng.socialize.controller:
//            RequestType, UMQQSsoHandler

class <init> extends UMAsyncTask
{

    final UMQQSsoHandler this$0;
    private final Context val$context;
    private final com.umeng.socialize.controller.listener.s.SocializeClientListener val$mClientListener;
    private final UMToken val$token;

    protected Integer doInBackground()
    {
        return Integer.valueOf((new b(new SocializeEntity("qq", RequestType.SOCIAL))).a(val$context, val$token));
    }

    protected volatile Object doInBackground()
    {
        return doInBackground();
    }

    protected void onPostExecute(Integer integer)
    {
        super.onPostExecute(integer);
        if (200 != integer.intValue())
        {
            Log.d("UMQQSsoHandler", "##### Token \u4E0A\u4F20\u5931\u8D25");
        } else
        {
            Log.d("UMQQSsoHandler", "##### Token \u4E0A\u4F20\u6210\u529F");
        }
        Log.d("UMQQSsoHandler", (new StringBuilder("UPLOAD RESULT : CODE = ")).append(integer).toString());
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Integer)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        val$mClientListener.onStart();
    }

    izeClientListener()
    {
        this$0 = final_umqqssohandler;
        val$mClientListener = socializeclientlistener;
        val$context = context1;
        val$token = UMToken.this;
        super();
    }
}
