// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c, ar

public abstract class UMAsyncTask
{

    private static final HandlerThread HT;

    public UMAsyncTask()
    {
    }

    protected abstract Object doInBackground();

    public final UMAsyncTask execute()
    {
        Handler handler = new Handler(Looper.myLooper());
        Handler handler1 = new Handler(HT.getLooper());
        onPreExecute();
        handler1.post(new ar(this, handler));
        return this;
    }

    protected void onPostExecute(Object obj)
    {
    }

    protected void onPreExecute()
    {
    }

    static 
    {
        HT = new HandlerThread(com/umeng/socialize/controller/impl/c.getName(), 10);
        HT.start();
    }
}
