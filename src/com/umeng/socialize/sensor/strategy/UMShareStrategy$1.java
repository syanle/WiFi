// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.strategy;

import android.hardware.SensorEvent;
import android.util.Log;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;

// Referenced classes of package com.umeng.socialize.sensor.strategy:
//            UMShareStrategy

class 
    implements com.umeng.socialize.sensor.istener
{

    public void onActionComplete(SensorEvent sensorevent)
    {
    }

    public void onButtonClick(com.umeng.socialize.sensor.ton ton)
    {
        if (UMShareStrategy.mSensorListener != null)
        {
            UMShareStrategy.mSensorListener.onButtonClick(ton);
        }
    }

    public void onComplete(SHARE_MEDIA share_media, int i, SocializeEntity socializeentity)
    {
        if (UMShareStrategy.mSensorListener != null)
        {
            Log.d("", "#### \u5206\u4EAB\u7B56\u7565  onComplete");
            UMShareStrategy.mSensorListener.onComplete(share_media, i, socializeentity);
        }
    }

    public void onStart()
    {
        if (UMShareStrategy.mSensorListener != null)
        {
            UMShareStrategy.mSensorListener.onStart();
        }
    }

    ()
    {
    }
}
