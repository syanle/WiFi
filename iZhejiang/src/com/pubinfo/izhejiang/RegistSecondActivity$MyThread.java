// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;


// Referenced classes of package com.pubinfo.izhejiang:
//            RegistSecondActivity

public class this._cls0 extends Thread
{

    final RegistSecondActivity this$0;

    public void run()
    {
        try
        {
            RegistSecondActivity.access$2(RegistSecondActivity.this);
        }
        catch (Exception exception1) { }
        try
        {
            RegistSecondActivity.access$3(RegistSecondActivity.this);
            if (checkNetWork())
            {
                RegistSecondActivity.access$4(RegistSecondActivity.this, phone, countrycode, "1", getApplicationContext());
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

    public _cls9()
    {
        this$0 = RegistSecondActivity.this;
        super();
    }
}
