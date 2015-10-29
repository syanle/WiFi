// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.strategy;


public interface UMSensorStrategy
{

    public abstract com.umeng.socialize.sensor.UMSensor.OnSensorListener getSensorListener();

    public abstract void setSensorListener(com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener);

    public abstract void shakeComplete();
}
