// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            BDLocationListener, z, BDLocation

public class 
    implements BDLocationListener
{

    final z a;

    public void a(BDLocation bdlocation)
    {
    }

    public void onReceiveLocation(BDLocation bdlocation)
    {
        z._mthif(a, bdlocation);
    }

    public cation(z z1)
    {
        a = z1;
        super();
    }
}
