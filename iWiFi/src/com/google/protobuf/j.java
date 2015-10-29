// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            WireFormat

final class j extends WireFormat.FieldType
{

    j(String s, int i, WireFormat.JavaType javatype, int k)
    {
        super(s, i, javatype, k, null);
    }

    public boolean isPackable()
    {
        return false;
    }
}
