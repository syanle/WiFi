// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;


// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordCheckMsgActivity

public class this._cls0 extends Thread
{

    final FindPasswordCheckMsgActivity this$0;

    public void run()
    {
        try
        {
            FindPasswordCheckMsgActivity.access$7(FindPasswordCheckMsgActivity.this);
        }
        catch (Exception exception1) { }
        try
        {
            FindPasswordCheckMsgActivity.access$8(FindPasswordCheckMsgActivity.this);
            if (checkNetWork())
            {
                FindPasswordCheckMsgActivity.access$9(FindPasswordCheckMsgActivity.this, phone, "86", "2", getApplicationContext());
                return;
            }
        }
        catch (Exception exception)
        {
            return;
        }
        showMsgToast(getString(0x7f060032));
        hideLoading();
        return;
    }

    public A()
    {
        this$0 = FindPasswordCheckMsgActivity.this;
        super();
    }
}
