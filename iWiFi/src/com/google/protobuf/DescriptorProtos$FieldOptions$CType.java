// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            ProtocolMessageEnum, DescriptorProtos, d

public static final class value extends Enum
    implements ProtocolMessageEnum
{

    private static final STRING_PIECE $VALUES[];
    public static final STRING_PIECE CORD;
    public static final int CORD_VALUE = 1;
    public static final STRING_PIECE STRING;
    public static final STRING_PIECE STRING_PIECE;
    public static final int STRING_PIECE_VALUE = 2;
    public static final int STRING_VALUE = 0;
    private static final STRING_PIECE VALUES[];
    private static STRING_PIECE internalValueMap = new d();
    private final int index;
    private final int value;

    public static final value getDescriptor()
    {
        return (value)criptor().criptor().get(0);
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

        case 0: // '\0'
            return STRING;

        case 1: // '\001'
            return CORD;

        case 2: // '\002'
            return STRING_PIECE;
        }
    }

    public static STRING_PIECE valueOf(STRING_PIECE string_piece)
    {
        if (string_piece.ype() != getDescriptor())
        {
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        } else
        {
            return VALUES[string_piece.ndex()];
        }
    }

    public static ndex valueOf(String s)
    {
        return (ndex)Enum.valueOf(com/google/protobuf/DescriptorProtos$FieldOptions$CType, s);
    }

    public static ndex[] values()
    {
        return (ndex[])$VALUES.clone();
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
        return (value)getDescriptor().().get(index);
    }

    static 
    {
        STRING = new <init>("STRING", 0, 0, 0);
        CORD = new <init>("CORD", 1, 1, 1);
        STRING_PIECE = new <init>("STRING_PIECE", 2, 2, 2);
        $VALUES = (new .VALUES[] {
            STRING, CORD, STRING_PIECE
        });
        VALUES = (new VALUES[] {
            STRING, CORD, STRING_PIECE
        });
    }

    private (String s, int i, int j, int k)
    {
        super(s, i);
        index = j;
        value = k;
    }

    // Unreferenced inner class com/google/protobuf/d
    static final class d
        implements Internal.EnumLiteMap
    {

        public DescriptorProtos.FieldOptions.CType a(int i)
        {
            return DescriptorProtos.FieldOptions.CType.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            d()
            {
            }
    }

}
