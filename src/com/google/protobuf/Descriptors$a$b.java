// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            Descriptors, Message

private static final class a
    implements a
{

    private final String a;
    private final String b;
    private final Descriptor c;

    public Descriptor getFile()
    {
        return c;
    }

    public String getFullName()
    {
        return b;
    }

    public String getName()
    {
        return a;
    }

    public Message toProto()
    {
        return c.toProto();
    }

    Descriptor(String s, String s1, Descriptor descriptor)
    {
        c = descriptor;
        b = s1;
        a = s;
    }
}
