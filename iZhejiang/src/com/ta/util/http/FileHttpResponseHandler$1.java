// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import java.util.TimerTask;

// Referenced classes of package com.ta.util.http:
//            FileHttpResponseHandler

class this._cls0 extends TimerTask
{

    final FileHttpResponseHandler this$0;

    public void run()
    {
        do
        {
            if (FileHttpResponseHandler.access$6(FileHttpResponseHandler.this))
            {
                return;
            }
            sendProgressMessage(FileHttpResponseHandler.access$7(FileHttpResponseHandler.this), getDownloadSize(), FileHttpResponseHandler.access$8(FileHttpResponseHandler.this));
            try
            {
                Thread.sleep(100L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        } while (true);
    }

    ()
    {
        this$0 = FileHttpResponseHandler.this;
        super();
    }
}
