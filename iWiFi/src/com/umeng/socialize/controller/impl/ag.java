// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class ag extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener b;
    private final b c;
    private final Context d;
    private final SNSPair e;
    private final String f[];
    private final SHARE_MEDIA g;

    ag(c c1, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, b b1, Context context, SNSPair snspair, String as[], SHARE_MEDIA share_media)
    {
        a = c1;
        b = mulstatuslistener;
        c = b1;
        d = context;
        e = snspair;
        f = as;
        g = share_media;
        super();
    }

    protected MultiStatus a()
    {
        return c.a(d, e, f);
    }

    protected void a(MultiStatus multistatus)
    {
        super.onPostExecute(multistatus);
        if (200 != multistatus.getStCode())
        {
            com.umeng.socialize.controller.impl.c.a(a, d, g, Integer.valueOf(multistatus.getStCode()));
        }
        if (b != null)
        {
            b.onComplete(multistatus, multistatus.getStCode(), a.a);
        }
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((MultiStatus)obj);
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
