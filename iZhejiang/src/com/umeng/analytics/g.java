// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;


public abstract class g
    implements Runnable
{

    public g()
    {
    }

    public abstract void a();

    public void run()
    {
        a();
_L1:
        return;
        Throwable throwable;
        throwable;
        if (throwable != null)
        {
            throwable.printStackTrace();
            return;
        }
          goto _L1
    }
}
