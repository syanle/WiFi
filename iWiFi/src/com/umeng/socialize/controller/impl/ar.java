// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.os.Handler;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, as

class ar
    implements Runnable
{

    final UMAsyncTask a;
    private final Handler b;

    ar(UMAsyncTask umasynctask, Handler handler)
    {
        a = umasynctask;
        b = handler;
        super();
    }

    static UMAsyncTask a(ar ar1)
    {
        return ar1.a;
    }

    public void run()
    {
        Object obj = a.doInBackground();
        b.post(new as(this, obj));
    }
}
