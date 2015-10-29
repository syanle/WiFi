// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.Context;
import android.widget.Toast;

// Referenced classes of package org.androidpn.client:
//            XmppManager

class val.msg
    implements Runnable
{

    final XmppManager this$0;
    private final String val$msg;

    public void run()
    {
        Toast.makeText(XmppManager.access$0(XmppManager.this).getApplicationContext(), val$msg, 1).show();
    }

    ()
    {
        this$0 = final_xmppmanager;
        val$msg = String.this;
        super();
    }
}
