// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import java.io.IOException;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseFragment

public class this._cls0 extends Thread
{

    final ThinkAndroidBaseFragment this$0;

    public void run()
    {
        try
        {
            ThinkAndroidBaseFragment.executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L);
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
            return;
        }
        catch (TimeoutException timeoutexception)
        {
            timeoutexception.printStackTrace();
        }
    }

    public ()
    {
        this$0 = ThinkAndroidBaseFragment.this;
        super();
    }
}
