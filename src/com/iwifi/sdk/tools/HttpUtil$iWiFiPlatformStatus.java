// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.tools;


// Referenced classes of package com.iwifi.sdk.tools:
//            HttpUtil

private static final class  extends Enum
{

    private static final iWiFi_NETWORK_ERROR ENUM$VALUES[];
    public static final iWiFi_NETWORK_ERROR iWiFi_10;
    public static final iWiFi_NETWORK_ERROR iWiFi_20;
    public static final iWiFi_NETWORK_ERROR iWiFi_NETWORK_CONNECTED;
    public static final iWiFi_NETWORK_ERROR iWiFi_NETWORK_ERROR;
    public static final iWiFi_NETWORK_ERROR iWiFi_NONE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus, s);
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
        iWiFi_NONE = new <init>("iWiFi_NONE", 0);
        iWiFi_10 = new <init>("iWiFi_10", 1);
        iWiFi_20 = new <init>("iWiFi_20", 2);
        iWiFi_NETWORK_CONNECTED = new <init>("iWiFi_NETWORK_CONNECTED", 3);
        iWiFi_NETWORK_ERROR = new <init>("iWiFi_NETWORK_ERROR", 4);
        ENUM$VALUES = (new ENUM.VALUES[] {
            iWiFi_NONE, iWiFi_10, iWiFi_20, iWiFi_NETWORK_CONNECTED, iWiFi_NETWORK_ERROR
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
