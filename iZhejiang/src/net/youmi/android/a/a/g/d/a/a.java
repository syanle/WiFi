// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d.a;

import android.content.Context;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

// Referenced classes of package net.youmi.android.a.a.g.d.a:
//            d

class a
{

    private static a c;
    private Context a;
    private Queue b;

    private a(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("Context must not be null");
        } else
        {
            a = context;
            b = new LinkedBlockingQueue();
            return;
        }
    }

    static a a(Context context)
    {
        if (c == null)
        {
            c = new a(context);
        }
        return c;
    }

    d a()
    {
        d d1;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        d1 = (d)b.poll();
        return d1;
        Throwable throwable;
        throwable;
        return null;
    }

    boolean a(d d1)
    {
        boolean flag;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        flag = b.offer(d1);
        return flag;
        d1;
        return false;
    }

    d b()
    {
        d d1;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        d1 = (d)b.peek();
        return d1;
        Throwable throwable;
        throwable;
        return null;
    }

    boolean c()
    {
label0:
        {
            boolean flag;
            try
            {
                if (b == null)
                {
                    break label0;
                }
                flag = b.isEmpty();
            }
            catch (Throwable throwable)
            {
                return false;
            }
            return flag;
        }
        return true;
    }

    boolean d()
    {
        try
        {
            if (b != null)
            {
                b.clear();
            }
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }
}
