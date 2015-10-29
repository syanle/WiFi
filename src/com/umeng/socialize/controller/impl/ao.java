// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import com.umeng.socialize.common.SocializeUtils;
import com.umeng.socialize.net.g;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class ao extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener b;
    private final b c;
    private final Context d;

    ao(c c1, com.umeng.socialize.controller.listener.SocializeListeners.UMDataListener umdatalistener, b b1, Context context)
    {
        a = c1;
        b = umdatalistener;
        c = b1;
        d = context;
        super();
    }

    protected g a()
    {
        return c.g(d);
    }

    protected void a(g g1)
    {
        if (g1 != null)
        {
            com.umeng.socialize.controller.impl.c.a(a, g1.b);
            com.umeng.socialize.controller.impl.c.b(a, g1.a);
            SocializeUtils.savePlatformKey(d, g1.a);
            SocializeUtils.savePlatformSecret(d, com.umeng.socialize.controller.impl.c.a(a));
            if (b != null)
            {
                b.onComplete(g1.n, g1.a);
            }
        } else
        if (b != null)
        {
            b.onComplete(-102, null);
            return;
        }
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((g)obj);
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
