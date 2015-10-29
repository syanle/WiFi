// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Message;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            RegistSecondActivity

class this._cls0
    implements android.os.Activity._cls4
{

    final RegistSecondActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 6: default 44
    //                   1 46
    //                   2 113
    //                   3 138
    //                   4 206
    //                   5 254
    //                   6 397;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return true;
_L2:
        if (checkNetWork())
        {
            RegistSecondActivity.access$4(RegistSecondActivity.this, phone, countrycode, "1", getApplicationContext());
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
        RegistSecondActivity.access$9(RegistSecondActivity.access$0() - 1);
        sendcodeButton.setText((new StringBuilder("(")).append(RegistSecondActivity.access$0()).append(")").append("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801").toString());
        return true;
_L6:
        if (clicknum == 1 || clicknum > 1)
        {
            layout2.setVisibility(0);
            et_code.setFocusable(false);
            sendcodeButton.setText("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801");
            sendcodeButton.setEnabled(false);
            sendcodeButton.setBackgroundResource(0x7f080006);
            RegistSecondActivity.access$9(60);
            return true;
        } else
        {
            sendcodeButton.setText("\u518D\u6B21\u53D1\u9001\u9A8C\u8BC1\u7801");
            sendcodeButton.setEnabled(true);
            sendcodeButton.setBackgroundResource(0x7f080000);
            RegistSecondActivity.access$9(60);
            message = RegistSecondActivity.this;
            message.clicknum = ((RegistSecondActivity) (message)).clicknum + 1;
            return true;
        }
_L7:
        hideLoading();
        showMsgToast(getString(0x7f060046));
        return true;
    }

    ()
    {
        this$0 = RegistSecondActivity.this;
        super();
    }
}
