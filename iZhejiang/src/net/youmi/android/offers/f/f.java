// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.f;

import java.io.File;
import net.youmi.android.a.a.e.g.e;
import net.youmi.android.a.b.k.a.a;
import net.youmi.android.a.b.k.g;

// Referenced classes of package net.youmi.android.offers.f:
//            e, a

class f
    implements a
{

    final long a;
    final File b;
    final net.youmi.android.a.b.g.e.a c;
    final net.youmi.android.offers.f.e d;

    f(net.youmi.android.offers.f.e e1, long l, File file, net.youmi.android.a.b.g.e.a a1)
    {
        d = e1;
        a = l;
        b = file;
        c = a1;
        super();
    }

    public void a()
    {
    }

    public void a(int i)
    {
    }

    public void a(int i, int j)
    {
        g.a(new File(net.youmi.android.offers.f.a.e(net.youmi.android.offers.f.e.a())));
        if (b.exists())
        {
            b.delete();
        }
        File file = new File(net.youmi.android.offers.f.a.f(net.youmi.android.offers.f.e.a()));
        if (file.exists() && file.isDirectory())
        {
            File file1 = new File(net.youmi.android.offers.f.a.e(net.youmi.android.offers.f.e.a()));
            file.renameTo(file1);
            net.youmi.android.offers.f.e.a(d, c.a());
            e.f(file1.getPath());
            net.youmi.android.a.a.i.a.b.g.a().c();
        }
    }

    public void b()
    {
        net.youmi.android.a.a.i.a.b.g.a().c();
    }
}
