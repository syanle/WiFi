// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.lang.reflect.Method;

// Referenced classes of package com.google.protobuf:
//            GeneratedMessage

private static final class a extends a
{

    private Method h;
    private Method i;

    public Object a(a a1)
    {
        return GeneratedMessage.access$1400(i, super.a(a1), new Object[0]);
    }

    public Object a(GeneratedMessage generatedmessage)
    {
        return GeneratedMessage.access$1400(i, super.a(generatedmessage), new Object[0]);
    }

    public void a(a a1, Object obj)
    {
        super.a(a1, GeneratedMessage.access$1400(h, null, new Object[] {
            obj
        }));
    }

    ( , String s, Class class1, Class class2)
    {
        super(, s, class1, class2);
        h = GeneratedMessage.access$1300(a, "valueOf", new Class[] {
            com/google/protobuf/Descriptors$EnumValueDescriptor
        });
        i = GeneratedMessage.access$1300(a, "getValueDescriptor", new Class[0]);
    }
}
