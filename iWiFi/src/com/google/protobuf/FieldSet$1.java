// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            FieldSet

static class JavaType
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[FieldType.values().length];
        try
        {
            b[FieldType.DOUBLE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror26) { }
        try
        {
            b[FieldType.FLOAT.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror25) { }
        try
        {
            b[FieldType.INT64.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror24) { }
        try
        {
            b[FieldType.UINT64.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror23) { }
        try
        {
            b[FieldType.INT32.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror22) { }
        try
        {
            b[FieldType.FIXED64.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror21) { }
        try
        {
            b[FieldType.FIXED32.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror20) { }
        try
        {
            b[FieldType.BOOL.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror19) { }
        try
        {
            b[FieldType.STRING.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror18) { }
        try
        {
            b[FieldType.BYTES.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror17) { }
        try
        {
            b[FieldType.UINT32.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror16) { }
        try
        {
            b[FieldType.SFIXED32.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror15) { }
        try
        {
            b[FieldType.SFIXED64.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror14) { }
        try
        {
            b[FieldType.SINT32.ordinal()] = 14;
        }
        catch (NoSuchFieldError nosuchfielderror13) { }
        try
        {
            b[FieldType.SINT64.ordinal()] = 15;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        try
        {
            b[FieldType.GROUP.ordinal()] = 16;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            b[FieldType.MESSAGE.ordinal()] = 17;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            b[FieldType.ENUM.ordinal()] = 18;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        a = new int[JavaType.values().length];
        try
        {
            a[JavaType.INT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            a[JavaType.LONG.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            a[JavaType.FLOAT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            a[JavaType.DOUBLE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[JavaType.BOOLEAN.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[JavaType.STRING.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[JavaType.BYTE_STRING.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[JavaType.ENUM.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[JavaType.MESSAGE.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
