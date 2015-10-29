// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.location;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

// Referenced classes of package com.pubinfo.freewifialliance.location:
//            Constants

public class TimeOutHeartTask extends TimerTask
{

    private Context context;
    private Handler handler;
    private boolean isOk;
    private long outTime;
    private int typeId;

    public TimeOutHeartTask(Handler handler1, Context context1, long l, int i)
    {
        isOk = false;
        handler = handler1;
        context = context1;
        outTime = l;
        typeId = i;
    }

    public void run()
    {
        try
        {
            Constants.myLog("TimeOutHeartTask");
            Thread.sleep(outTime);
            if (!isOk)
            {
                Message message = Message.obtain();
                message.what = 995;
                message.arg1 = typeId;
                handler.sendMessage(message);
            }
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void setType(boolean flag)
    {
        isOk = flag;
    }
}
