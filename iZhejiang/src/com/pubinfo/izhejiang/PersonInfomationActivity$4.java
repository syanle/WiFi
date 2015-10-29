// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Message;
import android.widget.RelativeLayout;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.tools.APPConf;
import java.io.File;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            PersonInfomationActivity

class this._cls0
    implements android.os.Activity._cls4
{

    final PersonInfomationActivity this$0;

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 5: default 40
    //                   1 42
    //                   2 78
    //                   3 104
    //                   4 172
    //                   5 189;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return true;
_L2:
        if (!checkNetWork())
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
        chosePhoto();
        continue; /* Loop/switch isn't completed */
_L6:
        hideLoading();
        try
        {
            message = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString());
            File file = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString());
            file.delete();
            message.renameTo(file);
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            message.printStackTrace();
        }
        message = new android.graphics.>();
        message.pleSize = 3;
        message = new BitmapDrawable(null, BitmapFactory.decodeFile((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString(), message));
        relativelayout1.setBackgroundDrawable(null);
        relativelayout1.setBackgroundDrawable(message);
        if (true) goto _L1; else goto _L7
_L7:
    }

    ()
    {
        this$0 = PersonInfomationActivity.this;
        super();
    }
}
