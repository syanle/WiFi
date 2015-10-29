// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;


// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordCheckMsgActivity

class this._cls0 extends Thread
{

    final FindPasswordCheckMsgActivity this$0;

    public void run()
    {
        do
        {
            do
            {
                if (!FindPasswordCheckMsgActivity.access$3(FindPasswordCheckMsgActivity.this))
                {
                    return;
                }
            } while (System.currentTimeMillis() - FindPasswordCheckMsgActivity.access$4(FindPasswordCheckMsgActivity.this) <= 0x1d4c0L && !FindPasswordCheckMsgActivity.access$5(FindPasswordCheckMsgActivity.this));
            FindPasswordCheckMsgActivity.access$6(FindPasswordCheckMsgActivity.this, false);
        } while (true);
    }

    ()
    {
        this$0 = FindPasswordCheckMsgActivity.this;
        super();
    }
}
