// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d.a;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import net.youmi.android.a.a.g.a.a;
import net.youmi.android.a.a.g.a.f;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.d.g;

// Referenced classes of package net.youmi.android.a.a.g.d.a:
//            a, b, d

class e
{

    private static e d;
    private int a;
    private Context b;
    private boolean c;

    private e(Context context)
    {
        a = 0;
        c = false;
        if (context == null)
        {
            throw new NullPointerException("Context must not be null");
        } else
        {
            b = context;
            return;
        }
    }

    static e a(Context context)
    {
        if (d == null)
        {
            d = new e(context);
        }
        return d;
    }

    private void a(String s, int i)
    {
        switch (i)
        {
        default:
            return;

        case 3: // '\003'
        case 13: // '\r'
            c(s, i);
            return;

        case 4: // '\004'
            b(s, i);
            break;
        }
    }

    private void b(String s, int i)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        String s1 = g.a(s);
        net.youmi.android.a.a.g.a.a.b(b, s);
        f.a().a(s1, i, 1);
        return;
        s;
    }

    private void c(String s, int i)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        net.youmi.android.a.a.g.a.a.a a1;
        net.youmi.android.a.a.g.a.b.a a2;
        try
        {
            a1 = net.youmi.android.a.a.g.a.a.a.a(b);
            s = g.a(s);
            a2 = new net.youmi.android.a.a.g.a.b.a();
            a2.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        i;
        JVM INSTR lookupswitch 2: default 97
    //                   3: 79
    //                   13: 88;
           goto _L3 _L4 _L5
_L3:
        if (a1.b(a2))
        {
            f.a().a(s, i, 1);
            return;
        }
        break; /* Loop/switch isn't completed */
_L4:
        a2.b(1);
        continue; /* Loop/switch isn't completed */
_L5:
        a2.c(1);
        if (true) goto _L3; else goto _L2
_L2:
    }

    void a()
    {
        if (c)
        {
            return;
        }
        c = true;
        if (!net.youmi.android.a.a.g.d.a.a.a(b).c()) goto _L2; else goto _L1
_L1:
        Object obj = net.youmi.android.a.a.g.d.a.b.a(b).b();
        if (obj == null) goto _L2; else goto _L3
_L3:
        Throwable throwable;
        if (((List) (obj)).size() > 0)
        {
            d d1;
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); net.youmi.android.a.a.g.d.a.a.a(b).a(d1))
            {
                d1 = (d)((Iterator) (obj)).next();
            }

        }
          goto _L2
_L5:
        c = false;
        return;
_L2:
        if (net.youmi.android.a.a.g.d.a.a.a(b).c()) goto _L5; else goto _L4
_L4:
        c = true;
        throwable = net.youmi.android.a.a.g.d.a.a.a(b).b();
        if (throwable == null) goto _L2; else goto _L6
_L6:
        long l1 = ((d) (throwable)).g;
        long l = l1;
        if (((d) (throwable)).g <= 0L) goto _L8; else goto _L7
_L7:
        l = l1;
        if (net.youmi.android.a.b.b.e.a(((d) (throwable)).f)) goto _L8; else goto _L9
_L9:
        Object obj1 = net.youmi.android.a.a.g.d.a.b.a(b).a(((d) (throwable)).f);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_332;
        }
        if (!((d) (obj1)).a())
        {
            break MISSING_BLOCK_LABEL_332;
        }
        if (((d) (obj1)).e <= 0L)
        {
            break MISSING_BLOCK_LABEL_411;
        }
        if (((d) (obj1)).e >= ((d) (throwable)).a) goto _L11; else goto _L10
_L10:
        l = ((d) (obj1)).e + ((d) (throwable)).g;
        if (((d) (throwable)).a >= l) goto _L13; else goto _L12
_L12:
        l1 = ((d) (throwable)).a;
_L8:
        Exception exception;
        int i;
        for (l -= l1; l <= 0L; l = 0L)
        {
            break MISSING_BLOCK_LABEL_257;
        }

        try
        {
            Thread.sleep(l);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception) { }
        obj1 = net.youmi.android.a.a.g.d.a.a(b, ((d) (throwable)).b);
        if (!net.youmi.android.a.b.b.e.a(((String) (obj1))))
        {
            break MISSING_BLOCK_LABEL_349;
        }
        i = a;
        a = i + 1;
        if (i >= 10)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        Thread.sleep(5000L);
          goto _L2
        throwable;
          goto _L2
_L13:
        l = 0L;
          goto _L8
_L11:
        l = (((d) (obj1)).e - ((d) (throwable)).a) + ((d) (throwable)).g;
          goto _L8
        l = ((d) (throwable)).g;
          goto _L8
        try
        {
            a = 0;
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
          goto _L5
        net.youmi.android.a.a.g.d.a.a.a(b).a();
        throwable.e = System.currentTimeMillis();
        net.youmi.android.a.a.g.d.a.b.a(b).b(throwable);
        if (net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(((String) (obj1))), "c", -1) == 0)
        {
            a(((d) (throwable)).h, ((d) (throwable)).c);
        }
          goto _L2
    }
}
