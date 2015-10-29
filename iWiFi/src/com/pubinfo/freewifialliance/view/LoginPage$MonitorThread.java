// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;


// Referenced classes of package com.pubinfo.freewifialliance.view:
//            LoginPage

class this._cls0 extends Thread
{

    final LoginPage this$0;

    public void run()
    {
        do
        {
            do
            {
                if (!LoginPage.access$3(LoginPage.this))
                {
                    return;
                }
            } while (System.currentTimeMillis() - LoginPage.access$4(LoginPage.this) <= 60000L && !LoginPage.access$5(LoginPage.this));
            LoginPage.access$6(LoginPage.this, false);
        } while (true);
    }

    ()
    {
        this$0 = LoginPage.this;
        super();
    }
}
