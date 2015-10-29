// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            WireFormat

final class i extends WireFormat.FieldType
{

    i(String s, int j, WireFormat.JavaType javatype, int k)
    {
        super(s, j, javatype, k, null);
    }

    public boolean isPackable()
    {
        return false;
    }
}
