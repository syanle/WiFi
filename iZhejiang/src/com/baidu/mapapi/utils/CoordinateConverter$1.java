// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;


// Referenced classes of package com.baidu.mapapi.utils:
//            CoordinateConverter

static class ordType
{

    static final int a[];

    static 
    {
        a = new int[ordType.values().length];
        try
        {
            a[ordType.COMMON.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[ordType.GPS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
