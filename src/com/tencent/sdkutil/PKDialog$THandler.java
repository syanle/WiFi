// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

// Referenced classes of package com.tencent.sdkutil:
//            PKDialog

class mL extends Handler
{

    private tener mL;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 5: default 40
    //                   1 41
    //                   2 56
    //                   3 64
    //                   4 40
    //                   5 99;
           goto _L1 _L2 _L3 _L4 _L1 _L5
_L1:
        return;
_L2:
        tener.access._mth700(mL, (String)message.obj);
        return;
_L3:
        mL.onCancel();
        return;
_L4:
        if (PKDialog.access$400() != null && PKDialog.access$400().get() != null)
        {
            PKDialog.access$800((Context)PKDialog.access$400().get(), (String)message.obj);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (PKDialog.access$400() != null && PKDialog.access$400().get() != null)
        {
            PKDialog.access$900((Context)PKDialog.access$400().get(), (String)message.obj);
            return;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    public tener(tener tener, Looper looper)
    {
        super(looper);
        mL = tener;
    }
}
