// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Message;
import android.widget.ListView;
import com.cat.data.BottomData;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            AroundMoreActivity

class this._cls0
    implements android.os.Activity._cls4
{

    final AroundMoreActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 38
    //                   1 148
    //                   2 223
    //                   3 249;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        showLoading();
        if (checkNetWork())
        {
            bd = ComData.getInstance().getBottomData();
            if (bd != null && bd.size() > 0)
            {
                AroundMoreActivity.access$0(AroundMoreActivity.this, ((BottomData)bd.get(0)).getName());
            }
        } else
        {
            showMsgToast(getString(0x7f060032));
            hideLoading();
        }
        continue; /* Loop/switch isn't completed */
_L3:
        hideLoading();
        message = ComData.getInstance().getMapCustom();
        if (message.size() > 0)
        {
            message = new reAdapter(AroundMoreActivity.this, getApplicationContext(), message);
            message.notifyDataSetChanged();
            listView.setAdapter(message);
        } else
        {
            listView.setAdapter(null);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        hideLoading();
        showMsgToast(getString(0x7f060031));
        if (true) goto _L1; else goto _L5
_L5:
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
        if (true) goto _L1; else goto _L6
_L6:
    }

    reAdapter()
    {
        this$0 = AroundMoreActivity.this;
        super();
    }
}
