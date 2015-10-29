// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.db.c;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, c

class f extends UMAsyncTask
{

    final com.umeng.socialize.controller.impl.c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener b;
    private final Context c;
    private final SnsAccount d;

    f(com.umeng.socialize.controller.impl.c c1, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener, Context context, SnsAccount snsaccount)
    {
        a = c1;
        b = socializeclientlistener;
        c = context;
        d = snsaccount;
        super();
    }

    protected Integer a()
    {
        return Integer.valueOf(a.a(c, d));
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        if (integer.intValue() == 200)
        {
            com.umeng.socialize.db.c.a(c, "custom");
        } else
        {
            com.umeng.socialize.controller.impl.c.a(a, c, null, integer);
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
