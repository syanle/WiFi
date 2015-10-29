// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            LocationClientOption

public static final class  extends Enum
{

    public static final Device_Sensors Battery_Saving;
    public static final Device_Sensors Device_Sensors;
    public static final Device_Sensors Hight_Accuracy;
    private static final Device_Sensors a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/baidu/location/LocationClientOption$LocationMode, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        Hight_Accuracy = new <init>("Hight_Accuracy", 0);
        Battery_Saving = new <init>("Battery_Saving", 1);
        Device_Sensors = new <init>("Device_Sensors", 2);
        a = (new a[] {
            Hight_Accuracy, Battery_Saving, Device_Sensors
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
