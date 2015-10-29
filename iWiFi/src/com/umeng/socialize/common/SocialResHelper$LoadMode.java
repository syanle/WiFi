// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.common;


// Referenced classes of package com.umeng.socialize.common:
//            SocialResHelper

public static final class _cls9 extends Enum
{

    public static final LOAD_NETWORK_ELSE_CACHE LOAD_CACHE_ELSE_NETWORK;
    public static final LOAD_NETWORK_ELSE_CACHE LOAD_CACHE_ONLY;
    public static final LOAD_NETWORK_ELSE_CACHE LOAD_NETWORK_ELSE_CACHE;
    private static final LOAD_NETWORK_ELSE_CACHE a[];

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/umeng/socialize/common/SocialResHelper$LoadMode, s);
    }

    public static _cls9[] values()
    {
        _cls9 a_lcls9[] = a;
        int i = a_lcls9.length;
        _cls9 a_lcls9_1[] = new a[i];
        System.arraycopy(a_lcls9, 0, a_lcls9_1, 0, i);
        return a_lcls9_1;
    }

    static 
    {
        LOAD_CACHE_ELSE_NETWORK = new <init>("LOAD_CACHE_ELSE_NETWORK", 0);
        LOAD_CACHE_ONLY = new <init>("LOAD_CACHE_ONLY", 1);
        LOAD_NETWORK_ELSE_CACHE = new <init>("LOAD_NETWORK_ELSE_CACHE", 2);
        a = (new a[] {
            LOAD_CACHE_ELSE_NETWORK, LOAD_CACHE_ONLY, LOAD_NETWORK_ELSE_CACHE
        });
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
