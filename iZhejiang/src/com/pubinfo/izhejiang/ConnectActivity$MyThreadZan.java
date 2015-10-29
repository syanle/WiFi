// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Looper;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

public class this._cls0 extends Thread
{

    final ConnectActivity this$0;

    public void run()
    {
        try
        {
            Looper.prepare();
            ConnectActivity.access$3(ConnectActivity.this, wifimac, username, "1", "1", getApplicationContext());
        }
        catch (Exception exception) { }
        Looper.loop();
    }

    public ()
    {
        this$0 = ConnectActivity.this;
        super();
    }
}
