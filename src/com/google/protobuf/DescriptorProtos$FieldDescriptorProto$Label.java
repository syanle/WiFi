// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            ProtocolMessageEnum, DescriptorProtos, b

public static final class value extends Enum
    implements ProtocolMessageEnum
{

    private static final LABEL_REPEATED $VALUES[];
    public static final LABEL_REPEATED LABEL_OPTIONAL;
    public static final int LABEL_OPTIONAL_VALUE = 1;
    public static final LABEL_REPEATED LABEL_REPEATED;
    public static final int LABEL_REPEATED_VALUE = 3;
    public static final LABEL_REPEATED LABEL_REQUIRED;
    public static final int LABEL_REQUIRED_VALUE = 2;
    private static final LABEL_REPEATED VALUES[];
    private static LABEL_REPEATED internalValueMap = new b();
    private final int index;
    private final int value;

    public static final value getDescriptor()
    {
        return (value)criptor().criptor().get(1);
    }

    public static criptor internalGetValueMap()
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
            return LABEL_OPTIONAL;

        case 2: // '\002'
            return LABEL_REQUIRED;

        case 3: // '\003'
            return LABEL_REPEATED;
        }
    }

    public static LABEL_REPEATED valueOf(LABEL_REPEATED label_repeated)
    {
        if (label_repeated.LABEL_REPEATED() != getDescriptor())
        {
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        } else
        {
            return VALUES[label_repeated.VALUES()];
        }
    }

    public static VALUES valueOf(String s)
    {
        return (VALUES)Enum.valueOf(com/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label, s);
    }

    public static VALUES[] values()
    {
        return (VALUES[])$VALUES.clone();
    }

    public final l_3B_.clone getDescriptorForType()
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
        LABEL_OPTIONAL = new <init>("LABEL_OPTIONAL", 0, 0, 1);
        LABEL_REQUIRED = new <init>("LABEL_REQUIRED", 1, 1, 2);
        LABEL_REPEATED = new <init>("LABEL_REPEATED", 2, 2, 3);
        $VALUES = (new .VALUES[] {
            LABEL_OPTIONAL, LABEL_REQUIRED, LABEL_REPEATED
        });
        VALUES = (new VALUES[] {
            LABEL_OPTIONAL, LABEL_REQUIRED, LABEL_REPEATED
        });
    }

    private (String s, int i, int j, int k)
    {
        super(s, i);
        index = j;
        value = k;
    }

    // Unreferenced inner class com/google/protobuf/b
    static final class b
        implements Internal.EnumLiteMap
    {

        public DescriptorProtos.FieldDescriptorProto.Label a(int i)
        {
            return DescriptorProtos.FieldDescriptorProto.Label.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            b()
            {
            }
    }

}
