// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.f;

import java.util.HashSet;
import java.util.Iterator;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.a.a.e.f:
//            b

public class a
    implements net.youmi.android.a.a.e.d.a
{

    private static a a;
    private HashSet b;

    public a()
    {
    }

    public static a a()
    {
        if (a == null)
        {
            a = new a();
        }
        return a;
    }

    private HashSet b()
    {
        this;
        JVM INSTR monitorenter ;
        HashSet hashset;
        if (b == null)
        {
            b = new HashSet();
        }
        hashset = b;
        this;
        JVM INSTR monitorexit ;
        return hashset;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, String s1)
    {
        Iterator iterator = b().iterator();
_L2:
        boolean flag = iterator.hasNext();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        net.youmi.android.a.a.e.d.a a1 = (net.youmi.android.a.a.e.d.a)iterator.next();
        if (a1 == null) goto _L2; else goto _L1
_L1:
label0:
        {
            if (!m.b())
            {
                break label0;
            }
            a1.a(s, s1);
        }
          goto _L2
        try
        {
            m.a().a(new b(this, a1, s, s1));
        }
        catch (Throwable throwable) { }
          goto _L2
        s;
    }

    public void a(net.youmi.android.a.a.e.d.a a1)
    {
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        HashSet hashset;
        try
        {
            hashset = b();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.d.a a1)
        {
            return;
        }
        if (hashset == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        hashset.add(a1);
    }

    public void b(net.youmi.android.a.a.e.d.a a1)
    {
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        HashSet hashset;
        try
        {
            hashset = b();
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.d.a a1)
        {
            return;
        }
        if (hashset == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        hashset.remove(a1);
    }
}
