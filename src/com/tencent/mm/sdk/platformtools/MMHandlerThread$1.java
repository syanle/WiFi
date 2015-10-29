// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.HandlerThread;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            MMHandlerThread

class aq
    implements aitWorkThread
{

    final aitWorkThread aq;
    final MMHandlerThread ar;

    public boolean doInBackground()
    {
        if (aq != null)
        {
            return aq.doInBackground();
        } else
        {
            MMHandlerThread.a(ar).quit();
            MMHandlerThread.b(ar);
            return true;
        }
    }

    public boolean onPostExecute()
    {
        if (aq != null)
        {
            return aq.onPostExecute();
        } else
        {
            return true;
        }
    }

    aitWorkThread(MMHandlerThread mmhandlerthread, aitWorkThread aitworkthread)
    {
        ar = mmhandlerthread;
        aq = aitworkthread;
        super();
    }
}
