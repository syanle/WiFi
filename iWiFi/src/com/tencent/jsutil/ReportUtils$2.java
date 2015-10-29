// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.content.Context;
import android.os.Bundle;
import com.tencent.sdkutil.HttpUtils;

final class val.params extends Thread
{

    final Context val$context;
    final Bundle val$params;

    public void run()
    {
        try
        {
            HttpUtils.openUrl(val$context, "http://cgi.qplus.com/report/report", "GET", val$params);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    ()
    {
        val$context = context1;
        val$params = bundle;
        super();
    }
}
