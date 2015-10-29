// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage

private static class j
    implements j
{

    protected final Class a;
    protected final Method b;
    protected final Method c;
    protected final Method d;
    protected final Method e;
    protected final Method f;
    protected final Method g;
    protected final Method h;
    protected final Method i;
    protected final Method j;

    public j a()
    {
        throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
    }

    public Object a(j j1)
    {
        return GeneratedMessage.access$1400(c, j1, new Object[0]);
    }

    public Object a(c c1, int k)
    {
        return GeneratedMessage.access$1400(e, c1, new Object[] {
            Integer.valueOf(k)
        });
    }

    public Object a(GeneratedMessage generatedmessage)
    {
        return GeneratedMessage.access$1400(b, generatedmessage, new Object[0]);
    }

    public Object a(GeneratedMessage generatedmessage, int k)
    {
        return GeneratedMessage.access$1400(d, generatedmessage, new Object[] {
            Integer.valueOf(k)
        });
    }

    public void a(d d1, int k, Object obj)
    {
        GeneratedMessage.access$1400(f, d1, new Object[] {
            Integer.valueOf(k), obj
        });
    }

    public void a(f f1, Object obj)
    {
        d(f1);
        for (obj = ((List)obj).iterator(); ((Iterator) (obj)).hasNext(); b(f1, ((Iterator) (obj)).next())) { }
    }

    public void b(b b1, Object obj)
    {
        GeneratedMessage.access$1400(g, b1, new Object[] {
            obj
        });
    }

    public boolean b(g g1)
    {
        throw new UnsupportedOperationException("hasField() called on a singular field.");
    }

    public boolean b(GeneratedMessage generatedmessage)
    {
        throw new UnsupportedOperationException("hasField() called on a singular field.");
    }

    public int c(g g1)
    {
        return ((Integer)GeneratedMessage.access$1400(i, g1, new Object[0])).intValue();
    }

    public int c(GeneratedMessage generatedmessage)
    {
        return ((Integer)GeneratedMessage.access$1400(h, generatedmessage, new Object[0])).intValue();
    }

    public void d(h h1)
    {
        GeneratedMessage.access$1400(j, h1, new Object[0]);
    }

    ( , String s, Class class1, Class class2)
    {
        b = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).append("List").toString(), new Class[0]);
        c = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).append("List").toString(), new Class[0]);
        d = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).toString(), new Class[] {
            Integer.TYPE
        });
        e = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).toString(), new Class[] {
            Integer.TYPE
        });
        a = d.getReturnType();
        f = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("set").append(s).toString(), new Class[] {
            Integer.TYPE, a
        });
        g = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("add").append(s).toString(), new Class[] {
            a
        });
        h = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).append("Count").toString(), new Class[0]);
        i = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).append("Count").toString(), new Class[0]);
        j = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("clear").append(s).toString(), new Class[0]);
    }
}
