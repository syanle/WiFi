// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.mob.tools.utils:
//            DeviceHelper, Ln

private class <init>
    implements ServiceConnection
{

    boolean got;
    private final BlockingQueue iBinders;
    final DeviceHelper this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        try
        {
            iBinders.put(ibinder);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ComponentName componentname)
        {
            Ln.w(componentname);
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
    }

    public IBinder takeBinder()
        throws InterruptedException
    {
        if (got)
        {
            throw new IllegalStateException();
        } else
        {
            got = true;
            return (IBinder)iBinders.poll(1500L, TimeUnit.MILLISECONDS);
        }
    }

    private ()
    {
        this$0 = DeviceHelper.this;
        super();
        got = false;
        iBinders = new LinkedBlockingQueue();
    }

    >(> >)
    {
        this();
    }
}
