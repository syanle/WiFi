// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            QueueWorkerThread

class aV extends Handler
{

    final QueueWorkerThread aV;

    public void handleMessage(Message message)
    {
        if (message != null && message.obj != null)
        {
            ((readObject)message.obj).onPostExecute();
        }
    }

    readObject(QueueWorkerThread queueworkerthread)
    {
        aV = queueworkerthread;
        super();
    }
}
