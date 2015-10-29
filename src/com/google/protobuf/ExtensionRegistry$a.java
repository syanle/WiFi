// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            ExtensionRegistry

private static final class b
{

    private final or a;
    private final int b;

    public boolean equals(Object obj)
    {
        if (obj instanceof b)
        {
            if (a == ((a) (obj = (a)obj)).a && b == ((b) (obj)).b)
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        return a.hashCode() * 65535 + b;
    }

    or(or or, int i)
    {
        a = or;
        b = i;
    }
}
