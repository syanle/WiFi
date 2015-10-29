// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor;


// Referenced classes of package com.umeng.socialize.sensor:
//            UMSensor

public static class <init> extends Enum
{

    public static final BUTTON_SHARE BUTTON_CANCEL;
    public static final BUTTON_SHARE BUTTON_SHARE;
    private static final BUTTON_SHARE ENUM$VALUES[];

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/umeng/socialize/sensor/UMSensor$WhitchButton, s);
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
        BUTTON_CANCEL = new UMSensor.WhitchButton("BUTTON_CANCEL", 0) {

            public String toString()
            {
                return "cancel";
            }

        };
        BUTTON_SHARE = new UMSensor.WhitchButton("BUTTON_SHARE", 1) {

            public String toString()
            {
                return "share";
            }

        };
        ENUM$VALUES = (new ENUM.VALUES[] {
            BUTTON_CANCEL, BUTTON_SHARE
        });
    }

    private _cls2(String s, int i)
    {
        super(s, i);
    }

    _cls2(String s, int i, _cls2 _pcls2)
    {
        this(s, i);
    }
}
