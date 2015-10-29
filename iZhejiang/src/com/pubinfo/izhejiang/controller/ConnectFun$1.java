// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.controller;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.pubinfo.izhejiang.controller:
//            ConnectFun

class this._cls0 extends Handler
{

    final ConnectFun this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 1: // '\001'
        default:
            return;

        case 0: // '\0'
            Object obj = getSharedPreferences("ConnectActivity", 0);
            message = ((SharedPreferences) (obj)).getString("ssidclick", "");
            obj = ((SharedPreferences) (obj)).getString("ssidconnect", "");
            if ((new StringBuilder("\"")).append(message).append("\"").toString().equals(obj) || message.equals(obj))
            {
                handler.sendEmptyMessage(2);
                return;
            } else
            {
                connTimeOut();
                return;
            }

        case 2: // '\002'
            connToWifi();
            return;
        }
    }

    ()
    {
        this$0 = ConnectFun.this;
        super();
    }
}
