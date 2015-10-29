// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Message;
import android.widget.ListView;
import com.cat.adapter.MessageListAdapter;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            PushMessageActivity

class this._cls0
    implements android.os.Activity._cls2
{

    final PushMessageActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 38
    //                   2 121
    //                   3 157
    //                   4 238;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        if (checkNetWork())
        {
            PushMessageActivity.access$1(PushMessageActivity.this);
            PushMessageActivity.access$2(PushMessageActivity.this, authid, countrycode, getApplicationContext());
            return true;
        } else
        {
            PushMessageActivity.access$3(PushMessageActivity.this);
            showMsgToast(getString(0x7f060032));
            hideLoading();
            PushMessageActivity.access$4(true);
            return true;
        }
_L3:
        PushMessageActivity.access$3(PushMessageActivity.this);
        hideLoading();
        showMsgToast(getString(0x7f060031));
        PushMessageActivity.access$4(true);
        return true;
_L4:
        PushMessageActivity.access$3(PushMessageActivity.this);
        hideLoading();
        message = ComData.getInstance().getpError();
        if (message == null || message.size() <= 0) goto _L7; else goto _L6
_L6:
        int i = 0;
_L9:
        if (i < message.size()) goto _L8; else goto _L7
_L7:
        PushMessageActivity.access$4(true);
        return true;
_L8:
        String s = ((PublicError)message.get(i)).getMessage();
        showMsgToast(s);
        i++;
          goto _L9
_L5:
        PushMessageActivity.access$4(true);
        hideLoading();
        message = ComData.getInstance().getPushListData();
        if (message.size() > 0)
        {
            wifiLView.setVisibility(0);
            msgAdapter = new MessageListAdapter(getApplicationContext(), message);
            wifiLView.setAdapter(msgAdapter);
            return true;
        } else
        {
            PushMessageActivity.access$3(PushMessageActivity.this);
            return true;
        }
    }

    ()
    {
        this$0 = PushMessageActivity.this;
        super();
    }
}
