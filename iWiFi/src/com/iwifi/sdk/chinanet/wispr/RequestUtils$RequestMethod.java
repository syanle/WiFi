// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;


// Referenced classes of package com.iwifi.sdk.chinanet.wispr:
//            RequestUtils

public static final class  extends Enum
{

    public static final PUT DELETE;
    private static final PUT ENUM$VALUES[];
    public static final PUT GET;
    public static final PUT POST;
    public static final PUT PUT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod, s);
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
        GET = new <init>("GET", 0);
        POST = new <init>("POST", 1);
        DELETE = new <init>("DELETE", 2);
        PUT = new <init>("PUT", 3);
        ENUM$VALUES = (new ENUM.VALUES[] {
            GET, POST, DELETE, PUT
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
