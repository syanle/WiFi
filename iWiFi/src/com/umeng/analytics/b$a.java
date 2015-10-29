// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics;

import android.content.Context;
import com.umeng.common.Log;

// Referenced classes of package com.umeng.analytics:
//            b

private final class d
    implements Runnable
{

    final b a;
    private final Object b = new Object();
    private Context c;
    private int d;

    public void run()
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        d;
        JVM INSTR tableswitch 0 1: default 78
    //                   0 35
    //                   1 64;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_64;
_L4:
        return;
_L2:
        com.umeng.analytics.b.a(a, c);
          goto _L4
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.b("MobclickAgent", "Exception occurred in invokehander.", exception);
        }
        return;
        com.umeng.analytics.b.b(a, c);
          goto _L4
    }

    (b b1, Context context, int i)
    {
        a = b1;
        super();
        c = context.getApplicationContext();
        d = i;
    }
}
