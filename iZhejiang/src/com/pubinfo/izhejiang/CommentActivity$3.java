// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Message;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            CommentActivity

class this._cls0
    implements android.os.Activity._cls3
{

    final CommentActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 38
    //                   2 84
    //                   3 110
    //                   4 178;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        if (checkNetWork())
        {
            CommentActivity.access$1(CommentActivity.this);
        } else
        {
            showMsgToast(getString(0x7f060032));
            hideLoading();
        }
        continue; /* Loop/switch isn't completed */
_L3:
        hideLoading();
        showMsgToast(getString(0x7f060031));
        continue; /* Loop/switch isn't completed */
_L4:
        hideLoading();
        message = ComData.getInstance().getpError();
        if (message != null && message.size() > 0)
        {
            int i = 0;
            while (i < message.size()) 
            {
                String s = ((PublicError)message.get(i)).getMessage();
                showMsgToast(s);
                i++;
            }
        }
        continue; /* Loop/switch isn't completed */
_L5:
        hideLoading();
        showMsgToast(getString(0x7f060035));
        finish();
        if (true) goto _L1; else goto _L6
_L6:
    }

    ()
    {
        this$0 = CommentActivity.this;
        super();
    }
}
