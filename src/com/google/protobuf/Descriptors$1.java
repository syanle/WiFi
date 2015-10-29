// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            Descriptors

static class eldDescriptor.Type
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[eldDescriptor.JavaType.values().length];
        try
        {
            b[eldDescriptor.JavaType.ENUM.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror19) { }
        try
        {
            b[eldDescriptor.JavaType.MESSAGE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        a = new int[eldDescriptor.Type.values().length];
        try
        {
            a[eldDescriptor.Type.INT32.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            a[eldDescriptor.Type.SINT32.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            a[eldDescriptor.Type.SFIXED32.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            a[eldDescriptor.Type.UINT32.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            a[eldDescriptor.Type.FIXED32.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            a[eldDescriptor.Type.INT64.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            a[eldDescriptor.Type.SINT64.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            a[eldDescriptor.Type.SFIXED64.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            a[eldDescriptor.Type.UINT64.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            a[eldDescriptor.Type.FIXED64.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            a[eldDescriptor.Type.FLOAT.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            a[eldDescriptor.Type.DOUBLE.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            a[eldDescriptor.Type.BOOL.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[eldDescriptor.Type.STRING.ordinal()] = 14;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[eldDescriptor.Type.BYTES.ordinal()] = 15;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[eldDescriptor.Type.ENUM.ordinal()] = 16;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[eldDescriptor.Type.MESSAGE.ordinal()] = 17;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[eldDescriptor.Type.GROUP.ordinal()] = 18;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
