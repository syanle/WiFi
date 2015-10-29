// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.exception;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Looper;
import android.os.Process;

// Referenced classes of package com.ta.exception:
//            TAAppException

class this._cls1
    implements android.content.lickListener
{

    final ickListener this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/ta/exception/TAAppException$1

/* anonymous class */
    class TAAppException._cls1 extends Thread
    {

        final TAAppException this$0;

        public void run()
        {
            Looper.prepare();
            (new android.app.AlertDialog.Builder(TAAppException.access$0(TAAppException.this))).setTitle("\u63D0\u793A").setCancelable(false).setMessage("\u7A0B\u5E8F\u5D29\u6E83\u4E86...").setNeutralButton("\u6211\u77E5\u9053\u4E86", new TAAppException._cls1._cls1()).create().show();
            Looper.loop();
        }

            
            {
                this$0 = TAAppException.this;
                super();
            }
    }

}
