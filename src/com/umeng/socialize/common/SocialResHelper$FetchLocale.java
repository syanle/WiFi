// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;


// Referenced classes of package com.umeng.socialize.common:
//            SocialResHelper

public static final class  extends Enum
{

    public static final FETCH_FROM_NETWORK FETCH_FROM_LOCALE_CACHE;
    public static final FETCH_FROM_NETWORK FETCH_FROM_NETWORK;
    private static final FETCH_FROM_NETWORK a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/umeng/socialize/common/SocialResHelper$FetchLocale, s);
    }

    public static [] values()
    {
         a1[] = a;
        int i = a1.length;
         a2[] = new a[i];
        System.arraycopy(a1, 0, a2, 0, i);
        return a2;
    }

    static 
    {
        FETCH_FROM_LOCALE_CACHE = new <init>("FETCH_FROM_LOCALE_CACHE", 0);
        FETCH_FROM_NETWORK = new <init>("FETCH_FROM_NETWORK", 1);
        a = (new a[] {
            FETCH_FROM_LOCALE_CACHE, FETCH_FROM_NETWORK
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
