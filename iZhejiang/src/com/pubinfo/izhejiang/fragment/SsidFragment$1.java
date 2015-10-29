// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.fragment;

import android.net.wifi.WifiManager;
import android.os.Handler;
import android.view.View;

// Referenced classes of package com.pubinfo.izhejiang.fragment:
//            SsidFragment

class this._cls0
    implements android.view.tener
{

    final SsidFragment this$0;

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 5: default 56
    //                   2131361840: 56
    //                   2131361952: 57
    //                   2131361953: 56
    //                   2131361954: 56
    //                   2131361955: 56;
           goto _L1 _L1 _L2 _L1 _L1 _L1
_L1:
        return;
_L2:
        if (wifibtn_click)
        {
            SsidFragment.access$0(SsidFragment.this);
            if (wifibtn)
            {
                wifiManager.setWifiEnabled(false);
                SsidFragment.access$1(SsidFragment.this).sendEmptyMessage(8);
            } else
            {
                wifiManager.setWifiEnabled(true);
                SsidFragment.access$1(SsidFragment.this).sendEmptyMessageDelayed(7, 5000L);
            }
            wifibtn_click = false;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    ()
    {
        this$0 = SsidFragment.this;
        super();
    }
}
