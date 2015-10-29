// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import com.umeng.common.Log;

// Referenced classes of package com.umeng.analytics:
//            i

class a
    implements Thread.UncaughtExceptionHandler
{

    private Thread.UncaughtExceptionHandler a;
    private i b;
    private Context c;

    public a()
    {
    }

    private void a(Throwable throwable)
    {
        if (throwable == null)
        {
            Log.e("MobclickAgent", "Exception is null in handleException");
            return;
        } else
        {
            b.b(c, throwable);
            return;
        }
    }

    public void a(Context context)
    {
        if (Thread.getDefaultUncaughtExceptionHandler() == this)
        {
            return;
        } else
        {
            c = context.getApplicationContext();
            a = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
            return;
        }
    }

    public void a(i j)
    {
        b = j;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        a(throwable);
        if (a != null)
        {
            a.uncaughtException(thread, throwable);
        }
    }
}
