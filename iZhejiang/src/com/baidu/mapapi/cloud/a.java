// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import android.os.Handler;
import android.os.Message;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.cloud:
//            CloudManager, CloudSearchResult, CloudListener, DetailSearchResult

class a extends Handler
{

    final CloudManager a;

    a(CloudManager cloudmanager)
    {
        a = cloudmanager;
        super();
    }

    public void handleMessage(Message message)
    {
        Object obj;
        for (obj = null; CloudManager.a(a) == null || message.what != 0x20000 || CloudManager.b(a) == null;)
        {
            return;
        }

        switch (message.arg1)
        {
        default:
            return;

        case 10001: 
            String s1;
            Exception exception;
            if (message.arg2 == 0)
            {
                String s = CloudManager.a(a, 10001);
                obj = new CloudSearchResult();
                try
                {
                    ((CloudSearchResult) (obj)).a(new JSONObject(s));
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                    CloudManager.b(a).onGetSearchResult(null, -1);
                }
            } else
            {
                obj = null;
            }
            CloudManager.b(a).onGetSearchResult(((CloudSearchResult) (obj)), message.arg2);
            return;

        case 10002: 
            break;
        }
        if (message.arg2 == 0)
        {
            s1 = CloudManager.a(a, 10002);
            obj = new DetailSearchResult();
            try
            {
                ((DetailSearchResult) (obj)).a(new JSONObject(s1));
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                exception.printStackTrace();
                CloudManager.b(a).onGetDetailSearchResult(null, -1);
            }
        }
        CloudManager.b(a).onGetDetailSearchResult(((DetailSearchResult) (obj)), message.arg2);
    }
}
