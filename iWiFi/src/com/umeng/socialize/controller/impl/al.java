// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.UMToken;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, c

class al extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener b;
    private final Context c;
    private final UMToken d;

    al(c c1, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener, Context context, UMToken umtoken)
    {
        a = c1;
        b = socializeclientlistener;
        c = context;
        d = umtoken;
        super();
    }

    protected Integer a()
    {
        return Integer.valueOf(a.a(c, d));
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        if (200 != integer.intValue())
        {
            com.umeng.socialize.controller.impl.c.a(a, c, null, integer);
        }
        b.onComplete(integer.intValue(), a.a);
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
        b.onStart();
    }
}
