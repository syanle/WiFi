// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.os.Bundle;
import com.baidu.platform.comapi.map.f;
import java.util.List;

// Referenced classes of package com.baidu.mapapi.map:
//            BaiduMap, Overlay

class a
    implements Overlay.a
{

    final BaiduMap a;

    a(BaiduMap baidumap)
    {
        a = baidumap;
        super();
    }

    public void a(Overlay overlay)
    {
        if (BaiduMap.a(a).contains(overlay))
        {
            Bundle bundle = overlay.a();
            BaiduMap.b(a).c(bundle);
            BaiduMap.a(a).remove(overlay);
        }
    }

    public void b(Overlay overlay)
    {
        if (BaiduMap.a(a).contains(overlay))
        {
            Bundle bundle = new Bundle();
            overlay.a(bundle);
            BaiduMap.b(a).b(bundle);
        }
    }
}
