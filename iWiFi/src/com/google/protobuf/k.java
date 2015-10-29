// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            WireFormat

final class k extends WireFormat.FieldType
{

    k(String s, int i, WireFormat.JavaType javatype, int j)
    {
        super(s, i, javatype, j, null);
    }

    public boolean isPackable()
    {
        return false;
    }
}
