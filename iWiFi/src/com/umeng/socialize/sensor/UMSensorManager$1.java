// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.sensor:
//            UMSensorManager, UMShakeSensor

class  extends Handler
{

    public void handleMessage(Message message)
    {
label0:
        {
            if (message.what == 123)
            {
                message = (UMShakeSensor)message.obj;
                if (message != null)
                {
                    break label0;
                }
            }
            return;
        }
        message;
        JVM INSTR monitorenter ;
        if (!message.register())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        UMSensorManager.access$0().clear();
        String s = message.getParentActivity().getClass().getName();
        if (!UMSensorManager.access$0().containsKey(s))
        {
            UMSensorManager.access$0().put(s, message);
        }
        Log.d(UMSensorManager.access$1(), "#### \u6447\u4E00\u6447\u6CE8\u518C\u6210\u529F.");
_L1:
        message;
        JVM INSTR monitorexit ;
        UMSensorManager.access$2(false);
        return;
        Log.d(UMSensorManager.access$1(), "#### \u6447\u4E00\u6447\u6CE8\u518C\u5931\u8D25.");
          goto _L1
        Exception exception;
        exception;
        message;
        JVM INSTR monitorexit ;
        throw exception;
    }

    ()
    {
    }
}
