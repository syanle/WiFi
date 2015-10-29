// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Message;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            LoginActivity

class this._cls0
    implements android.os.
{

    final LoginActivity this$0;

    public boolean handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return true;

        case 1: // '\001'
            if (checkNetWork())
            {
                LoginActivity.access$7(LoginActivity.this);
                return true;
            } else
            {
                showMsgToast(getString(0x7f060032));
                hideLoading();
                LoginActivity.access$5(true);
                return true;
            }

        case 2: // '\002'
            hideLoading();
            showMsgToast(getString(0x7f060031));
            LoginActivity.access$5(true);
            return true;

        case 3: // '\003'
            hideLoading();
            message = ComData.getInstance().getpError();
            break;
        }
        if (message == null || message.size() <= 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < message.size()) goto _L3; else goto _L2
_L2:
        LoginActivity.access$5(true);
        return true;
_L3:
        String s = ((PublicError)message.get(i)).getMessage();
        showMsgToast(s);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    ()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
