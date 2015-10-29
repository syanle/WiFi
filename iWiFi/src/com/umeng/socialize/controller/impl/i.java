// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.UMComment;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class i extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener b;
    private final b c;
    private final Context d;
    private final UMComment e;
    private final SNSPair f[];

    i(c c1, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, b b1, Context context, UMComment umcomment, SNSPair asnspair[])
    {
        a = c1;
        b = mulstatuslistener;
        c = b1;
        d = context;
        e = umcomment;
        f = asnspair;
        super();
    }

    protected Integer a()
    {
        return Integer.valueOf(c.a(d, e, f));
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
            b.onComplete(null, integer.intValue(), a.a);
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
