// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;

import java.util.List;

// Referenced classes of package com.google.protobuf:
//            DescriptorProtos

public static interface lder
    extends er
{

    public abstract boolean getMessageSetWireFormat();

    public abstract boolean getNoStandardDescriptorAccessor();

    public abstract er getUninterpretedOption(int i);

    public abstract int getUninterpretedOptionCount();

    public abstract List getUninterpretedOptionList();

    public abstract lder getUninterpretedOptionOrBuilder(int i);

    public abstract List getUninterpretedOptionOrBuilderList();

    public abstract boolean hasMessageSetWireFormat();

    public abstract boolean hasNoStandardDescriptorAccessor();
}
