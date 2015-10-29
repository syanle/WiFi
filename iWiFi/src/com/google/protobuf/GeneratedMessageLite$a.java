// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            GeneratedMessageLite, MessageLite

private static final class <init>
    implements rLite
{

    private final d a;
    private final int b;
    private final d c;
    private final boolean d;
    private final boolean e;

    static boolean b(rLite rlite)
    {
        return rlite.d;
    }

    static d c(d d1)
    {
        return d1.c;
    }

    public int a(c c1)
    {
        return b - c1.b;
    }

    public volatile int compareTo(Object obj)
    {
        return a((a)obj);
    }

    public a getEnumType()
    {
        return a;
    }

    public a getLiteJavaType()
    {
        return c.tJavaType();
    }

    public tJavaType getLiteType()
    {
        return c;
    }

    public int getNumber()
    {
        return b;
    }

    public b internalMergeFrom(b b1, MessageLite messagelite)
    {
        return ((ilder)b1).mergeFrom((GeneratedMessageLite)messagelite);
    }

    public boolean isPacked()
    {
        return e;
    }

    public boolean isRepeated()
    {
        return d;
    }

    private ilder(ilder ilder, int i, ilder ilder1, boolean flag, boolean flag1)
    {
        a = ilder;
        b = i;
        c = ilder1;
        d = flag;
        e = flag1;
    }

    e(e e1, int i, e e2, boolean flag, boolean flag1, e e3)
    {
        this(e1, i, e2, flag, flag1);
    }
}
