// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.netstate;


// Referenced classes of package com.ta.util.netstate:
//            TANetWorkUtil

public static final class  extends Enum
{

    public static final noneNet CMNET;
    public static final noneNet CMWAP;
    private static final noneNet ENUM$VALUES[];
    public static final noneNet noneNet;
    public static final noneNet wifi;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/ta/util/netstate/TANetWorkUtil$netType, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        wifi = new <init>("wifi", 0);
        CMNET = new <init>("CMNET", 1);
        CMWAP = new <init>("CMWAP", 2);
        noneNet = new <init>("noneNet", 3);
        ENUM$VALUES = (new ENUM.VALUES[] {
            wifi, CMNET, CMWAP, noneNet
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
