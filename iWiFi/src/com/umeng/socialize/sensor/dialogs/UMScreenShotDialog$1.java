// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.dialogs;

import android.util.Log;

// Referenced classes of package com.umeng.socialize.sensor.dialogs:
//            UMScreenShotDialog

class this._cls0
    implements Runnable
{

    final UMScreenShotDialog this$0;

    public void run()
    {
        UMScreenShotDialog umscreenshotdialog = UMScreenShotDialog.this;
        umscreenshotdialog;
        JVM INSTR monitorenter ;
        if (!UMScreenShotDialog.access$0(UMScreenShotDialog.this))
        {
            break MISSING_BLOCK_LABEL_49;
        }
        Log.d(UMScreenShotDialog.access$1(), "#### postDelayed#run is execute.");
        dismiss();
_L1:
        return;
        Object obj;
        obj;
        ((Exception) (obj)).printStackTrace();
          goto _L1
        obj;
        umscreenshotdialog;
        JVM INSTR monitorexit ;
        throw obj;
        Log.d(UMScreenShotDialog.access$1(), "####mDismissRunnable ,The ScreenShotDialog is Destoried");
          goto _L1
    }

    ()
    {
        this$0 = UMScreenShotDialog.this;
        super();
    }
}
