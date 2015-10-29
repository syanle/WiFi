// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.content.Intent;
import android.os.Message;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import java.util.List;

// Referenced classes of package com.cat.picture:
//            ShowImageActivity

class this._cls0
    implements android.os.ty._cls3
{

    final ShowImageActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 5: default 40
    //                   1 42
    //                   2 95
    //                   3 129
    //                   4 172
    //                   5 198;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return true;
_L2:
        if (checkNetWork())
        {
            (new Thread(ShowImageActivity.this)).start();
        } else
        {
            ShowImageActivity.access$4(ShowImageActivity.this, getString(0x7f060032));
            ShowImageActivity.access$5(ShowImageActivity.this);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        ShowImageActivity.access$5(ShowImageActivity.this);
        message = new Intent();
        setResult(3, message);
        finish();
        continue; /* Loop/switch isn't completed */
_L4:
        ShowImageActivity.access$5(ShowImageActivity.this);
        message = new Intent();
        message.putExtra("tag", "yes");
        setResult(3, message);
        finish();
        continue; /* Loop/switch isn't completed */
_L5:
        ShowImageActivity.access$5(ShowImageActivity.this);
        ShowImageActivity.access$4(ShowImageActivity.this, getString(0x7f060031));
        if (true) goto _L1; else goto _L6
_L6:
        ShowImageActivity.access$5(ShowImageActivity.this);
        message = ComData.getInstance().getpError();
        if (message != null && message.size() > 0)
        {
            int i = 0;
            while (i < message.size()) 
            {
                String s = ((PublicError)message.get(i)).getMessage();
                ShowImageActivity.access$4(ShowImageActivity.this, s);
                i++;
            }
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    Thread()
    {
        this$0 = ShowImageActivity.this;
        super();
    }
}
