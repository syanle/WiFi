// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.protobuf:
//            f

private class <init>
    implements Iterator
{

    final f a;
    private int b;
    private boolean c;
    private Iterator d;

    private Iterator b()
    {
        if (d == null)
        {
            d = f.c(a).entrySet().iterator();
        }
        return d;
    }

    public java.util.Entry a()
    {
        c = true;
        int i = b + 1;
        b = i;
        if (i < f.b(a).size())
        {
            return (java.util.Entry)f.b(a).get(b);
        } else
        {
            return (java.util.Entry)b().next();
        }
    }

    public boolean hasNext()
    {
        return b + 1 < f.b(a).size() || b().hasNext();
    }

    public volatile Object next()
    {
        return a();
    }

    public void remove()
    {
        if (!c)
        {
            throw new IllegalStateException("remove() was called before next()");
        }
        c = false;
        f.a(a);
        if (b < f.b(a).size())
        {
            f f1 = a;
            int i = b;
            b = i - 1;
            f.a(f1, i);
            return;
        } else
        {
            b().remove();
            return;
        }
    }

    private ception(f f1)
    {
        a = f1;
        super();
        b = -1;
    }

    b(f f1, b b1)
    {
        this(f1);
    }
}
