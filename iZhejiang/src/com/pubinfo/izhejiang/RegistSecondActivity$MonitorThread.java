// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;


// Referenced classes of package com.pubinfo.izhejiang:
//            RegistSecondActivity

class this._cls0 extends Thread
{

    final RegistSecondActivity this$0;

    public void run()
    {
        do
        {
            do
            {
                if (!RegistSecondActivity.access$5(RegistSecondActivity.this))
                {
                    return;
                }
            } while (System.currentTimeMillis() - RegistSecondActivity.access$6(RegistSecondActivity.this) <= 60000L && !RegistSecondActivity.access$7(RegistSecondActivity.this));
            RegistSecondActivity.access$8(RegistSecondActivity.this, false);
        } while (true);
    }

    ()
    {
        this$0 = RegistSecondActivity.this;
        super();
    }
}
