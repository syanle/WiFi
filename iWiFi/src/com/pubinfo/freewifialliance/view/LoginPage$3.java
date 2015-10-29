// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Message;
import android.widget.Button;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            LoginPage

class this._cls0
    implements android.os.back
{

    final LoginPage this$0;

    public boolean handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return true;

        case 179163137: 
            LoginPage.access$13(LoginPage.this, "\u81EA\u52A8\u83B7\u53D6\u9A8C\u8BC1\u7801\u8D85\u65F6\uFF0C\u8BF7\u624B\u52A8\u8F93\u5165", false);
            return true;

        case 1: // '\001'
            LoginPage.access$14(LoginPage.this).setText((new StringBuilder(String.valueOf(LoginPage.access$0()))).toString());
            return true;

        case 2: // '\002'
            LoginPage.access$14(LoginPage.this).setText("\u83B7\u53D6\u9A8C\u8BC1\u7801");
            LoginPage.access$14(LoginPage.this).setClickable(true);
            LoginPage.access$14(LoginPage.this).setBackgroundResource(0x7f020153);
            LoginPage.access$2(60);
            return true;
        }
    }

    ()
    {
        this$0 = LoginPage.this;
        super();
    }
}
