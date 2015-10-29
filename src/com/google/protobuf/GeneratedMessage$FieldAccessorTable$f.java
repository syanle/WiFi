// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.lang.reflect.Method;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage

private static class g
    implements g
{

    protected final Class a;
    protected final Method b;
    protected final Method c;
    protected final Method d;
    protected final Method e;
    protected final Method f;
    protected final Method g;

    public g a()
    {
        throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
    }

    public Object a(g g1)
    {
        return GeneratedMessage.access$1400(c, g1, new Object[0]);
    }

    public Object a(c c1, int i)
    {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
    }

    public Object a(GeneratedMessage generatedmessage)
    {
        return GeneratedMessage.access$1400(b, generatedmessage, new Object[0]);
    }

    public Object a(GeneratedMessage generatedmessage, int i)
    {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
    }

    public void a(b b1, int i, Object obj)
    {
        throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
    }

    public void a(b b1, Object obj)
    {
        GeneratedMessage.access$1400(d, b1, new Object[] {
            obj
        });
    }

    public void b(d d1, Object obj)
    {
        throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
    }

    public boolean b(d d1)
    {
        return ((Boolean)GeneratedMessage.access$1400(f, d1, new Object[0])).booleanValue();
    }

    public boolean b(GeneratedMessage generatedmessage)
    {
        return ((Boolean)GeneratedMessage.access$1400(e, generatedmessage, new Object[0])).booleanValue();
    }

    public int c(e e1)
    {
        throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
    }

    public int c(GeneratedMessage generatedmessage)
    {
        throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
    }

    public void d(e e1)
    {
        GeneratedMessage.access$1400(g, e1, new Object[0]);
    }

    ( , String s, Class class1, Class class2)
    {
        b = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("get").append(s).toString(), new Class[0]);
        c = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("get").append(s).toString(), new Class[0]);
        a = b.getReturnType();
        d = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("set").append(s).toString(), new Class[] {
            a
        });
        e = GeneratedMessage.access$1300(class1, (new StringBuilder()).append("has").append(s).toString(), new Class[0]);
        f = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("has").append(s).toString(), new Class[0]);
        g = GeneratedMessage.access$1300(class2, (new StringBuilder()).append("clear").append(s).toString(), new Class[0]);
    }
}
