// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.controller.impl;

import com.umeng.socialize.sensor.controller.UMShakeService;

// Referenced classes of package com.umeng.socialize.sensor.controller.impl:
//            UMShakeServiceImpl

public class UMShakeServiceFactory
{

    public UMShakeServiceFactory()
    {
    }

    public static UMShakeService getShakeService(String s)
    {
        return new UMShakeServiceImpl(s);
    }
}
