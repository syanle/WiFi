// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor;

import android.hardware.SensorEvent;

// Referenced classes of package com.umeng.socialize.sensor:
//            UMSensor

public static interface eners.SnsPostListener
    extends com.umeng.socialize.controller.listener.Listener
{

    public abstract void onActionComplete(SensorEvent sensorevent);

    public abstract void onButtonClick(eners.SnsPostListener snspostlistener);
}
