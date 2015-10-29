// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Handler;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            LoginPage

class this._cls0 extends Thread
{

    final LoginPage this$0;

    public void run()
    {
        do
        {
            if (LoginPage.access$0() <= 0 || Thread.currentThread().isInterrupted())
            {
                LoginPage.access$1(LoginPage.this).sendEmptyMessage(2);
                return;
            }
            LoginPage.access$1(LoginPage.this).sendEmptyMessage(1);
            try
            {
                Thread.sleep(1000L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            LoginPage.access$2(LoginPage.access$0() - 1);
        } while (true);
    }

    ()
    {
        this$0 = LoginPage.this;
        super();
    }
}
