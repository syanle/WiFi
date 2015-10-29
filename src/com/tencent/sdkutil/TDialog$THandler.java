// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import java.lang.ref.WeakReference;

// Referenced classes of package com.tencent.sdkutil:
//            TDialog

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
    //                   4 99
    //                   5 129;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L2:
        tener.access._mth000(mL, (String)message.obj);
        return;
_L3:
        mL.onCancel();
        return;
_L4:
        if (TDialog.access$100() != null && TDialog.access$100().get() != null)
        {
            TDialog.access$200((Context)TDialog.access$100().get(), (String)message.obj);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (TDialog.access$300() != null && TDialog.access$300().get() != null)
        {
            ((View)TDialog.access$300().get()).setVisibility(8);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (TDialog.access$100() != null && TDialog.access$100().get() != null)
        {
            TDialog.access$400((Context)TDialog.access$100().get(), (String)message.obj);
            return;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    public tener(tener tener, Looper looper)
    {
        super(looper);
        mL = tener;
    }
}
