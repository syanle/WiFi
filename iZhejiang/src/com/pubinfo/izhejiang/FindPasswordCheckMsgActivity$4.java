// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Message;
import android.widget.Button;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            FindPasswordCheckMsgActivity

class this._cls0
    implements android.os.Activity._cls4
{

    final FindPasswordCheckMsgActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 6: default 44
    //                   1 46
    //                   2 113
    //                   3 138
    //                   4 206
    //                   5 246
    //                   6 288;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return true;
_L2:
        if (checkNetWork())
        {
            FindPasswordCheckMsgActivity.access$9(FindPasswordCheckMsgActivity.this, phone, countrycode, "2", getApplicationContext());
            return true;
        } else
        {
            showMsgToast(getString(0x7f060032));
            hideLoading();
            return true;
        }
_L3:
        hideLoading();
        showMsgToast(getString(0x7f060031));
        return true;
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
          goto _L1
_L5:
        sendcodeButton.setText((new StringBuilder("(")).append(FindPasswordCheckMsgActivity.access$0()).append(")").append("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801").toString());
        return true;
_L6:
        sendcodeButton.setText("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801");
        sendcodeButton.setEnabled(true);
        sendcodeButton.setBackgroundResource(0x7f080000);
        FindPasswordCheckMsgActivity.access$2(120);
        return true;
_L7:
        hideLoading();
        showMsgToast(getString(0x7f060045));
        return true;
    }

    ()
    {
        this$0 = FindPasswordCheckMsgActivity.this;
        super();
    }
}
