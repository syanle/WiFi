// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            ProtocolMessageEnum, DescriptorProtos, e

public static final class value extends Enum
    implements ProtocolMessageEnum
{

    private static final LITE_RUNTIME $VALUES[];
    public static final LITE_RUNTIME CODE_SIZE;
    public static final int CODE_SIZE_VALUE = 2;
    public static final LITE_RUNTIME LITE_RUNTIME;
    public static final int LITE_RUNTIME_VALUE = 3;
    public static final LITE_RUNTIME SPEED;
    public static final int SPEED_VALUE = 1;
    private static final LITE_RUNTIME VALUES[];
    private static LITE_RUNTIME internalValueMap = new e();
    private final int index;
    private final int value;

    public static final value getDescriptor()
    {
        return (value)().().get(0);
    }

    public static  internalGetValueMap()
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
            return SPEED;

        case 2: // '\002'
            return CODE_SIZE;

        case 3: // '\003'
            return LITE_RUNTIME;
        }
    }

    public static LITE_RUNTIME valueOf(LITE_RUNTIME lite_runtime)
    {
        if (lite_runtime.LITE_RUNTIME() != getDescriptor())
        {
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        } else
        {
            return VALUES[lite_runtime.VALUES()];
        }
    }

    public static VALUES valueOf(String s)
    {
        return (VALUES)Enum.valueOf(com/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode, s);
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
        SPEED = new <init>("SPEED", 0, 0, 1);
        CODE_SIZE = new <init>("CODE_SIZE", 1, 1, 2);
        LITE_RUNTIME = new <init>("LITE_RUNTIME", 2, 2, 3);
        $VALUES = (new .VALUES[] {
            SPEED, CODE_SIZE, LITE_RUNTIME
        });
        VALUES = (new VALUES[] {
            SPEED, CODE_SIZE, LITE_RUNTIME
        });
    }

    private (String s, int i, int j, int k)
    {
        super(s, i);
        index = j;
        value = k;
    }

    // Unreferenced inner class com/google/protobuf/e
    static final class e
        implements Internal.EnumLiteMap
    {

        public DescriptorProtos.FileOptions.OptimizeMode a(int i)
        {
            return DescriptorProtos.FileOptions.OptimizeMode.valueOf(i);
        }

        public volatile Internal.EnumLite findValueByNumber(int i)
        {
            return a(i);
        }

            e()
            {
            }
    }

}
