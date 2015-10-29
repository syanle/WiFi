// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.bean.SNSPair;
import com.umeng.socialize.net.ab;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class ah extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener b;
    private final b c;
    private final Context d;
    private final SNSPair e;

    ah(c c1, com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener umdatalistener, b b1, Context context, SNSPair snspair)
    {
        a = c1;
        b = umdatalistener;
        c = b1;
        d = context;
        e = snspair;
        super();
    }

    protected ab a()
    {
        return c.a(d, e);
    }

    protected void a(ab ab1)
    {
label0:
        {
            super.onPostExecute(ab1);
            if (b != null)
            {
                if (ab1 == null)
                {
                    break label0;
                }
                b.onComplete(ab1.n, ab1.a);
            }
            return;
        }
        b.onComplete(-103, null);
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((ab)obj);
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
