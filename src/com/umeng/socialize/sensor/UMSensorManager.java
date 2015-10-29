// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.umeng.socialize.sensor:
//            UMShakeSensor, UMSensor

public class UMSensorManager
{

    private static final int DELAY_MS = 800;
    private static final int REGISTER_MSG = 123;
    private static String TAG = com/umeng/socialize/sensor/UMSensorManager.getName();
    private static boolean isLocked = false;
    private static Handler mRegHandler = new Handler() {

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
            UMSensorManager.mSensorsMap.clear();
            String s = message.getParentActivity().getClass().getName();
            if (!UMSensorManager.mSensorsMap.containsKey(s))
            {
                UMSensorManager.mSensorsMap.put(s, message);
            }
            Log.d(UMSensorManager.TAG, "#### \u6447\u4E00\u6447\u6CE8\u518C\u6210\u529F.");
_L1:
            message;
            JVM INSTR monitorexit ;
            UMSensorManager.isLocked = false;
            return;
            Log.d(UMSensorManager.TAG, "#### \u6447\u4E00\u6447\u6CE8\u518C\u5931\u8D25.");
              goto _L1
            Exception exception;
            exception;
            message;
            JVM INSTR monitorexit ;
            throw exception;
        }

    };
    private static Map mSensorsMap = new HashMap();

    private UMSensorManager()
    {
    }

    public static Collection getSensors()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(mSensorsMap.values());
        return arraylist;
    }

    public static UMSensor getShakeSensor(Activity activity)
    {
        return getShakeSensor(activity, 1800);
    }

    public static UMSensor getShakeSensor(Activity activity, int i)
    {
        if (activity == null || activity.isFinishing())
        {
            Log.d(TAG, "#### getShakeSensor, activity == null ");
        } else
        {
            int j = i;
            if (i <= 0)
            {
                j = 1800;
            }
            if (mSensorsMap.size() > 0)
            {
                Object obj = new ArrayList();
                ((List) (obj)).addAll(mSensorsMap.values());
                if (((List) (obj)).size() > 0)
                {
                    obj = (UMShakeSensor)((List) (obj)).get(0);
                    ((UMShakeSensor) (obj)).unregister();
                    ((UMShakeSensor) (obj)).setSensorListener(null);
                    ((UMShakeSensor) (obj)).setParentActivity(activity);
                    ((UMShakeSensor) (obj)).setSpeedShreshold(j);
                    return ((UMSensor) (obj));
                }
            } else
            if (mSensorsMap.size() == 0)
            {
                return new UMShakeSensor(activity, j);
            } else
            {
                return null;
            }
        }
        return null;
    }

    public static void registerSensor(UMSensor umsensor, UMSensor.OnSensorListener onsensorlistener)
    {
        if (umsensor != null && (umsensor instanceof UMShakeSensor) && !isLocked)
        {
            isLocked = true;
            umsensor.setSensorListener(onsensorlistener);
            onsensorlistener = Message.obtain(mRegHandler);
            onsensorlistener.what = 123;
            onsensorlistener.obj = umsensor;
            mRegHandler.sendMessageDelayed(onsensorlistener, 800L);
        }
    }

    public static void unregisterSensor(Activity activity)
    {
        if (activity == null)
        {
            Log.d(TAG, "#### \u6CE8\u9500\u4F20\u611F\u5668\u5931\u8D25 , activity == null");
        }
        activity = activity.getClass().getName();
        UMSensor umsensor = (UMSensor)mSensorsMap.get(activity);
        if (umsensor != null && mSensorsMap.containsKey(activity) && !isLocked)
        {
            umsensor.unregister();
            mSensorsMap.remove(activity);
            Log.d(TAG, "#### \u6CE8\u9500\u4F20\u611F\u5668.");
        }
    }




}
