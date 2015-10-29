// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.view.View;
import com.baidu.platform.comapi.map.f;
import com.baidu.platform.comapi.map.z;

// Referenced classes of package com.baidu.mapapi.map:
//            MapView

class h
    implements android.view.View.OnClickListener
{

    final MapView a;

    h(MapView mapview)
    {
        a = mapview;
        super();
    }

    public void onClick(View view)
    {
        view = MapView.a(a).o();
        view.a = ((z) (view)).a + 1.0F;
        MapView.a(a).a(view, 300);
    }
}
