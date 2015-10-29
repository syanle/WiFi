// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.UMShareMsg;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class t extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener b;
    private final SHARE_MEDIA c;
    private final String d;
    private final String e;
    private final b f;
    private final Context g;

    t(c c1, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener, SHARE_MEDIA share_media, String s, String s1, b b1, Context context)
    {
        a = c1;
        b = snspostlistener;
        c = share_media;
        d = s;
        e = s1;
        f = b1;
        g = context;
        super();
    }

    protected Integer a()
    {
        SNSPair snspair = new SNSPair(c.toString(), d);
        UMShareMsg umsharemsg = new UMShareMsg();
        umsharemsg.mWeiBoId = e;
        return Integer.valueOf(f.a(g, new SNSPair[] {
            snspair
        }, umsharemsg).getStCode());
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        if (200 != integer.intValue())
        {
            com.umeng.socialize.controller.impl.c.a(a, g, null, integer);
        }
        if (b != null)
        {
            b.onComplete(c, integer.intValue(), a.a);
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
