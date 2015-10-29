// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class o extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener b;
    private final b c;
    private final Context d;

    o(c c1, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener, b b1, Context context)
    {
        a = c1;
        b = socializeclientlistener;
        c = b1;
        d = context;
        super();
    }

    protected Integer a()
    {
        return Integer.valueOf(c.a(d));
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        if (200 != integer.intValue())
        {
            com.umeng.socialize.controller.impl.c.a(a, d, null, integer);
        }
        if (b != null)
        {
            b.onComplete(integer.intValue(), a.a);
        }
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((Integer)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        if (b != null)
        {
            b.onStart();
        }
    }
}
