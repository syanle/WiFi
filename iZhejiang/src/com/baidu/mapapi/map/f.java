// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.util.SparseArray;
import android.widget.ImageView;
import android.widget.TextView;
import com.baidu.platform.comapi.a.b;
import com.baidu.platform.comapi.map.h;
import com.baidu.platform.comapi.map.z;
import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.baidu.mapapi.map:
//            MapView

class f
    implements h
{

    final MapView a;

    f(MapView mapview)
    {
        a = mapview;
        super();
    }

    public void a()
    {
        float f1 = MapView.a(a).o().a;
        if (com.baidu.mapapi.map.MapView.b(a) != f1)
        {
            int i = ((Integer)MapView.a().get((int)f1)).intValue();
            int j = (int)((double)i / MapView.a(a).o().m);
            MapView.c(a).setPadding(j / 2, 0, j / 2, 0);
            String s;
            if (i >= 1000)
            {
                s = String.format(" %d\u516C\u91CC ", new Object[] {
                    Integer.valueOf(i / 1000)
                });
            } else
            {
                s = String.format(" %d\u7C73 ", new Object[] {
                    Integer.valueOf(i)
                });
            }
            MapView.d(a).setText(s);
            MapView.e(a).setText(s);
            MapView.a(a, f1);
        }
        MapView.f(a);
        a.requestLayout();
    }

    public void a(Bitmap bitmap)
    {
    }

    public void a(b b1)
    {
    }

    public void a(z z1)
    {
    }

    public void a(String s)
    {
    }

    public void a(GL10 gl10, z z1)
    {
    }

    public void b()
    {
    }

    public void b(b b1)
    {
    }

    public void b(z z1)
    {
    }

    public boolean b(String s)
    {
        return false;
    }

    public void c()
    {
    }

    public void c(b b1)
    {
    }

    public void c(z z1)
    {
    }

    public void d()
    {
    }

    public void d(b b1)
    {
    }

    public void e()
    {
    }

    public void e(b b1)
    {
    }
}
