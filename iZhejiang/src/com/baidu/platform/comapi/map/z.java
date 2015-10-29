// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import android.os.Bundle;
import com.baidu.platform.comapi.a.d;

// Referenced classes of package com.baidu.platform.comapi.map:
//            f

public class z
{
    public class a
    {

        public long a;
        public long b;
        public long c;
        public long d;
        public d e;
        public d f;
        public d g;
        public d h;
        final z i;

        public a()
        {
            i = z.this;
            super();
            a = 0L;
            b = 0L;
            c = 0L;
            d = 0L;
            e = new d(0, 0);
            f = new d(0, 0);
            g = new d(0, 0);
            h = new d(0, 0);
        }
    }

    public class b
    {

        public int a;
        public int b;
        public int c;
        public int d;
        final z e;

        public b()
        {
            e = z.this;
            super();
            a = 0;
            b = 0;
            c = 0;
            d = 0;
        }
    }


    private static final String t = com/baidu/platform/comapi/map/z.getSimpleName();
    public float a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public long h;
    public long i;
    public b j;
    public a k;
    public boolean l;
    public double m;
    public double n;
    public int o;
    public String p;
    public float q;
    public boolean r;
    public int s;

    public z()
    {
        a = 12F;
        b = 0;
        c = 0;
        d = 0xc5b9d2;
        e = 0x49a333;
        h = 0L;
        i = 0L;
        f = -1;
        g = -1;
        j = new b();
        k = new a();
        l = false;
    }

    public Bundle a(f f1)
    {
        boolean flag = true;
        if (a < f1.b)
        {
            a = f1.b;
        }
        if (a > f1.a)
        {
            a = f1.a;
        }
        for (; b < 0; b = b + 360) { }
        b = b % 360;
        if (c > 0)
        {
            c = 0;
        }
        if (c < -45)
        {
            c = -45;
        }
        f1 = new Bundle();
        f1.putDouble("level", a);
        f1.putDouble("rotation", b);
        f1.putDouble("overlooking", c);
        f1.putDouble("centerptx", d);
        f1.putDouble("centerpty", e);
        f1.putInt("left", j.a);
        f1.putInt("right", j.b);
        f1.putInt("top", j.c);
        f1.putInt("bottom", j.d);
        if (f >= 0 && g >= 0 && f <= j.b && g <= j.d && j.b > 0 && j.d > 0)
        {
            int i1 = (j.b - j.a) / 2;
            int k1 = (j.d - j.c) / 2;
            int l1 = f;
            int i2 = g;
            h = l1 - i1;
            i = -(i2 - k1);
            f1.putLong("xoffset", h);
            f1.putLong("yoffset", i);
        }
        f1.putInt("lbx", k.e.a);
        f1.putInt("lby", k.e.b);
        f1.putInt("ltx", k.f.a);
        f1.putInt("lty", k.f.b);
        f1.putInt("rtx", k.g.a);
        f1.putInt("rty", k.g.b);
        f1.putInt("rbx", k.h.a);
        f1.putInt("rby", k.h.b);
        int j1;
        if (l)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        f1.putInt("bfpp", j1);
        f1.putInt("animation", 1);
        f1.putInt("animatime", o);
        f1.putString("panoid", p);
        f1.putInt("autolink", 0);
        f1.putFloat("siangle", q);
        if (r)
        {
            j1 = ((flag) ? 1 : 0);
        } else
        {
            j1 = 0;
        }
        f1.putInt("isbirdeye", j1);
        f1.putInt("ssext", s);
        return f1;
    }

    public void a(Bundle bundle)
    {
        boolean flag1 = true;
        a = (float)bundle.getDouble("level");
        b = (int)bundle.getDouble("rotation");
        c = (int)bundle.getDouble("overlooking");
        d = (int)bundle.getDouble("centerptx");
        e = (int)bundle.getDouble("centerpty");
        j.a = bundle.getInt("left");
        j.b = bundle.getInt("right");
        j.c = bundle.getInt("top");
        j.d = bundle.getInt("bottom");
        h = bundle.getLong("xoffset");
        i = bundle.getLong("yoffset");
        if (j.b != 0 && j.d != 0)
        {
            int i1 = (j.b - j.a) / 2;
            int j1 = (j.d - j.c) / 2;
            int k1 = (int)h;
            int l1 = (int)(-i);
            f = i1 + k1;
            g = l1 + j1;
        }
        k.a = bundle.getLong("gleft");
        k.b = bundle.getLong("gright");
        k.c = bundle.getLong("gtop");
        k.d = bundle.getLong("gbottom");
        if (k.a <= 0xfffffffffece407cL)
        {
            k.a = 0xfffffffffece407cL;
        }
        if (k.b >= 0x131bf84L)
        {
            k.b = 0x131bf84L;
        }
        if (k.c >= 0x131bf84L)
        {
            k.c = 0x131bf84L;
        }
        if (k.d <= 0xfffffffffece407cL)
        {
            k.d = 0xfffffffffece407cL;
        }
        k.e.a = bundle.getInt("lbx");
        k.e.b = bundle.getInt("lby");
        k.f.a = bundle.getInt("ltx");
        k.f.b = bundle.getInt("lty");
        k.g.a = bundle.getInt("rtx");
        k.g.b = bundle.getInt("rty");
        k.h.a = bundle.getInt("rbx");
        k.h.b = bundle.getInt("rby");
        boolean flag;
        if (bundle.getInt("bfpp") == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = flag;
        m = bundle.getDouble("adapterzoomunit");
        n = bundle.getDouble("zoomunit");
        p = bundle.getString("panoid");
        q = bundle.getFloat("siangle");
        if (bundle.getInt("isbirdeye") != 0)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        r = flag;
        s = bundle.getInt("ssext");
    }

}
