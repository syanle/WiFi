// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

public abstract class d
{
    private class a extends Handler
    {

        final d a;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                return;

            case 1000: 
                a.b();
                break;
            }
        }

        private a()
        {
            a = d.this;
            super();
        }

        a(a a1)
        {
            this();
        }
    }


    protected static final int a = 1000;
    protected static final int b = 16;
    protected boolean c;
    protected final Handler d = new a(null);
    protected float e;
    protected float f;
    protected float g;
    protected float h;
    protected long i;

    public d()
    {
        c = false;
    }

    protected abstract void a(float f1);

    public void a(boolean flag)
    {
        c = flag;
    }

    public boolean a()
    {
        return c;
    }

    protected abstract void b();

    protected void c()
    {
        long l = SystemClock.uptimeMillis();
        float f1 = ((float)l - e) / 1000F;
        float f2 = f;
        float f3 = g;
        float f4 = h;
        f = f2 + f3 * f1 + 0.5F * f4 * f1 * f1;
        g = f1 * f4 + f3;
        e = l;
    }
}
