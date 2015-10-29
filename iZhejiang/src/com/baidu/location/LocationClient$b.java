// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Message;
import java.util.ArrayList;

// Referenced classes of package com.baidu.location:
//            LocationClient

private class <init>
    implements Runnable
{

    final LocationClient a;

    public void run()
    {
label0:
        {
            synchronized (LocationClient._mthfor(a))
            {
                LocationClient._mthint(a, false);
                if (LocationClient._mthchar(a) != null && LocationClient._mthnew(a) != null)
                {
                    break label0;
                }
            }
            return;
        }
        if (LocationClient._mthgoto(a) != null && LocationClient._mthgoto(a).size() >= 1)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        LocationClient._mthbyte(a).obtainMessage(4).sendToTarget();
        obj;
        JVM INSTR monitorexit ;
    }

    private (LocationClient locationclient)
    {
        a = locationclient;
        super();
    }

    a(LocationClient locationclient, a a1)
    {
        this(locationclient);
    }
}
