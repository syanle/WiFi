// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import com.umeng.socom.util.BitmapUtils;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            UMAsyncTask, c

class l extends UMAsyncTask
{

    final c a;
    private final String b;
    private final Context c;
    private final Intent d;
    private final String e;

    l(c c1, String s, Context context, Intent intent, String s1)
    {
        a = c1;
        b = s;
        c = context;
        d = intent;
        e = s1;
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
        com.umeng.socialize.controller.impl.c.a(a, c, d, BitmapUtils.getFileName(b), e);
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
