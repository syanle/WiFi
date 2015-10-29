// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            DescriptorProtos

final class d
    implements Internal.EnumLiteMap
{

    d()
    {
    }

    public DescriptorProtos.FieldOptions.CType a(int i)
    {
        return DescriptorProtos.FieldOptions.CType.valueOf(i);
    }

    public volatile Internal.EnumLite findValueByNumber(int i)
    {
        return a(i);
    }
}
