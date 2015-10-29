// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage

private static final class a extends a
{

    private final Method k;
    private final Method l;

    public Object a(a a1)
    {
        ArrayList arraylist = new ArrayList();
        Object obj;
        for (a1 = ((List)super.a(a1)).iterator(); a1.hasNext(); arraylist.add(GeneratedMessage.access$1400(l, obj, new Object[0])))
        {
            obj = a1.next();
        }

        return Collections.unmodifiableList(arraylist);
    }

    public Object a(l l1, int i)
    {
        return GeneratedMessage.access$1400(l, super.a(l1, i), new Object[0]);
    }

    public Object a(GeneratedMessage generatedmessage)
    {
        ArrayList arraylist = new ArrayList();
        Object obj;
        for (generatedmessage = ((List)super.a(generatedmessage)).iterator(); generatedmessage.hasNext(); arraylist.add(GeneratedMessage.access$1400(l, obj, new Object[0])))
        {
            obj = generatedmessage.next();
        }

        return Collections.unmodifiableList(arraylist);
    }

    public Object a(GeneratedMessage generatedmessage, int i)
    {
        return GeneratedMessage.access$1400(l, super.a(generatedmessage, i), new Object[0]);
    }

    public void a(a a1, int i, Object obj)
    {
        super.a(a1, i, GeneratedMessage.access$1400(k, null, new Object[] {
            obj
        }));
    }

    public void b(k k1, Object obj)
    {
        super.b(k1, GeneratedMessage.access$1400(k, null, new Object[] {
            obj
        }));
    }

    ( , String s, Class class1, Class class2)
    {
        super(, s, class1, class2);
        k = GeneratedMessage.access$1300(a, "valueOf", new Class[] {
            com/google/protobuf/Descriptors$EnumValueDescriptor
        });
        l = GeneratedMessage.access$1300(a, "getValueDescriptor", new Class[0]);
    }
}
