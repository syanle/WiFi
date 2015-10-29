// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.MultiStatus;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.bean.UMShareMsg;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class s extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener b;
    private final b c;
    private final Context d;
    private final SNSPair e[];
    private final UMShareMsg f;
    private final Map g;

    s(c c1, com.umeng.socialize.controller.listener.SocializeListeners.MulStatusListener mulstatuslistener, b b1, Context context, SNSPair asnspair[], UMShareMsg umsharemsg, Map map)
    {
        a = c1;
        b = mulstatuslistener;
        c = b1;
        d = context;
        e = asnspair;
        f = umsharemsg;
        g = map;
        super();
    }

    protected MultiStatus a()
    {
        return c.a(d, e, f);
    }

    protected void a(MultiStatus multistatus)
    {
        super.onPostExecute(multistatus);
        Map map = multistatus.getPlatformCode();
        map.putAll(g);
        Iterator iterator = map.keySet().iterator();
        do
        {
            SHARE_MEDIA share_media;
            int i;
            do
            {
                if (!iterator.hasNext())
                {
                    if (b != null)
                    {
                        b.onComplete(multistatus, multistatus.getStCode(), a.a);
                    }
                    return;
                }
                share_media = (SHARE_MEDIA)iterator.next();
                i = ((Integer)map.get(share_media)).intValue();
            } while (200 == i);
            com.umeng.socialize.controller.impl.c.a(a, d, share_media, Integer.valueOf(i));
        } while (true);
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
