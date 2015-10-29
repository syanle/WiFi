// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Handler;

// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordCheckMsgActivity

class this._cls0 extends Thread
{

    final FindPasswordCheckMsgActivity this$0;

    public void run()
    {
        do
        {
            if (FindPasswordCheckMsgActivity.access$0() <= 0 || Thread.currentThread().isInterrupted())
            {
                FindPasswordCheckMsgActivity.access$1(FindPasswordCheckMsgActivity.this).sendEmptyMessage(5);
                return;
            }
            FindPasswordCheckMsgActivity.access$1(FindPasswordCheckMsgActivity.this).sendEmptyMessage(4);
            try
            {
                Thread.sleep(1000L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            FindPasswordCheckMsgActivity.access$2(FindPasswordCheckMsgActivity.access$0() - 1);
        } while (true);
    }

    ()
    {
        this$0 = FindPasswordCheckMsgActivity.this;
        super();
    }
}
