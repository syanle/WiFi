// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            ByteString, CodedOutputStream

static final class <init>
{

    private final CodedOutputStream a;
    private final byte b[];

    public ByteString a()
    {
        a.checkNoSpaceLeft();
        return new ByteString(b, null);
    }

    public CodedOutputStream b()
    {
        return a;
    }

    private ream(int i)
    {
        b = new byte[i];
        a = CodedOutputStream.newInstance(b);
    }

    b(int i, b b1)
    {
        this(i);
    }
}
