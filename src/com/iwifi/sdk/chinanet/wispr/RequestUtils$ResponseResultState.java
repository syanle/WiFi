// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;


// Referenced classes of package com.iwifi.sdk.chinanet.wispr:
//            RequestUtils

public static final class  extends Enum
{

    private static final RSP_GET_LOGOFF_FAILED ENUM$VALUES[];
    public static final RSP_GET_LOGOFF_FAILED RSP_GET_AUTH_FAILED;
    public static final RSP_GET_LOGOFF_FAILED RSP_GET_AUTH_SUCCESS;
    public static final RSP_GET_LOGOFF_FAILED RSP_GET_BRAS_FAILED;
    public static final RSP_GET_LOGOFF_FAILED RSP_GET_BRAS_SUCCESS;
    public static final RSP_GET_LOGOFF_FAILED RSP_GET_LOGOFF_FAILED;
    public static final RSP_GET_LOGOFF_FAILED RSP_GET_LOGOFF_SUCCESS;
    public static final RSP_GET_LOGOFF_FAILED RSP_NONE;
    public static final RSP_GET_LOGOFF_FAILED RSP_POST_AUTH_FAILED;
    public static final RSP_GET_LOGOFF_FAILED RSP_POST_AUTH_SUCCESS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState, s);
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
        RSP_NONE = new <init>("RSP_NONE", 0);
        RSP_GET_BRAS_SUCCESS = new <init>("RSP_GET_BRAS_SUCCESS", 1);
        RSP_GET_BRAS_FAILED = new <init>("RSP_GET_BRAS_FAILED", 2);
        RSP_GET_AUTH_SUCCESS = new <init>("RSP_GET_AUTH_SUCCESS", 3);
        RSP_GET_AUTH_FAILED = new <init>("RSP_GET_AUTH_FAILED", 4);
        RSP_POST_AUTH_SUCCESS = new <init>("RSP_POST_AUTH_SUCCESS", 5);
        RSP_POST_AUTH_FAILED = new <init>("RSP_POST_AUTH_FAILED", 6);
        RSP_GET_LOGOFF_SUCCESS = new <init>("RSP_GET_LOGOFF_SUCCESS", 7);
        RSP_GET_LOGOFF_FAILED = new <init>("RSP_GET_LOGOFF_FAILED", 8);
        ENUM$VALUES = (new ENUM.VALUES[] {
            RSP_NONE, RSP_GET_BRAS_SUCCESS, RSP_GET_BRAS_FAILED, RSP_GET_AUTH_SUCCESS, RSP_GET_AUTH_FAILED, RSP_POST_AUTH_SUCCESS, RSP_POST_AUTH_FAILED, RSP_GET_LOGOFF_SUCCESS, RSP_GET_LOGOFF_FAILED
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
