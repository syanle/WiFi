// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            ProtocolMessageEnum, DescriptorProtos, c

public static final class value extends Enum
    implements ProtocolMessageEnum
{

    private static final TYPE_SINT64 $VALUES[];
    public static final TYPE_SINT64 TYPE_BOOL;
    public static final int TYPE_BOOL_VALUE = 8;
    public static final TYPE_SINT64 TYPE_BYTES;
    public static final int TYPE_BYTES_VALUE = 12;
    public static final TYPE_SINT64 TYPE_DOUBLE;
    public static final int TYPE_DOUBLE_VALUE = 1;
    public static final TYPE_SINT64 TYPE_ENUM;
    public static final int TYPE_ENUM_VALUE = 14;
    public static final TYPE_SINT64 TYPE_FIXED32;
    public static final int TYPE_FIXED32_VALUE = 7;
    public static final TYPE_SINT64 TYPE_FIXED64;
    public static final int TYPE_FIXED64_VALUE = 6;
    public static final TYPE_SINT64 TYPE_FLOAT;
    public static final int TYPE_FLOAT_VALUE = 2;
    public static final TYPE_SINT64 TYPE_GROUP;
    public static final int TYPE_GROUP_VALUE = 10;
    public static final TYPE_SINT64 TYPE_INT32;
    public static final int TYPE_INT32_VALUE = 5;
    public static final TYPE_SINT64 TYPE_INT64;
    public static final int TYPE_INT64_VALUE = 3;
    public static final TYPE_SINT64 TYPE_MESSAGE;
    public static final int TYPE_MESSAGE_VALUE = 11;
    public static final TYPE_SINT64 TYPE_SFIXED32;
    public static final int TYPE_SFIXED32_VALUE = 15;
    public static final TYPE_SINT64 TYPE_SFIXED64;
    public static final int TYPE_SFIXED64_VALUE = 16;
    public static final TYPE_SINT64 TYPE_SINT32;
    public static final int TYPE_SINT32_VALUE = 17;
    public static final TYPE_SINT64 TYPE_SINT64;
    public static final int TYPE_SINT64_VALUE = 18;
    public static final TYPE_SINT64 TYPE_STRING;
    public static final int TYPE_STRING_VALUE = 9;
    public static final TYPE_SINT64 TYPE_UINT32;
    public static final int TYPE_UINT32_VALUE = 13;
    public static final TYPE_SINT64 TYPE_UINT64;
    public static final int TYPE_UINT64_VALUE = 4;
    private static final TYPE_SINT64 VALUES[];
    private static TYPE_SINT64 internalValueMap = new c();
    private final int index;
    private final int value;

    public static final value getDescriptor()
    {
        return (value)scriptor().scriptor().get(0);
    }

    public static scriptor internalGetValueMap()
    {
        return internalValueMap;
    }

    public static internalValueMap valueOf(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
            return TYPE_DOUBLE;

        case 2: // '\002'
            return TYPE_FLOAT;

        case 3: // '\003'
            return TYPE_INT64;

        case 4: // '\004'
            return TYPE_UINT64;

        case 5: // '\005'
            return TYPE_INT32;

        case 6: // '\006'
            return TYPE_FIXED64;

        case 7: // '\007'
            return TYPE_FIXED32;

        case 8: // '\b'
            return TYPE_BOOL;

        case 9: // '\t'
            return TYPE_STRING;

        case 10: // '\n'
            return TYPE_GROUP;

        case 11: // '\013'
            return TYPE_MESSAGE;

        case 12: // '\f'
            return TYPE_BYTES;

        case 13: // '\r'
            return TYPE_UINT32;

        case 14: // '\016'
            return TYPE_ENUM;

        case 15: // '\017'
            return TYPE_SFIXED32;

        case 16: // '\020'
            return TYPE_SFIXED64;

        case 17: // '\021'
            return TYPE_SINT32;

        case 18: // '\022'
            return TYPE_SINT64;
        }
    }

    public static TYPE_SINT64 valueOf(TYPE_SINT64 type_sint64)
    {
        if (type_sint64.TYPE_SINT64() != getDescriptor())
        {
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        } else
        {
            return VALUES[type_sint64.VALUES()];
        }
    }

    public static VALUES valueOf(String s)
    {
        return (VALUES)Enum.valueOf(com/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type, s);
    }

    public static VALUES[] values()
    {
        return (VALUES[])$VALUES.clone();
    }

    public final e_3B_.clone getDescriptorForType()
    {
        return getDescriptor();
    }

    public final int getNumber()
    {
        return value;
    }

    public final value getValueDescriptor()
    {
        return (value)getDescriptor().getDescriptor().get(index);
    }

    static 
    {
        TYPE_DOUBLE = new <init>("TYPE_DOUBLE", 0, 0, 1);
        TYPE_FLOAT = new <init>("TYPE_FLOAT", 1, 1, 2);
        TYPE_INT64 = new <init>("TYPE_INT64", 2, 2, 3);
        TYPE_UINT64 = new <init>("TYPE_UINT64", 3, 3, 4);
        TYPE_INT32 = new <init>("TYPE_INT32", 4, 4, 5);
        TYPE_FIXED64 = new <init>("TYPE_FIXED64", 5, 5, 6);
        TYPE_FIXED32 = new <init>("TYPE_FIXED32", 6, 6, 7);
        TYPE_BOOL = new <init>("TYPE_BOOL", 7, 7, 8);
        TYPE_STRING = new <init>("TYPE_STRING", 8, 8, 9);
        TYPE_GROUP = new <init>("TYPE_GROUP", 9, 9, 10);
        TYPE_MESSAGE = new <init>("TYPE_MESSAGE", 10, 10, 11);
        TYPE_BYTES = new <init>("TYPE_BYTES", 11, 11, 12);
        TYPE_UINT32 = new <init>("TYPE_UINT32", 12, 12, 13);
        TYPE_ENUM = new <init>("TYPE_ENUM", 13, 13, 14);
        TYPE_SFIXED32 = new <init>("TYPE_SFIXED32", 14, 14, 15);
        TYPE_SFIXED64 = new <init>("TYPE_SFIXED64", 15, 15, 16);
        TYPE_SINT32 = new <init>("TYPE_SINT32", 16, 16, 17);
        TYPE_SINT64 = new <init>("TYPE_SINT64", 17, 17, 18);
        $VALUES = (new .VALUES[] {
            TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT64, TYPE_UINT64, TYPE_INT32, TYPE_FIXED64, TYPE_FIXED32, TYPE_BOOL, TYPE_STRING, TYPE_GROUP, 
            TYPE_MESSAGE, TYPE_BYTES, TYPE_UINT32, TYPE_ENUM, TYPE_SFIXED32, TYPE_SFIXED64, TYPE_SINT32, TYPE_SINT64
        });
        VALUES = (new VALUES[] {
            TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT64, TYPE_UINT64, TYPE_INT32, TYPE_FIXED64, TYPE_FIXED32, TYPE_BOOL, TYPE_STRING, TYPE_GROUP, 
            TYPE_MESSAGE, TYPE_BYTES, TYPE_UINT32, TYPE_ENUM, TYPE_SFIXED32, TYPE_SFIXED64, TYPE_SINT32, TYPE_SINT64
        });
    }

    private (String s, int i, int j, int k)
    {
        super(s, i);
        index = j;
        value = k;
    }

    // Unreferenced inner class com/google/protobuf/c
    static final class c
        implements Internal.EnumLiteMap
    {

        public DescriptorProtos.FieldDescriptorProto.Type a(int i)
        {
            return DescriptorProtos.FieldDescriptorProto.Type.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            c()
            {
            }
    }

}
