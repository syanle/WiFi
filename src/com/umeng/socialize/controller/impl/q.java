// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.bean.UMShareMsg;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class q extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener b;
    private final String c;
    private final String d;
    private final b e;
    private final Context f;
    private final UMShareMsg g;
    private final SHARE_MEDIA h;

    q(c c1, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener, String s, String s1, b b1, Context context, UMShareMsg umsharemsg, 
            SHARE_MEDIA share_media)
    {
        a = c1;
        b = snspostlistener;
        c = s;
        d = s1;
        e = b1;
        f = context;
        g = umsharemsg;
        h = share_media;
        super();
    }

    protected Integer a()
    {
        Object obj = new SNSPair(c, d);
        b b1 = e;
        Context context = f;
        UMShareMsg umsharemsg = g;
        obj = b1.a(context, new SNSPair[] {
            obj
        }, umsharemsg);
        if (h != null)
        {
            int i = ((MultiStatus) (obj)).getPlatformStatus(h);
            if (-102 == i)
            {
                return Integer.valueOf(((MultiStatus) (obj)).getStCode());
            } else
            {
                return Integer.valueOf(i);
            }
        } else
        {
            return Integer.valueOf(((MultiStatus) (obj)).getStCode());
        }
    }

    protected void a(Integer integer)
    {
        super.onPostExecute(integer);
        SHARE_MEDIA share_media = SHARE_MEDIA.convertToEmun(c);
        if (integer.intValue() != 200)
        {
            com.umeng.socialize.controller.impl.c.a(a, f, share_media, integer);
        }
        if (b != null)
        {
            b.onComplete(share_media, integer.intValue(), a.a);
        }
        if (a.a.isFireCallback())
        {
            com.umeng.socialize.controller.impl.c.b().fireAllListenersOnComplete(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener, share_media, integer.intValue(), a.a);
        }
        com.umeng.socialize.controller.impl.c.a(a, f, e);
        a.getConfig().cleanListeners();
        com.umeng.socialize.controller.impl.c.c(a);
        a.a.setFireCallback(false);
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
        if (a.a.isFireCallback())
        {
            com.umeng.socialize.controller.impl.c.b().fireAllListenersOnStart(com/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener);
        }
    }
}
