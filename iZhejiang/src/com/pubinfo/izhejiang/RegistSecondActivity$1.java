// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Handler;

// Referenced classes of package com.pubinfo.izhejiang:
//            RegistSecondActivity

class this._cls0 extends Thread
{

    final RegistSecondActivity this$0;

    public void run()
    {
        do
        {
            if (RegistSecondActivity.access$0() <= 0 || Thread.currentThread().isInterrupted())
            {
                RegistSecondActivity.access$1(RegistSecondActivity.this).sendEmptyMessage(5);
                return;
            }
            try
            {
                Thread.sleep(1000L);
                RegistSecondActivity.access$1(RegistSecondActivity.this).sendEmptyMessage(4);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        } while (true);
    }

    ()
    {
        this$0 = RegistSecondActivity.this;
        super();
    }
}
