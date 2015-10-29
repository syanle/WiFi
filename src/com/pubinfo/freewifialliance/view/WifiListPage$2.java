// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            WifiListPage

class this._cls0 extends Handler
{

    final WifiListPage this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            message = new ArrayList();
            message.clear();
            message.addAll(WifiListPage.getTianyiWifi());
            message = new fiAdapter(WifiListPage.this, WifiListPage.this, message, ssidString, i);
            WifiListPage.access$4(WifiListPage.this).setAdapter(message);
            return;

        case 1: // '\001'
            message = new ArrayList();
            break;
        }
        message.clear();
        message.addAll(WifiListPage.getTianyiWifi());
        message = new fiAdapter(WifiListPage.this, WifiListPage.this, message, "", 0);
        WifiListPage.access$4(WifiListPage.this).setAdapter(message);
    }

    fiAdapter()
    {
        this$0 = WifiListPage.this;
        super();
    }
}
