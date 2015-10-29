// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.service;

import android.os.Handler;
import android.os.Message;
import com.pubinfo.freewifialliance.view.FloatView;

// Referenced classes of package com.pubinfo.freewifialliance.service:
//            WifiConnService

class this._cls0 extends Handler
{

    final WifiConnService this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 9: default 56
    //                   1 57
    //                   2 71
    //                   3 85
    //                   4 92
    //                   5 135
    //                   6 149
    //                   7 159
    //                   8 197
    //                   9 211;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        return;
_L2:
        WifiConnService.access$1().setImage(logoDrawable);
        return;
_L3:
        WifiConnService.access$1().setImage(logoWuDrawable);
        return;
_L4:
        WifiConnService.access$1().setTextInvisiable();
        return;
_L5:
        if (isHome())
        {
            WifiConnService.access$1().setVisibility(0);
        } else
        {
            WifiConnService.access$1().setVisibility(4);
        }
        handler.sendEmptyMessageDelayed(4, 1000L);
        return;
_L6:
        WifiConnService.access$1().setImage(logoLvDrawable);
        return;
_L7:
        showMsgToast("night search");
        return;
_L8:
        WifiConnService.access$1().setImage(logoDrawable);
        if (isConnTianyiWifi())
        {
            (new Thread(WifiConnService.this)).start();
            return;
        }
          goto _L1
_L9:
        WifiConnService.access$1().setImage(logoLvDrawable);
        return;
_L10:
        WifiConnService.access$1().setImage(logoDrawable);
        return;
    }

    Thread()
    {
        this$0 = WifiConnService.this;
        super();
    }
}
