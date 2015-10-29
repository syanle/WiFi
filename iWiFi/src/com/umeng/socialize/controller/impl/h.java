// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.db.c;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class h extends UMAsyncTask
{

    final com.umeng.socialize.controller.impl.c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener b;
    private final b c;
    private final Context d;
    private final SHARE_MEDIA e;

    h(com.umeng.socialize.controller.impl.c c1, com.umeng.socialize.controller.listener.SocializeListeners.SocializeClientListener socializeclientlistener, b b1, Context context, SHARE_MEDIA share_media)
    {
        a = c1;
        b = socializeclientlistener;
        c = b1;
        d = context;
        e = share_media;
        super();
    }

    protected Integer a()
    {
        return Integer.valueOf(c.a(d, e));
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        if (integer.intValue() == 200)
        {
            com.umeng.socialize.db.c.a(d, e.toString());
        } else
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
