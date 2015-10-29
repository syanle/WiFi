// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.platform.comapi.map.l;
import java.util.concurrent.locks.Lock;

// Referenced classes of package com.baidu.mapapi.map:
//            BaiduMap, HeatMap, j

class c
    implements l
{

    final BaiduMap a;

    c(BaiduMap baidumap)
    {
        a = baidumap;
        super();
    }

    public Bundle a(int i, int k, int i1)
    {
        BaiduMap.q(a).lock();
        Object obj;
        if (BaiduMap.r(a) == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        obj = BaiduMap.r(a).a(i, k, i1);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        obj = ((j) (obj)).a();
        BaiduMap.q(a).unlock();
        return ((Bundle) (obj));
        BaiduMap.q(a).unlock();
        return null;
        Exception exception;
        exception;
        BaiduMap.q(a).unlock();
        throw exception;
    }
}
