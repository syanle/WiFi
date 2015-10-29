// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socialize.bean.QQShareMsg;
import com.umeng.socialize.controller.impl.UMAsyncTask;
import com.umeng.socialize.controller.impl.b;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.media.UMediaObject;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.controller:
//            UMQQSsoHandler

class init> extends UMAsyncTask
{

    final UMQQSsoHandler this$0;
    private final Context val$context;
    private final b val$controller;
    private final UMediaObject val$media;
    private final long val$startTime;
    private final String val$usid;

    protected volatile Object doInBackground()
    {
        return doInBackground();
    }

    protected String doInBackground()
    {
        Object obj = new StringBuilder("media is null ? --");
        byte abyte0[];
        boolean flag;
        if (val$media == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Log.i("UMQQSsoHandler", ((StringBuilder) (obj)).append(flag).append("---doInBackground").toString());
        if (val$media instanceof UMImage)
        {
            obj = (UMImage)val$media;
        } else
        {
            obj = null;
        }
        if (obj == null) goto _L2; else goto _L1
_L1:
        abyte0 = UMQQSsoHandler.access$26(UMQQSsoHandler.this, ((UMImage) (obj)).getImageCachePath());
        if (abyte0 == null) goto _L2; else goto _L3
_L3:
        if (abyte0 != null && abyte0.length > 0)
        {
            if (!TextUtils.isEmpty((CharSequence)UMQQSsoHandler.mQqShareMsg.k().get(Integer.valueOf(abyte0.length))))
            {
                UMQQSsoHandler.access$27((String)UMQQSsoHandler.mQqShareMsg.k().get(Integer.valueOf(abyte0.length)));
                UMQQSsoHandler.mQqShareMsg.b(UMQQSsoHandler.access$28());
                Log.i("UMQQSsoHandler", (new StringBuilder("obtain image url form cache...")).append(UMQQSsoHandler.access$28()).toString());
            } else
            {
                Log.i("UMQQSsoHandler", "obtain image url form server...");
                obj = val$controller.a(val$context, ((UMediaObject) (obj)), val$usid);
                UMQQSsoHandler.access$29(UMQQSsoHandler.this, ((String) (obj)), abyte0.length);
                UMQQSsoHandler.mQqShareMsg.b(UMQQSsoHandler.access$28());
                Log.i("UMQQSsoHandler", (new StringBuilder("obtain image url form server...")).append(UMQQSsoHandler.access$28()).toString());
            }
            UMQQSsoHandler.access$27("");
        } else
        {
            Log.i("UMQQSsoHandler", "datas is null...");
        }
_L5:
        Log.i("UMQQSsoHandler", "doInBackground end...");
        return "";
_L2:
        Log.i("UMQQSsoHandler", "uMediaObject is null...");
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        super.onPostExecute(s);
        Log.i("UMQQSsoHandler", (new StringBuilder("upload image kill time: ")).append(System.currentTimeMillis() - val$startTime).toString());
        UMQQSsoHandler.access$3();
        UMQQSsoHandler.access$2(UMQQSsoHandler.this);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        UMQQSsoHandler.access$9();
        Log.i("UMQQSsoHandler", (new StringBuilder("upload image start time: ")).append(System.currentTimeMillis()).append("---onPreExecute").toString());
    }

    ()
    {
        this$0 = final_umqqssohandler;
        val$media = umediaobject;
        val$controller = b1;
        val$context = context1;
        val$usid = s;
        val$startTime = J.this;
        super();
    }
}
