// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.util.Log;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.net.e;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class an extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.FetchCommetsListener b;
    private final b c;
    private final Context d;
    private final long e;

    an(c c1, com.umeng.socialize.controller.listener.SocializeListeners.FetchCommetsListener fetchcommetslistener, b b1, Context context, long l)
    {
        a = c1;
        b = fetchcommetslistener;
        c = b1;
        d = context;
        e = l;
        super();
    }

    protected e a()
    {
        e e1;
        try
        {
            e1 = c.a(d, e);
        }
        catch (SocializeException socializeexception)
        {
            Log.e(com.umeng.socialize.controller.impl.c.a(), socializeexception.toString());
            return null;
        }
        return e1;
    }

    protected void a(e e1)
    {
label0:
        {
            if (b != null)
            {
                if (e1 == null)
                {
                    break label0;
                }
                b.onComplete(e1.n, e1.a, a.a);
            }
            return;
        }
        b.onComplete(-102, null, a.a);
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((e)obj);
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
