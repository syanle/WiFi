// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.iwifi.sdk.chinanet.WelcomePage;
import com.iwifi.sdk.protocol.GlobaleAuthenticationRequestCallback;
import com.iwifi.sdk.tools.HttpConf;

// Referenced classes of package com.iwifi.sdk.protocol.impl:
//            DoAuthenticationLogoffOperation

class this._cls0 extends Handler
{

    final DoAuthenticationLogoffOperation this$0;

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        String s = (String)message.obj;
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            DoAuthenticationLogoffOperation.access$0(DoAuthenticationLogoffOperation.this).onAuthenticationReqFail(s);
            return;

        case 0: // '\0'
            if (HttpConf.b_iWiFiSDK_ThirdPartyJar)
            {
                message = new Intent(DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this), com/iwifi/sdk/chinanet/WelcomePage);
                message.setFlags(0x10000000);
                DoAuthenticationLogoffOperation.access$1(DoAuthenticationLogoffOperation.this).startActivity(message);
            }
            DoAuthenticationLogoffOperation.access$0(DoAuthenticationLogoffOperation.this).onAuthenticationReqSucc(s);
            return;

        case 2: // '\002'
            DoAuthenticationLogoffOperation.access$0(DoAuthenticationLogoffOperation.this).onLogoffRequestSucc(s);
            return;

        case 3: // '\003'
            DoAuthenticationLogoffOperation.access$0(DoAuthenticationLogoffOperation.this).onLogoffRequestFail(s);
            return;
        }
    }

    ()
    {
        this$0 = DoAuthenticationLogoffOperation.this;
        super();
    }
}
