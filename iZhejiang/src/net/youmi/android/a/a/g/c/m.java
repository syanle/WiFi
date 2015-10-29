// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.a.a.b.d;
import net.youmi.android.a.a.e.g.a;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.b.c.f;
import net.youmi.android.a.b.k.g;
import net.youmi.android.a.b.k.j;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            a, h, l, d, 
//            k

class m
    implements Runnable
{

    private final net.youmi.android.a.a.g.c.a a;
    private final net.youmi.android.a.b.g.e.a b;

    public m(net.youmi.android.a.a.g.c.a a1, net.youmi.android.a.b.g.e.a a2)
    {
        a = a1;
        b = a2;
    }

    private String a(File file)
    {
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        if (!file.exists() || !file.getAbsolutePath().contains(a.b().getFilesDir().getAbsolutePath()))
        {
            break MISSING_BLOCK_LABEL_49;
        }
        g.a(file, "664");
        file = file.getAbsolutePath();
        return file;
        file;
        return null;
    }

    private void a()
    {
        net.youmi.android.a.a.g.c.h.a(a.b());
    }

    private void a(String s, a a1, net.youmi.android.a.b.g.e.a a2)
    {
        if (a1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj;
        net.youmi.android.a.a.a.b.a a3;
        net.youmi.android.a.a.a.a.g g1;
        b b1;
        try
        {
            obj = a1.f();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (obj == null) goto _L1; else goto _L3
_L3:
        g1 = ((net.youmi.android.a.a.a.a.a) (obj)).g();
        if (g1 == null) goto _L1; else goto _L4
_L4:
        obj = g1.c();
        if (obj == null) goto _L1; else goto _L5
_L5:
        b1 = a1.g();
        a3 = new net.youmi.android.a.a.a.b.a(((String) (obj)), net.youmi.android.a.a.g.c.l.b());
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        if (b1.e())
        {
            a3.a(b1);
        }
        a3.b(a1.e());
        a3.c(a1.b());
        a3.b(System.currentTimeMillis());
        a3.a(a1.h());
        a3.a(a1.a());
        a3.b(g1.b());
        try
        {
            a3.e(a1.c());
        }
        // Misplaced declaration of an exception variable
        catch (a a1) { }
        if (s != null)
        {
            try
            {
                a3.d(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        try
        {
            int i = net.youmi.android.a.a.g.c.d.f(a2);
            int i1 = a.j(a2);
            s = new k();
            s.a(i);
            s.b(i1);
            a3.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        d.a(a.b()).a(a.b(), a3);
        f.a(a.b(), net.youmi.android.a.b.d.g.a((new StringBuilder()).append("ydic").append(((String) (obj))).toString()), "1", 0x5265c00L);
        return;
    }

    private void b(File file)
    {
        try
        {
            j.e(a.b(), file.getPath());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return;
        }
    }

    public void run()
    {
        String s;
        a a1;
        try
        {
            s = a(b.g());
            a1 = a.f_(b);
        }
        catch (Throwable throwable)
        {
            return;
        }
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        a(s, a1, b);
        a();
        b(b.g());
        return;
    }
}
