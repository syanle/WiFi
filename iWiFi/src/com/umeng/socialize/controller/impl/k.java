// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.ProgressDialog;
import android.content.Context;
import com.umeng.socom.util.BitmapUtils;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, c

class k extends UMAsyncTask
{

    final c a;
    private final String b;
    private final Context c;
    private final String d;
    private final com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener e;

    k(c c1, String s, Context context, String s1, com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener snspostlistener)
    {
        a = c1;
        b = s;
        c = context;
        d = s1;
        e = snspostlistener;
        super();
    }

    protected String a()
    {
        BitmapUtils.getBitmapFromFile(b);
        return null;
    }

    protected void a(String s)
    {
        super.onPostExecute(s);
        c.c.dismiss();
        com.umeng.socialize.controller.impl.c.a(a, c, BitmapUtils.getFileName(b), d, e);
    }

    protected Object doInBackground()
    {
        return a();
    }

    protected void onPostExecute(Object obj)
    {
        a((String)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        c.c.show();
    }
}
