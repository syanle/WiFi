// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.HandlerThread;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log, MMHandlerThread

class at
    implements aitWorkThread
{

    final MMHandlerThread ar;
    final setCallback as;
    final Object at;

    public boolean doInBackground()
    {
        Log.d("MicroMsg.MMHandlerThread", "syncReset doInBackground");
        MMHandlerThread.a(ar).quit();
        if (as != null)
        {
            as.callback();
        }
        MMHandlerThread.b(ar);
        synchronized (at)
        {
            at.notify();
        }
        return true;
    }

    public boolean onPostExecute()
    {
        Log.d("MicroMsg.MMHandlerThread", "syncReset onPostExecute");
        return true;
    }

    setCallback(MMHandlerThread mmhandlerthread, setCallback setcallback, Object obj)
    {
        ar = mmhandlerthread;
        as = setcallback;
        at = obj;
        super();
    }
}
