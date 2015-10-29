// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor;


// Referenced classes of package com.umeng.socialize.sensor:
//            UMSensor, UMShakeSensor

public static class <init> extends Enum
{

    public static final ACCELEROMETER ACCELEROMETER;
    private static final ACCELEROMETER ENUM$VALUES[];

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/umeng/socialize/sensor/UMSensor$SensorType, s);
    }

    public static <init>[] values()
    {
        <init> a_3C_init>[] = ENUM$VALUES;
        int i = a_3C_init>.length;
        <init> a_3C_init>1[] = new ENUM.VALUES[i];
        System.arraycopy(a_3C_init>, 0, a_3C_init>1, 0, i);
        return a_3C_init>1;
    }

    static 
    {
        ACCELEROMETER = new UMSensor.SensorType("ACCELEROMETER", 0) {

            public String toString()
            {
                return com/umeng/socialize/sensor/UMShakeSensor.getName();
            }

        };
        ENUM$VALUES = (new ENUM.VALUES[] {
            ACCELEROMETER
        });
    }

    private _cls1(String s, int i)
    {
        super(s, i);
    }

    _cls1(String s, int i, _cls1 _pcls1)
    {
        this(s, i);
    }
}
