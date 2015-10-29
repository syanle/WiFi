// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.content.Context;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.exception.SocializeException;
import com.umeng.socialize.net.q;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, b, c

class u extends UMAsyncTask
{

    final c a;
    private final com.umeng.socialize.controller.listener.SocializeListeners.FetchFriendsListener b;
    private final b c;
    private final Context d;
    private final SHARE_MEDIA e;
    private final String f;

    u(c c1, com.umeng.socialize.controller.listener.SocializeListeners.FetchFriendsListener fetchfriendslistener, b b1, Context context, SHARE_MEDIA share_media, String s)
    {
        a = c1;
        b = fetchfriendslistener;
        c = b1;
        d = context;
        e = share_media;
        f = s;
        super();
    }

    protected q a()
    {
        q q1;
        try
        {
            q1 = c.a(d, e, f);
        }
        catch (NullPointerException nullpointerexception)
        {
            Log.e(com.umeng.socialize.controller.impl.c.a(), nullpointerexception.toString());
            return null;
        }
        catch (SocializeException socializeexception)
        {
            Log.e(com.umeng.socialize.controller.impl.c.a(), socializeexception.toString());
            return null;
        }
        return q1;
    }

    protected void a(q q1)
    {
label0:
        {
            super.onPostExecute(q1);
            if (b != null)
            {
                if (q1 == null)
                {
                    break label0;
                }
                b.onComplete(q1.n, q1.a);
            }
            return;
        }
        b.onComplete(-102, null);
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((q)obj);
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
