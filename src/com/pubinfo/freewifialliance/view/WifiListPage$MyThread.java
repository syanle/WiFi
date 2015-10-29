// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Handler;
import java.io.IOException;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            WifiListPage

public class this._cls0 extends Thread
{

    final WifiListPage this$0;

    public void run()
    {
        if (WifiListPage.executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L) == 0)
        {
            handler.sendEmptyMessage(5);
            return;
        }
        try
        {
            handler.sendEmptyMessage(6);
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            handler.sendEmptyMessage(6);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
            handler.sendEmptyMessage(6);
            return;
        }
        catch (TimeoutException timeoutexception)
        {
            timeoutexception.printStackTrace();
        }
        handler.sendEmptyMessage(6);
        return;
    }

    public ()
    {
        this$0 = WifiListPage.this;
        super();
    }
}
