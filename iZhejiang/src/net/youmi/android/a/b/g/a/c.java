// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.a;

import android.content.Context;
import java.io.File;
import net.youmi.android.a.b.i.k;

// Referenced classes of package net.youmi.android.a.b.g.a:
//            a

public class c
    implements Runnable
{

    private int a;
    private int b;
    private File c;
    private File d;
    private boolean e;
    private int f;
    private a g;
    private int h;
    private int i;
    private Context j;

    public c(Context context, String s, long l, File file, File file1)
    {
        this(context, s, l, file, file1, -1, -1);
    }

    public c(Context context, String s, long l, File file, File file1, int i1, 
            int j1)
    {
        a = 8;
        b = 10;
        e = false;
        f = 0;
        h = 0;
        i = 0;
        j = context.getApplicationContext();
        c = file1;
        d = file;
        g = new a(j, s, d, l);
        if (i1 > 0)
        {
            a = i1;
        }
        if (j1 > 0)
        {
            b = j1;
        }
        e = true;
        f = 0;
    }

    private void h()
    {
        g.a();
        JVM INSTR tableswitch -4 0: default 87
    //                   -4 87
    //                   -3 76
    //                   -2 65
    //                   -1 65
    //                   0 40;
           goto _L1 _L1 _L2 _L3 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L4:
        if (d.renameTo(c))
        {
            e = false;
            f = 1;
            return;
        }
        break; /* Loop/switch isn't completed */
_L3:
        try
        {
            e = false;
            f = 3;
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
_L2:
        e = false;
        f = 2;
        return;
    }

    public boolean a()
    {
        return e;
    }

    public boolean b()
    {
        return f == 1;
    }

    public boolean c()
    {
        return f == 2;
    }

    public boolean d()
    {
        return f == 3;
    }

    public long e()
    {
        return g.d();
    }

    public long f()
    {
        return g.b();
    }

    public int g()
    {
        return g.c();
    }

    public void run()
    {
_L2:
        Throwable throwable;
        boolean flag;
        try
        {
            flag = e;
        }
        catch (Throwable throwable1)
        {
            return;
        }
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        if (k.a(j))
        {
            break MISSING_BLOCK_LABEL_35;
        }
        i = i + 1;
        try
        {
            Thread.sleep(10000L);
        }
        catch (Throwable throwable2) { }
        if (!k.a(j))
        {
            if (i < b)
            {
                continue; /* Loop/switch isn't completed */
            }
            e = false;
            f = 3;
            break; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_68;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        throwable;
        h = h + 1;
        h();
        if (h >= a)
        {
            e = false;
            f = 3;
            return;
        }
          goto _L2
    }
}
