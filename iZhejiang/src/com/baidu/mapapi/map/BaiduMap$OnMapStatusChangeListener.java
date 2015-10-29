// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;


// Referenced classes of package com.baidu.mapapi.map:
//            BaiduMap, MapStatus

public static interface 
{

    public abstract void onMapStatusChange(MapStatus mapstatus);

    public abstract void onMapStatusChangeFinish(MapStatus mapstatus);

    public abstract void onMapStatusChangeStart(MapStatus mapstatus);
}
